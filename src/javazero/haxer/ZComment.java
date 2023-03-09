package javazero.haxer;

import javazero.ZeroContext;
import spoon.reflect.code.CtComment;

public class ZComment implements Haxer {

	private final CtComment ins;

	public ZComment(CtComment ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		return "// " + ins.getContent();
	}

}
