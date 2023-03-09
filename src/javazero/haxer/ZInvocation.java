package javazero.haxer;

import java.util.List;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtConstructorCall;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtFieldRead;
import spoon.reflect.code.CtInvocation;
import spoon.reflect.code.CtThisAccess;
import spoon.reflect.code.CtTypeAccess;
import spoon.reflect.code.CtVariableRead;
import spoon.reflect.reference.CtExecutableReference;
import spoon.reflect.reference.CtFieldReference;
import spoon.reflect.reference.CtTypeReference;
import spoon.support.reflect.code.CtLiteralImpl;

public class ZInvocation implements Haxer {

	private final CtInvocation<?> ins;

	public ZInvocation(CtInvocation<?> ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtInvocation.html
		final StringBuilder sb = new StringBuilder();
		final CtExpression<?> target = ins.getTarget();
		final List<CtExpression<?>> insArgs = ins.getArguments();
		// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/reference/CtExecutableReference.html
		final CtExecutableReference<?> exe = ins.getExecutable();

		if (target == null) {
			final CtTypeReference<?> type = ins.getType();
			if (ins.toString().startsWith("super(")) {
				sb.append("super");
				HaxeUtils.appendArguments(ctx, sb, insArgs);
				return sb.toString();
			}

		} else {
			if (target.toString().equals("java.lang.System.err")) {
				final String methodName = ins.getExecutable().getActualMethod().getName();
				String haxeTarget = "Sys.?95645645?";
				if (methodName.equals("println"))
					haxeTarget = "Sys.println";
				else if (methodName.equals("print"))
					haxeTarget = "Sys.print";
				sb.append(haxeTarget);
				HaxeUtils.appendArguments(ctx, sb, insArgs);
				return sb.toString();
			}
			if (target instanceof CtFieldRead<?>) {
				// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/support/reflect/code/CtFieldReadImpl.html
				final CtFieldRead<?> target2 = (CtFieldRead<?>) target;
				final CtFieldReference<?> variable = target2.getVariable();

				if (HaxeUtils.isString(variable.getType())) {
					// Special treatement for String
					if (exe.getSimpleName().equals("length"))
						return variable.getSimpleName() + "." + "length";
				}

				final CtExpression<?> target3 = target2.getTarget();
				sb.append(HaxeUtils.convertExpression(ctx, target3));
				sb.append(".");
				sb.append(variable.getSimpleName());
				sb.append(".");
				sb.append(HaxeUtils.convertExecutableReference(ctx, exe, insArgs));

				return sb.toString();
			}

			// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtConstructorCall.html
			if (target instanceof CtConstructorCall) {
				final CtConstructorCall<?> call = (CtConstructorCall<?>) target;
				sb.append("new ");
				sb.append(call.getType().getSimpleName());
				HaxeUtils.appendArguments(ctx, sb, call.getArguments());

				if (exe != null && exe.isImplicit() == false) {
					sb.append(".");
					sb.append(HaxeUtils.convertExecutableReference(ctx, exe, insArgs));
				}

				return sb.toString();
			}

			// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtThisAccess.html
			if (target instanceof CtThisAccess<?>) {
//				final CtThisAccess<?> call = (CtThisAccess<?>) target;
//				return HaxeUtils.convertExpression(call);
				return HaxeUtils.convertExecutableReference(ctx, exe, insArgs);
			}

			if (target instanceof CtVariableRead) {
				sb.append(HaxeUtils.convertExpression(ctx, target));
				if (exe != null) {
					sb.append(".");
					sb.append(HaxeUtils.convertExecutableReference(ctx, exe, insArgs));
				}
				return sb.toString();
			}

			if (target instanceof CtTypeAccess<?>) {
				sb.append(new ZTypeAccess((CtTypeAccess<?>) target).toHaxeCode(ctx));
				if (exe != null) {
					sb.append(".");
					sb.append(HaxeUtils.convertExecutableReference(ctx, exe, insArgs));
				}
				return sb.toString();
			}

			if (target instanceof CtInvocation<?>) {
				sb.append(new ZInvocation((CtInvocation<?>) target).toHaxeCode(ctx));
				if (exe != null) {
					sb.append(".");
					sb.append(HaxeUtils.convertExecutableReference(ctx, exe, insArgs));
				}
				return sb.toString();
			}

			if (target instanceof CtLiteralImpl<?>) {
				sb.append(new ZLiteral((CtLiteralImpl<?>) target).toHaxeCode(ctx));
				if (exe != null) {
					sb.append(".");
					sb.append(HaxeUtils.convertExecutableReference(ctx, exe, insArgs));
				}
				return sb.toString();
			}

		}
		System.err.println("INS=" + ins.toString());
		if (target != null)
			return "//ZInvocation554 " + target.getClass() + " " + target;
		return "//ZInvocation553 " + ins.getClass();

	}

}
