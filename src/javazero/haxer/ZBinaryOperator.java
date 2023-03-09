package javazero.haxer;

import javazero.HaxeUtils;
import javazero.NotTranspilable;
import javazero.ZeroContext;
import spoon.reflect.code.BinaryOperatorKind;
import spoon.reflect.code.CtBinaryOperator;
import spoon.reflect.code.CtExpression;

public class ZBinaryOperator implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtBinaryOperator.html
	private final CtBinaryOperator<?> ins;

	public ZBinaryOperator(CtBinaryOperator<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final BinaryOperatorKind kind = ins.getKind();
		final CtExpression<?> left = ins.getLeftHandOperand();
		final CtExpression<?> right = ins.getRightHandOperand();
		final boolean integerDiv = kind == BinaryOperatorKind.DIV && HaxeUtils.isInt(left) && HaxeUtils.isInt(right);
		final StringBuilder sb = new StringBuilder();
		if (integerDiv)
			sb.append("Std.int");

		sb.append("(");

		sb.append("(");
		sb.append(HaxeUtils.convertExpression(ctx, left));
		sb.append(")");
		sb.append(" ");
		sb.append(realString(kind));
		sb.append(" ");
		sb.append("(");
		sb.append(HaxeUtils.convertExpression(ctx, right));
		sb.append(")");

		sb.append(")");

		return sb.toString();
	}

	private String realString(BinaryOperatorKind kind) {
		switch (kind) {
		case BITAND:
			return "&";
		case PLUS:
			return "+";
		case MUL:
			return "*";
		case DIV:
			return "/";
		case EQ:
			return "==";
		case NE:
			return "!=";
		case AND:
			return "&&";
		case OR:
			return "||";
		case MINUS:
			return "-";
		case LE:
			return "<=";
		case LT:
			return "<";
		case GT:
			return ">";
		case GE:
			return ">=";
		case SR:
			return ">>";
		}
		throw new NotTranspilable("?8547?" + kind);
	}

}
