package javazero.haxer;

import java.util.List;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtConstructorCall;
import spoon.reflect.code.CtExpression;
import spoon.reflect.reference.CtExecutableReference;

public class ZConstructorCall implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtConstructorCall.html
	private final CtConstructorCall<?> ins;

	public ZConstructorCall(CtConstructorCall<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final List<CtExpression<?>> insArgs = ins.getArguments();
		// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/reference/CtExecutableReference.html
		final CtExecutableReference<?> exe = ins.getExecutable();

		final StringBuilder sb = new StringBuilder();
		sb.append("new ");
		sb.append(HaxeUtils.typeShortName(ins.getType()));
		// sb.append(ins.getType().getSimpleName());
		HaxeUtils.appendArguments(ctx, sb, ins.getArguments());

		if (exe != null && exe.isImplicit() == false) {
			sb.append(".");
			sb.append(HaxeUtils.convertExecutableReference(ctx, exe, insArgs));
		}

		return sb.toString();
	}

}
