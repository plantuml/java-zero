package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtArrayRead;
import spoon.reflect.code.CtExpression;

public class ZArrayRead implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtArrayReadImpl.html
	private final CtArrayRead<?> ins;

	public ZArrayRead(CtArrayRead<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final CtExpression<Integer> indexExpression = ins.getIndexExpression();
		final CtExpression<?> target = ins.getTarget();
		final StringBuilder sb = new StringBuilder();
		sb.append(HaxeUtils.convertExpression(ctx, target));
		sb.append("[");
		sb.append(HaxeUtils.convertExpression(ctx, indexExpression));
		sb.append("]");
		return sb.toString();
	}

}
