package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtConditional;
import spoon.reflect.code.CtExpression;

public class ZConditional implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtConditionalImpl.html
	private final CtConditional<?> ins;

	public ZConditional(CtConditional<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final CtExpression<Boolean> cond = ins.getCondition();
		final CtExpression<?> thenExt = ins.getThenExpression();
		final CtExpression<?> elseExp = ins.getElseExpression();
		final StringBuilder sb = new StringBuilder();
		sb.append(" ( ");
		sb.append(HaxeUtils.convertExpression(ctx, cond));
		sb.append(" ? ");
		sb.append(HaxeUtils.convertExpression(ctx, thenExt));
		sb.append(" : ");
		sb.append(HaxeUtils.convertExpression(ctx, elseExp));
		sb.append(" ) ");
		return sb.toString();
	}

}
