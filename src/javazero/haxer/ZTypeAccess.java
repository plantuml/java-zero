package javazero.haxer;

import javazero.ZeroContext;
import spoon.reflect.code.CtTypeAccess;
import spoon.reflect.reference.CtTypeReference;

public class ZTypeAccess implements Haxer {

	// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtTypeAccess.html
	private final CtTypeAccess<?> ins;

	public ZTypeAccess(CtTypeAccess<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final boolean implicit = ins.isImplicit();
		// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtTypeAccess.html
		final CtTypeReference<?> type = ins.getAccessedType();
		final StringBuilder sb = new StringBuilder();
		sb.append(type.getSimpleName());
		return sb.toString();
	}

}
