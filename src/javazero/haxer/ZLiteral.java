package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.support.reflect.code.CtLiteralImpl;

public class ZLiteral implements Haxer {

	private final CtLiteralImpl<?> ins;

	public ZLiteral(CtLiteralImpl<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		return HaxeUtils.convertExpression(ctx, ins);
	}

}
