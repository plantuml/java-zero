package javazero.haxer;

import java.util.List;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtExpression;
import spoon.reflect.reference.CtExecutableReference;

public class ZExecutableReference implements Haxer {

	private final CtExecutableReference<?> ins;
	private final List<CtExpression<?>> insArgs;

	// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/support/reflect/reference/CtExecutableReferenceImpl.html
	public ZExecutableReference(CtExecutableReference<?> ins, List<CtExpression<?>> insArgs) {
		this.ins = ins;
		this.insArgs = insArgs;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final StringBuilder sb = new StringBuilder();
		// final Method actualMethod = ins.getActualMethod();

		final String methodName = HaxeUtils.methodName2(ins);
		sb.append(methodName);

		final boolean isString = HaxeUtils.isString(ins.getDeclaringType());
		if (isString && methodName.equals("length")) {
			// Nothing
		} else
			HaxeUtils.appendArguments(ctx, sb, insArgs);

		return sb.toString();
	}

}
