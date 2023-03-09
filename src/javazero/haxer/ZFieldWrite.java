package javazero.haxer;

import javazero.ZeroContext;
import spoon.reflect.code.CtFieldWrite;

public class ZFieldWrite implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtFieldWrite.html
	private final CtFieldWrite<?> ins;

	public ZFieldWrite(CtFieldWrite<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		return ins.toString();
	}

}
