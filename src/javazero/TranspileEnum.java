package javazero;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import spoon.reflect.declaration.CtEnum;
import spoon.reflect.declaration.CtEnumValue;
import spoon.reflect.declaration.CtPackage;
import spoon.reflect.reference.CtTypeReference;

public class TranspileEnum extends AbstractTranspile implements TranspilableFile {

	// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/reflect/declaration/CtEnum.html
	private final CtEnum<?> type;
	private final CtPackage pck;

	public TranspileEnum(CtEnum<?> type) {
		this.type = type;
		this.pck = type.getPackage();
	}

	@Override
	public String toString() {
		return type.getQualifiedName();
	}

	public List<String> toHaxe() {
		final List<String> result = new ArrayList<>();
		result.add("// THIS FILE HAS BEEN GENERATED.");
		result.add("");
		result.add("package " + pck.getQualifiedName() + ";");
		result.add("");
		addImports(result, type.getUsedTypes(false));
		result.add("");
		result.add(getEnumDefinition() + " {");

		final List<CtEnumValue<?>> enumValues = type.getEnumValues();
		for (CtEnumValue<?> enumValue : enumValues) {
			final String name = enumValue.getSimpleName();
			result.add("public static final " + name + " = new " + type.getSimpleName() + "(\"" + name + "\");");
		}
//
//		addFields(result, type.getDeclaredFields());
//
//		result.add("");
//		result.add("");
//		addConstructor(result, type.getConstructors());

		result.add("");
		result.add("");
		addMethods(result, type.getMethods());

		result.add("}");
		return result;
	}

//	private void addImports(List<String> result, Set<CtTypeReference<?>> usedTypes) {
//		for (CtTypeReference<?> typeRef : usedTypes) {
//			String imported = typeRef.getQualifiedName();
//			if (imported.equals("java.io.PrintStream"))
//				continue;
//			if (imported.startsWith("java."))
//				imported = imported.replaceFirst("^java", "zava");
//			result.add("import " + imported + ";");
//		}
//
//	}

	private String getEnumDefinition() {
		final StringBuilder sb = new StringBuilder();
		sb.append("class " + type.getSimpleName());
		sb.append(" extends JZEnum");
		final Set<CtTypeReference<?>> interfaces = type.getSuperInterfaces();
		if (interfaces.size() > 0) {
			sb.append(" implements ");
			sb.append(interfaces.iterator().next().getSimpleName());
		}

		return sb.toString();
	}

//	private void addConstructor(List<String> result, Set<? extends CtConstructor<?>> constructors) {
//		if (constructors.size() != 1)
//			return;
//
//		final CtConstructor<?> c = constructors.iterator().next();
//		// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/reflect/declaration/CtConstructor.html
//		result.add("");
//		result.add("    // " + c.getSignature());
//		result.add("    public function new(" + HaxeUtils.parameters(c.getParameters()) + ") {");
//		final CtTypeReference<?> parent = type.getSuperclass();
//		boolean removeFirstIfSuper = parent == null;
//		for (CtStatement stat : c.getBody().getStatements()) {
//			final String tmp = HaxeUtils.exportStatement(stat);
//			if (removeFirstIfSuper && tmp.trim().startsWith("super(")) {
//				removeFirstIfSuper = false;
//			} else
//				result.add(tmp);
//		}
//		result.add("    }");
//		result.add("");
//
//	}
//
//	private void exportBody(List<String> result, CtBlock body) {
//		if (body == null)
//			result.add("        throw new haxe.exceptions.NotImplementedException();");
//		else
//			for (CtStatement stat : body.getStatements())
//				result.add(HaxeUtils.exportStatement(stat));
//
//	}
//
//	private void addMethods(List<String> result, Set<CtMethod<?>> methods) {
//		for (CtMethod<?> field : methods)
//			addMethod(result, field);
//	}
//
//	private void addMethod(List<String> result, CtMethod<?> method) {
//		result.add("");
//		result.add("    // " + method.getSignature());
//		if (method.isAbstract()) {
//			result.add("    abstract public function " + HaxeUtils.getDeclaration(method) + ";");
//		} else {
//			if (method.isStatic())
//				result.add("    public static function " + HaxeUtils.getDeclaration(method) + " {");
//			else
//				result.add("    public function " + HaxeUtils.getDeclaration(method) + " {");
//			exportBody(result, method.getBody());
//			result.add("    }");
//		}
//		result.add("");
//
//	}
//
//	private void addFields(List<String> result, Collection<CtFieldReference<?>> declaredFields) {
//		for (CtFieldReference<?> field : declaredFields)
//			addField(result, field);
//	}
//
//	private void addField(List<String> result, CtFieldReference<?> field) {
//		final StringBuilder sb = new StringBuilder();
//		sb.append("    var ");
//		sb.append(field);
//		sb.append(": ");
//		sb.append(HaxeUtils.convertType(field.getType()));
//
//		final CtExpression<?> assignement = field.getFieldDeclaration().getAssignment();
//		if (assignement != null) {
//			sb.append(" = ");
//			sb.append(HaxeUtils.convertExpression(assignement));
//		}
//
//		sb.append(";");
//		result.add(sb.toString());
//	}

	public Path getPath(Path root) throws IOException {
		final String tmp = type.getQualifiedName().replace('.', File.separatorChar);
		final Path result = root.resolve(tmp + ".hx");
		Files.createDirectories(result.getParent());
		return result;
	}

}
