package javazero.haxer;

import javazero.ZeroContext;
import spoon.reflect.code.CtThrow;

public class ZThrow implements Haxer {

	private final CtThrow ins;

	public ZThrow(CtThrow ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		return "throw new Exception('NOT IMPLEMENTED');";
	}

}
