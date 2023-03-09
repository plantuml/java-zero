package javazero.haxer;

import javazero.HaxeUtils;
import javazero.NotTranspilable;
import javazero.ZeroContext;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtUnaryOperator;
import spoon.reflect.code.UnaryOperatorKind;

public class ZUnaryOperator implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtUnaryOperatorImpl.html
	private final CtUnaryOperator<?> ins;

	public ZUnaryOperator(CtUnaryOperator<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final UnaryOperatorKind kind = ins.getKind();
		final CtExpression<?> operand = ins.getOperand();

		final String tmp = HaxeUtils.convertExpression(ctx, operand);
		return realString(kind, tmp);

	}

	private String realString(UnaryOperatorKind kind, String tmp) {
		switch (kind) {
		case NOT:
			return "!(" + tmp + ")";
		case NEG:
			return "-(" + tmp + ")";
		case POSTINC:
			return tmp + "++";
		case POSTDEC:
			return tmp + "--";
		}
		throw new NotTranspilable("?8549?" + kind);
	}

}
