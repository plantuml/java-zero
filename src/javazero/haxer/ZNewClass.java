package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtNewClass;
import spoon.reflect.declaration.CtClass;

public class ZNewClass implements Haxer {

	private final CtNewClass<?> ins;

	public ZNewClass(CtNewClass<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final CtClass<?> anonymousClass = ins.getAnonymousClass();
		ctx.addAnonymousClass(anonymousClass);
		System.err.println("anonymousClass=" + anonymousClass);
		System.err.println("anonymousClass=" + anonymousClass.getQualifiedName());
		final StringBuilder sb = new StringBuilder();
		sb.append("new ");
		sb.append(HaxeUtils.getAnonymousClassName(anonymousClass));
		sb.append("(");
		sb.append(")");
		return sb.toString();
		// throw new NotTranspilable("in progress");
	}

}
