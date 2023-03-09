package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtFieldRead;
import spoon.reflect.declaration.CtElement;
import spoon.reflect.reference.CtFieldReference;
import spoon.reflect.reference.CtTypeReference;

public class ZFieldRead implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtFieldReadImpl.html
	private final CtFieldRead<?> ins;

	public ZFieldRead(CtFieldRead<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		// System.err.println("ins=" + ins);
		final CtElement parent = ins.getParent();
		final CtFieldReference<?> variable = ins.getVariable();
		final CtTypeReference<?> type = variable.getType();
		final CtTypeReference<?> superClass = type.getSuperclass();

		if (variable.isStatic()) {
			return HaxeUtils.toStringWithJavaToZava(variable);
		}

		// return variable.getSimpleName();
		return ins.toString();
	}

}
