package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtAssignment;
import spoon.reflect.code.CtExpression;

public class ZAssignment implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtAssignment.html

	private final CtAssignment<?, ?> ins;

	public ZAssignment(CtAssignment<?, ?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final CtExpression<?> assigned = ins.getAssigned();
		final CtExpression<?> assignement = ins.getAssignment();
		final String assignedString = HaxeUtils.convertExpression(ctx, assigned);
		final String assignementString = HaxeUtils.convertExpression(ctx, assignement);

		return assignedString + " = " + assignementString;
	}

}
