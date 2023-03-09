package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtIf;
import spoon.reflect.code.CtStatement;

public class ZIf implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtIf.html
	private final CtIf ins;

	public ZIf(CtIf ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final StringBuilder sb = new StringBuilder();
		final CtExpression<Boolean> condition = ins.getCondition();
		sb.append("if (");
		sb.append(HaxeUtils.convertExpression(ctx, condition));
		sb.append(") ");
		final CtStatement statThen = ins.getThenStatement();
		sb.append(HaxeUtils.exportStatement(ctx, statThen));
		final CtStatement statElse = ins.getElseStatement();
		if (statElse != null) {
			sb.append("else ");
			sb.append(HaxeUtils.exportStatement(ctx, statElse));

		}

		return sb.toString();

	}

}
