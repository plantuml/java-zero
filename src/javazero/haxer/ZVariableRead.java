package javazero.haxer;

import javazero.NotTranspilable;
import javazero.ZeroContext;
import spoon.reflect.code.CtVariableRead;
import spoon.reflect.reference.CtFieldReference;
import spoon.reflect.reference.CtTypeReference;
import spoon.reflect.reference.CtVariableReference;

public class ZVariableRead implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtVariableRead.html
	private final CtVariableRead<?> ins;

	public ZVariableRead(CtVariableRead<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final CtVariableReference<?> variable = ins.getVariable();
		final CtTypeReference<?> type = variable.getType();
		final CtTypeReference<?> superClass = type.getSuperclass();
		if (variable instanceof CtFieldReference<?>) {
			throw new NotTranspilable("error");
//			final CtFieldReferenceImpl<?> local = (CtFieldReferenceImpl<?>) variable;
//			if (local.isStatic()) {
//				String result = local.toString();
//				if (result.startsWith("java.lang."))
//					result = result.replaceFirst("^java", "zava");
//					return result;
//			}
		}

		return variable.getSimpleName();
		// return variable.toString();
	}

}
