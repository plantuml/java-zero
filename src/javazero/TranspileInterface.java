package javazero;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

import spoon.reflect.declaration.CtInterface;
import spoon.reflect.declaration.CtMethod;
import spoon.reflect.declaration.CtPackage;

public class TranspileInterface extends AbstractTranspile implements TranspilableFile {

	// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/support/reflect/declaration/CtInterfaceImpl.html
	private final CtInterface<?> type;
	private final CtPackage pck;

	public TranspileInterface(CtInterface<?> type) {
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
		result.add(getInterfaceDefinition() + " {");

		result.add("");
		result.add("");
		addMethods(result, type.getMethods());
//
		result.add("}");
		return result;
	}

	private String getInterfaceDefinition() {
		final StringBuilder sb = new StringBuilder();
		sb.append("interface " + type.getSimpleName());
//		final CtTypeReference<?> parent = type.getSuperclass();
//		if (parent != null)
//			sb.append(" extends " + parent.getQualifiedName());
		return sb.toString();
	}

	@Override
	protected void addMethod(List<String> result, CtMethod<?> method) {
		result.add("");
		result.add("    // " + method.getSignature() + "[" + method.getPosition().getLine() + "]");
		result.add("    public function " + HaxeUtils.getDeclaration(method) + ";");
		result.add("");

	}

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
