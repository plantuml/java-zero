package javazero.haxer;

import javazero.ZeroContext;
import spoon.reflect.code.CtVariableWrite;
import spoon.reflect.reference.CtVariableReference;

public class ZVariableWrite implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtVariableWriteImpl.html
	private final CtVariableWrite<?> ins;

	public ZVariableWrite(CtVariableWrite<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final CtVariableReference<?> var = ins.getVariable();
		return var.getSimpleName();
	}

}
