package javazero;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

import spoon.reflect.code.CtExpression;
import spoon.reflect.declaration.CtClass;
import spoon.reflect.declaration.CtPackage;
import spoon.reflect.declaration.CtType;
import spoon.reflect.reference.CtFieldReference;
import spoon.reflect.reference.CtTypeReference;

public class TranspileClass extends AbstractTranspile implements TranspilableFile {

	// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/support/reflect/declaration/CtClassImpl.html
	private final CtClass<?> type;
	private final CtPackage pck;

	public TranspileClass(CtClass<?> type) {
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

		final List<String> localClass = new ArrayList<>();
		localClass.add(getClassDefinition(type) + " {");

		addFields(localClass, type.getDeclaredFields());

		result.add("");
		result.add("");
		addNestedTypes(result, type.getNestedTypes());

		localClass.add("");
		localClass.add("");
		addConstructor(localClass, type);

		localClass.add("");
		localClass.add("");
		addMethods(localClass, type.getMethods());

		localClass.add("}");

		result.addAll(ctx.getAnonymousClasses());
		result.add("");
		result.addAll(localClass);

		return result;
	}

	private void addNestedType(List<String> result, CtType<?> nested) {
		result.add("");
		result.add("// Nested type " + nested.getQualifiedName());
		result.add("");
		result.add(getClassDefinition(nested) + " {");

		result.add("");
		result.add("");

		addFields(result, nested.getDeclaredFields());

		result.add("");
		result.add("");
		addConstructor(result, (CtClass<?>) nested);

		addMethods(result, nested.getMethods());
		result.add("}");

		result.add("");
		result.add("");
	}

	private void addNestedTypes(List<String> result, Set<CtType<?>> nestedTypes) {
		for (CtType<?> nestedType : nestedTypes) {
			System.err.println("NESTED=" + nestedType.getQualifiedName());
			addNestedType(result, nestedType);
		}
	}

	private String getClassDefinition(CtType<?> type) {
		final StringBuilder sb = new StringBuilder();
		if (type.isAbstract())
			sb.append("abstract ");
		sb.append("class " + type.getSimpleName());
		final CtTypeReference<?> parent = type.getSuperclass();
		if (parent != null)
			sb.append(" extends " + parent.getSimpleName());

		final Set<CtTypeReference<?>> interfaces = type.getSuperInterfaces();
		if (interfaces.size() > 0) {
			sb.append(" implements ");
			sb.append(interfaces.iterator().next().getSimpleName());
		}

		return sb.toString();
	}

	private void addFields(List<String> result, Collection<CtFieldReference<?>> declaredFields) {
		for (CtFieldReference<?> field : declaredFields)
			addField(result, field);
	}

	private void addField(List<String> result, CtFieldReference<?> field) {
		final StringBuilder sb = new StringBuilder();
		if (field.isStatic())
			sb.append("    public static var ");
		else
			sb.append("    public var ");
		sb.append(field.getSimpleName());
		sb.append(": ");
		sb.append(HaxeUtils.typeShortName(field.getType()));

		final CtExpression<?> assignement = field.getFieldDeclaration().getAssignment();
		if (assignement != null) {
			sb.append(" = ");
			sb.append(HaxeUtils.convertExpression(ctx, assignement));
		}

		sb.append(";");
		result.add(sb.toString());
	}

	public Path getPath(Path root) throws IOException {
		final String tmp = type.getQualifiedName().replace('.', File.separatorChar);
		final Path result = root.resolve(tmp + ".hx");
		Files.createDirectories(result.getParent());
		return result;
	}

}
