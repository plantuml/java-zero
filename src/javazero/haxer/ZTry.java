package javazero.haxer;

import java.util.List;

import javazero.HaxeUtils;
import javazero.NotTranspilable;
import javazero.ZeroContext;
import spoon.reflect.code.CtBlock;
import spoon.reflect.code.CtCatch;
import spoon.reflect.code.CtCatchVariable;
import spoon.reflect.code.CtTry;
import spoon.reflect.reference.CtCatchVariableReference;
import spoon.reflect.reference.CtTypeReference;

public class ZTry {

	// https://haxe.org/manual/expression-try-catch.html
	// https://github.com/HaxeFoundation/haxe/issues/3335

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtTryImpl.html
	private final CtTry ins;

	public ZTry(CtTry ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final CtBlock<?> body = ins.getBody();
		final CtBlock<?> finalizer = ins.getFinalizer();
		final List<CtCatch> catchers = ins.getCatchers();
		if (finalizer != null)
			throw new NotTranspilable("Finally block not implemented yet");
//		System.err.println("ins=" + ins);
//		System.err.println("body=" + body);
//		System.err.println("catchers=" + catchers);
//		System.err.println("finalizer=" + finalizer);
		final StringBuilder sb = new StringBuilder();
		sb.append("try \n");
		sb.append(new ZBlock(body).toHaxeCode(ctx));

		for (CtCatch acatch : catchers) {
			sb.append(convert(ctx, acatch));
		}

		return sb.toString();
	}

	private String convert(ZeroContext ctx, CtCatch acatch) {
		// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtCatch.html
		// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtCatchVariable.html
		final CtCatchVariable<? extends Throwable> exp = acatch.getParameter();
		final CtCatchVariableReference<? extends Throwable> var = exp.getReference();
		final CtTypeReference<? extends Throwable> type = exp.getType();
		final StringBuilder sb = new StringBuilder();
		sb.append("catch (");
		sb.append(var.getSimpleName());
		sb.append(":");
		sb.append(HaxeUtils.typeShortName(type));
		sb.append(")\n");
		sb.append(new ZBlock(acatch.getBody()).toHaxeCode(ctx));
		return sb.toString();
	}

}
