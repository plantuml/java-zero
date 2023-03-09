package javazero;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

import spoon.reflect.code.CtBlock;
import spoon.reflect.code.CtStatement;
import spoon.reflect.declaration.CtClass;
import spoon.reflect.declaration.CtConstructor;
import spoon.reflect.declaration.CtMethod;
import spoon.reflect.reference.CtTypeParameterReference;
import spoon.reflect.reference.CtTypeReference;

public abstract class AbstractTranspile implements TranspilableFile {

	protected final ZeroContext ctx = new ZeroContext();

	protected final void addImports(List<String> result, Set<CtTypeReference<?>> usedTypes) {
		result.add("import zava.lang.*;");
		result.add("import haxe.Exception;");
		result.add("using hx.strings.Strings;");
		result.add("using zava.lang.JZStringUtils;");

		// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/support/reflect/reference/CtTypeReferenceImpl.html
		for (CtTypeReference<?> typeRef : usedTypes) {
			if (typeRef instanceof CtTypeParameterReference) {
				System.err.println("Warning for typeRef=" + typeRef);
				continue;

			}
			if (typeRef.toString().startsWith("?")) {
				System.err.println("Warning for typeRef=" + typeRef);
				continue;
			}

			final String imported = HaxeUtils.typeQualifiedName(typeRef);
			if (imported.equals("zava.io.PrintStream"))
				continue;
			result.add("import " + imported + ";");
		}

	}

	private void exportBody(List<String> result, CtBlock body) {
		if (body == null)
			result.add("        throw new haxe.exceptions.NotImplementedException();");
		else
			for (CtStatement stat : body.getStatements()) {
				// System.err.println("stat=" + stat);
				result.add(HaxeUtils.exportStatement(ctx, stat));
			}

	}

	protected void addMethods(List<String> result, Set<CtMethod<?>> methods) {
		final List<CtMethod<?>> sorted = new ArrayList<>(methods);
		Collections.sort(sorted, new SourceLineComparator<CtMethod>());
		for (CtMethod<?> field : sorted)
			addMethod(result, field);
	}

	protected void addMethod(List<String> result, CtMethod<?> method) {
		// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/support/reflect/declaration/CtMethodImpl.html

		final String methodInternalName = HaxeUtils.getDeclaration(method);
		result.add("");
		result.add("    // " + method.getSignature() + "[" + method.getPosition().getLine() + "]");

		if (method.isAbstract()) {
			result.add("    abstract public function " + methodInternalName + ";");
		} else {
			if (method.isStatic())
				result.add("    public static function " + methodInternalName + " {");
			else if (isOverride(method))
				result.add("    override public function " + methodInternalName + " {");
			else
				result.add("    public function " + methodInternalName + " {");
			exportBody(result, method.getBody());
			result.add("    }");
		}
		result.add("");

	}

	private boolean isOverride(CtMethod<?> method) {
		// List<CtAnnotation<? extends Annotation>> annotations =
		// method.getAnnotations();
		Collection<CtMethod<?>> topDefinitions = method.getTopDefinitions();
		if (topDefinitions.size() == 0)
			return false;
		if (method.getSignature().equals("toString()"))
			return false;
		for (CtMethod<?> parent : topDefinitions) {
			if (parent.isAbstract() == false)
				return true;
		}
		return false;
		// return method.getAnnotations().toString().contains("java.lang.Override");
	}

	protected void addConstructor(List<String> result, CtClass<?> type) {

		final Set<? extends CtConstructor<?>> constructors = type.getConstructors();
		if (constructors.size() == 0)
			return;

		if (constructors.size() > 1)
			throw new NotTranspilable("Too many constructor for " + type.getQualifiedName());

		final CtConstructor<?> c = constructors.iterator().next();
		// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/reflect/declaration/CtConstructor.html
		result.add("");
		result.add("    // " + c.getSignature());
		result.add("    public function new(" + HaxeUtils.parameters(c.getParameters()) + ") {");
		final CtTypeReference<?> parent = type.getSuperclass();
		boolean removeFirstIfSuper = parent == null;
		for (CtStatement stat : c.getBody().getStatements()) {
			final String tmp = HaxeUtils.exportStatement(ctx, stat);
			if (removeFirstIfSuper && tmp.trim().startsWith("super(")) {
				removeFirstIfSuper = false;
			} else
				result.add(tmp);
		}
		result.add("    }");
		result.add("");

	}

}
