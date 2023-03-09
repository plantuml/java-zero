package javazero.haxer;

import javazero.ZeroContext;
import spoon.reflect.code.CtTypeAccess;

public class ZCtTypeAccess implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtTypeAccess.html
	private final CtTypeAccess<?> ins;

	public ZCtTypeAccess(CtTypeAccess<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		new ZTypeAccess(ins).toHaxeCode(ctx);

		return "7774";
	}

}
