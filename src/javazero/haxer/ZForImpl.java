package javazero.haxer;

import java.util.List;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtStatement;
import spoon.support.reflect.code.CtForImpl;

public class ZForImpl implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtForImpl.html
	private final CtForImpl ins;

	public ZForImpl(CtForImpl ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final List<CtStatement> init = ins.getForInit();
		final CtExpression<Boolean> expression = ins.getExpression();
		final List<CtStatement> update = ins.getForUpdate();
		final CtStatement body = ins.getBody();
		final StringBuilder sb = new StringBuilder();
		sb.append("{\n"); // Initial separator

		for (CtStatement stat : init)
			sb.append(HaxeUtils.exportStatement(ctx, stat));

		sb.append("\n");
		sb.append("while (");
		sb.append(HaxeUtils.convertExpression(ctx, expression));
		sb.append(") {\n");
		sb.append(HaxeUtils.exportStatement(ctx, body));

		for (CtStatement stat : update)
			sb.append(HaxeUtils.exportStatement(ctx, stat));

		sb.append("}\n"); // end of while
		sb.append("}\n"); // end of initial separator
		return sb.toString();
	}

}
