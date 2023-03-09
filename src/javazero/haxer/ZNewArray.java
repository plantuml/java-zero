package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtNewArray;
import spoon.reflect.reference.CtTypeReference;

public class ZNewArray implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtNewArrayImpl.html
	private final CtNewArray<?> ins;

	public ZNewArray(CtNewArray<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final CtTypeReference<?> type = ins.getType();
		final StringBuilder sb = new StringBuilder();
		sb.append("[");
		boolean first = true;
		for (CtExpression<?> element : ins.getElements()) {
			if (first == false)
				sb.append(", ");
			sb.append(HaxeUtils.convertExpression(ctx, element));
			first = false;
		}
		sb.append("]");
		return sb.toString();
	}

}
