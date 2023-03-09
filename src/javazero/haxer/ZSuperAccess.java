package javazero.haxer;

import javazero.NotTranspilable;
import javazero.ZeroContext;
import spoon.support.reflect.code.CtSuperAccessImpl;

public class ZSuperAccess {

	private final CtSuperAccessImpl<?> ins;

	public ZSuperAccess(CtSuperAccessImpl<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		System.err.println("ins=" + ins);
		throw new NotTranspilable("null");
	}

}
