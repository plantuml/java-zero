package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtReturn;

public class ZReturn implements Haxer {

	private final CtReturn<?> ins;

	public ZReturn(CtReturn<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtReturn.html
		final CtExpression<?> result = ins.getReturnedExpression();
		return "return " + HaxeUtils.convertExpression(ctx, result);
	}

}
