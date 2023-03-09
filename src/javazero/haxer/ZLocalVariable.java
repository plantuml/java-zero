package javazero.haxer;

import java.util.List;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtLocalVariable;
import spoon.reflect.reference.CtLocalVariableReference;
import spoon.reflect.reference.CtTypeReference;

public class ZLocalVariable implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtLocalVariable.html
	private final CtLocalVariable<?> ins;

	public ZLocalVariable(CtLocalVariable<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final StringBuilder sb = new StringBuilder();
		final CtLocalVariableReference<?> localVariable = ins.getReference();
		final CtExpression<?> assignment = ins.getAssignment();
		sb.append("var ");
		sb.append(localVariable.getSimpleName());
		sb.append(": ");
		sb.append(HaxeUtils.typeShortName(localVariable.getType()));
		if (assignment != null) {
			sb.append(" = ");
			final List<CtTypeReference<?>> casts = assignment.getTypeCasts();
			final boolean castToInt = casts.size() > 0 && HaxeUtils.typeShortName(casts.get(0)).equals("Int");

			if (castToInt)
				sb.append("Std.int(");

			sb.append(HaxeUtils.convertExpression(ctx, assignment));

			if (castToInt)
				sb.append(")");
		}
		return sb.toString();
	}

}
