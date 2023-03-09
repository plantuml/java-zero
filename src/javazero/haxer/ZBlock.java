package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtBlock;
import spoon.reflect.code.CtStatement;

public class ZBlock implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtBlock.html
	private final CtBlock<?> ins;

	public ZBlock(CtBlock<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final StringBuilder sb = new StringBuilder();
		sb.append("{\n");
		for (CtStatement st : ins.getStatements()) {
			sb.append(HaxeUtils.exportStatement(ctx, st));
			sb.append("\n");
		}
		sb.append("}\n");
		return sb.toString();
	}

}
