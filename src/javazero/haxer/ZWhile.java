package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtStatement;
import spoon.reflect.code.CtWhile;

public class ZWhile implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtWhileImpl.html
	private final CtWhile ins;

	public ZWhile(CtWhile ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final CtStatement body = ins.getBody();
		final CtExpression<Boolean> condition = ins.getLoopingExpression();
		final StringBuilder sb = new StringBuilder();
		sb.append("while (");
		sb.append(HaxeUtils.convertExpression(ctx, condition));
		sb.append(") {\n");
		sb.append(HaxeUtils.exportStatement(ctx, body));
		sb.append("}\n"); // end of while
		return sb.toString();
	}

}
