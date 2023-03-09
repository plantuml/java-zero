package javazero.haxer;

import javazero.HaxeUtils;
import javazero.NotTranspilable;
import javazero.ZeroContext;
import spoon.reflect.code.BinaryOperatorKind;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtOperatorAssignment;

public class ZOperatorAssignment implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtOperatorAssignmentImpl.html
	private final CtOperatorAssignment<?, ?> ins;

	public ZOperatorAssignment(CtOperatorAssignment<?, ?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final BinaryOperatorKind kind = ins.getKind();
		final CtExpression<?> assigned = ins.getAssigned();
		final CtExpression<?> assignement = ins.getAssignment();
		final String assignedString = HaxeUtils.convertExpression(ctx, assigned);
		final String assignementString = HaxeUtils.convertExpression(ctx, assignement);

		switch (kind) {
		case MINUS:
			return assignedString + " -= " + assignementString;
		case PLUS:
			return assignedString + " += " + assignementString;

		}
		throw new NotTranspilable("kind=" + kind);

	}

}
