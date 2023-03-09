package javazero.haxer;

import javazero.ZeroContext;
import spoon.reflect.code.CtThisAccess;

public class ZThisAccess implements Haxer {

	private final CtThisAccess<?> ins;

	public ZThisAccess(CtThisAccess<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
//		final CtExpression<?> target = ins.getTarget();
//		return HaxeUtils.convertExpression(target);
		return "this";
	}

}
