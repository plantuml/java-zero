package javazero;

import java.io.IOException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import spoon.reflect.declaration.CtClass;
import spoon.reflect.reference.CtTypeReference;

public class TranspileAnonymousClass extends AbstractTranspile implements TranspilableFile {

	// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/support/reflect/declaration/CtClassImpl.html
	private final CtClass<?> type;

	public TranspileAnonymousClass(CtClass<?> type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return type.getQualifiedName();
	}

	public List<String> toHaxe() {
		final List<String> result = new ArrayList<>();
		result.add("");
		result.add("// " + type.getQualifiedName());
		result.add(getClassDefinition(type) + " {");
		result.add("");
		result.add("");
		addConstructor(result, type);

		result.add("");
		result.add("");
		addMethods(result, type.getMethods());

		result.add("}");

		return result;
	}

	private String getClassDefinition(CtClass<?> type) {
		final StringBuilder sb = new StringBuilder();
		if (type.isAbstract())
			sb.append("abstract ");
		sb.append("class " + HaxeUtils.getAnonymousClassName(type));
		final CtTypeReference<?> parent = type.getSuperclass();
		if (parent != null)
			sb.append(" extends " + parent.getSimpleName());

		final Set<CtTypeReference<?>> interfaces = type.getSuperInterfaces();
		if (interfaces.size() > 1)
			throw new NotTranspilable("Too many interface");

		if (interfaces.size() > 0) {
			sb.append(" implements ");
			final CtTypeReference<?> int1 = interfaces.iterator().next();

			sb.append(int1.getSimpleName());
			final List<CtTypeReference<?>> arguments = int1.getActualTypeArguments();
			if (arguments.size() > 1)
				throw new NotTranspilable("Too many arguments");
			if (arguments.size() > 0) {
				sb.append("<");
				for (CtTypeReference<?> tmp : arguments) {
					sb.append(tmp.getSimpleName());
				}
				sb.append(">");
			}
		}

		return sb.toString();
	}

	public Path getPath(Path root) throws IOException {
		throw new UnsupportedOperationException();
	}

}
