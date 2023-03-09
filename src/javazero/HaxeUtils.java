package javazero;

import java.util.List;

import javazero.haxer.ZArrayRead;
import javazero.haxer.ZAssignment;
import javazero.haxer.ZBinaryOperator;
import javazero.haxer.ZBlock;
import javazero.haxer.ZComment;
import javazero.haxer.ZConditional;
import javazero.haxer.ZConstructorCall;
import javazero.haxer.ZCtTypeAccess;
import javazero.haxer.ZExecutableReference;
import javazero.haxer.ZFieldRead;
import javazero.haxer.ZFieldWrite;
import javazero.haxer.ZForEach;
import javazero.haxer.ZForImpl;
import javazero.haxer.ZIf;
import javazero.haxer.ZInvocation;
import javazero.haxer.ZLocalVariable;
import javazero.haxer.ZNewArray;
import javazero.haxer.ZNewClass;
import javazero.haxer.ZOperatorAssignment;
import javazero.haxer.ZReturn;
import javazero.haxer.ZSuperAccess;
import javazero.haxer.ZThisAccess;
import javazero.haxer.ZThrow;
import javazero.haxer.ZTry;
import javazero.haxer.ZUnaryOperator;
import javazero.haxer.ZVariableRead;
import javazero.haxer.ZVariableWrite;
import javazero.haxer.ZWhile;
import spoon.reflect.code.CtArrayRead;
import spoon.reflect.code.CtAssert;
import spoon.reflect.code.CtAssignment;
import spoon.reflect.code.CtBinaryOperator;
import spoon.reflect.code.CtBlock;
import spoon.reflect.code.CtComment;
import spoon.reflect.code.CtConditional;
import spoon.reflect.code.CtConstructorCall;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtFieldRead;
import spoon.reflect.code.CtFieldWrite;
import spoon.reflect.code.CtForEach;
import spoon.reflect.code.CtIf;
import spoon.reflect.code.CtInvocation;
import spoon.reflect.code.CtLocalVariable;
import spoon.reflect.code.CtNewArray;
import spoon.reflect.code.CtNewClass;
import spoon.reflect.code.CtOperatorAssignment;
import spoon.reflect.code.CtReturn;
import spoon.reflect.code.CtStatement;
import spoon.reflect.code.CtThisAccess;
import spoon.reflect.code.CtThrow;
import spoon.reflect.code.CtTry;
import spoon.reflect.code.CtTypeAccess;
import spoon.reflect.code.CtUnaryOperator;
import spoon.reflect.code.CtVariableRead;
import spoon.reflect.code.CtVariableWrite;
import spoon.reflect.code.CtWhile;
import spoon.reflect.cu.SourcePosition;
import spoon.reflect.declaration.CtClass;
import spoon.reflect.declaration.CtMethod;
import spoon.reflect.declaration.CtParameter;
import spoon.reflect.declaration.CtType;
import spoon.reflect.reference.CtExecutableReference;
import spoon.reflect.reference.CtFieldReference;
import spoon.reflect.reference.CtParameterReference;
import spoon.reflect.reference.CtTypeReference;
import spoon.support.reflect.code.CtArrayReadImpl;
import spoon.support.reflect.code.CtBinaryOperatorImpl;
import spoon.support.reflect.code.CtConditionalImpl;
import spoon.support.reflect.code.CtConstructorCallImpl;
import spoon.support.reflect.code.CtFieldReadImpl;
import spoon.support.reflect.code.CtFieldWriteImpl;
import spoon.support.reflect.code.CtForImpl;
import spoon.support.reflect.code.CtInvocationImpl;
import spoon.support.reflect.code.CtLiteralImpl;
import spoon.support.reflect.code.CtNewArrayImpl;
import spoon.support.reflect.code.CtNewClassImpl;
import spoon.support.reflect.code.CtSuperAccessImpl;
import spoon.support.reflect.code.CtThisAccessImpl;
import spoon.support.reflect.code.CtTypeAccessImpl;
import spoon.support.reflect.code.CtUnaryOperatorImpl;
import spoon.support.reflect.code.CtVariableReadImpl;
import spoon.support.reflect.code.CtVariableWriteImpl;

public class HaxeUtils {

	public static String typeQualifiedName(CtTypeReference<?> typeRef) {
		String imported = typeRef.getQualifiedName();
		final CtType<?> typeDeclaration = typeRef.getDeclaration();
		if (typeDeclaration != null) {
			final CtTypeReference<?> erasure = typeDeclaration.getTypeErasure();
			imported = erasure.getQualifiedName();
		}
		if (imported.equals("java.util.List"))
			imported = "java.util.JZList";
		if (imported.equals("java.util.Map"))
			imported = "java.util.JZMap";
		if (imported.startsWith("java."))
			imported = imported.replaceFirst("^java", "zava");
		imported = imported.replace("$", "_");
		return imported;

	}

	public static String typeShortName(final CtTypeReference<?> type) {

		final String qualifiedName = type.getQualifiedName();

		if (isString(type))
			return "String";

		if (qualifiedName.equals("char"))
			return "String";

		if (qualifiedName.equals("int"))
			return "Int";

		if (qualifiedName.equals("long"))
			return "Int64";

		if (qualifiedName.equals("float"))
			return "Float";

		if (qualifiedName.equals("double"))
			return "Float";

		if (qualifiedName.equals("double[]"))
			return "Array<Float>";

		if (qualifiedName.equals("void"))
			return "Void";

		if (qualifiedName.equals("boolean"))
			return "Bool";

		if (qualifiedName.equals("java.lang.String[]"))
			return "Array<String>";

		if (qualifiedName.contains(".")) {
			final StringBuilder sb = new StringBuilder();

			if (qualifiedName.equals("java.util.List"))
				sb.append("JZList");
			else if (qualifiedName.equals("java.util.Map"))
				sb.append("JZMap");
			else
				sb.append(type.getSimpleName());

			final List<CtTypeReference<?>> generics = type.getActualTypeArguments();
			if (generics.size() > 0) {
				sb.append("<");
				for (int i = 0; i < generics.size(); i++) {
					if (i > 0)
						sb.append(",");
					sb.append(generics.get(i).getSimpleName());
				}
				sb.append(">");
			}
			return sb.toString();
		}

		throw new NotTranspilable("?(9665454UNKNOWN TYPE " + qualifiedName + ")");
	}

	public static boolean isString(CtTypeReference<?> type) {
		return type.getQualifiedName().equals("java.lang.String");
	}

	public static String methodName1(CtMethod<?> method) {
		final CtType<?> type = method.getDeclaringType();
		final String simpleName = method.getSimpleName();
		final int nb = method.getParameters().size();

		return methodNameInternal(type, simpleName, nb);
	}

	public static String methodName2(CtExecutableReference<?> ins) {
		final CtType<?> type = ins.getDeclaringType().getTypeDeclaration();
		final String simpleName = ins.getSimpleName();
		final int nb = ins.getParameters().size();

		return methodNameInternal(type, simpleName, nb);
	}

	private static String methodNameInternal(final CtType<?> type, String simpleName, int nb) {
		final boolean regularJavaAPI = type.getQualifiedName().startsWith("java.");

		if (simpleName.equals("split") && type.getQualifiedName().equals("java.lang.String")) {
			simpleName = "jz_split";
		}

		final StringBuilder sb = new StringBuilder();
		sb.append(simpleName);
		if (regularJavaAPI == false) {
			sb.append("_");
			sb.append(nb);
		}
		return sb.toString();
	}

	public static String getDeclaration(CtMethod<?> method) {
		final StringBuilder sb = new StringBuilder();
		sb.append(methodName1(method));
		sb.append("(");
		sb.append(parameters(method.getParameters()));
		sb.append(")");
		sb.append(": ");
		sb.append(typeShortName(method.getType()));
		return sb.toString();
	}

	public static String parameters(List<CtParameter<?>> parameters) {
		final StringBuilder sb = new StringBuilder();
		for (CtParameter<?> p : parameters) {
			final CtTypeReference<?> type = p.getType();
			final CtParameterReference<?> parameterReference = p.getReference();
			final CtTypeReference<?> typeErasure = type.getTypeErasure();
			final boolean useGeneric = typeErasure != type;
//			if (useGeneric) {
//				System.err.println("p=" + p);
//				System.err.println("type=" + type);
//				// System.err.println("typeDeclaration=" + typeDeclaration);
//				System.err.println("typeErasure=" + typeErasure);
//				System.err.println("para=" + (typeErasure != type));
//				System.err.println("parameterReference=" + parameterReference);
//			}

			if (sb.length() > 0)
				sb.append(", ");
			sb.append(p.getSimpleName());
			sb.append(": ");
			// sb.append(convertType(type));
			sb.append(typeShortName(typeErasure));
		}
		return sb.toString();
	}

	public static void appendArguments(ZeroContext ctx, final StringBuilder sb, final List<CtExpression<?>> args) {
		sb.append("(");
		boolean done = false;
		for (CtExpression<?> arg : args) {
			if (done)
				sb.append(", ");
			sb.append(HaxeUtils.convertExpression(ctx, arg));
			done = true;
		}
		sb.append(")");
	}

	public static String convertExpression(ZeroContext ctx, CtExpression<?> exp) {
		if (exp.getClass() == CtLiteralImpl.class)
			return exp.toString();

		if (exp.getClass() == CtInvocationImpl.class)
			return new ZInvocation((CtInvocation<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtVariableReadImpl.class)
			return new ZVariableRead((CtVariableRead<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtFieldReadImpl.class)
			return new ZFieldRead((CtFieldRead<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtFieldWriteImpl.class)
			return new ZFieldWrite((CtFieldWrite<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtThisAccessImpl.class)
			return new ZThisAccess((CtThisAccess<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtBinaryOperatorImpl.class)
			return new ZBinaryOperator((CtBinaryOperator<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtTypeAccessImpl.class)
			return new ZCtTypeAccess((CtTypeAccess<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtConstructorCallImpl.class)
			return new ZConstructorCall((CtConstructorCall<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtUnaryOperatorImpl.class)
			return new ZUnaryOperator((CtUnaryOperatorImpl<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtNewArrayImpl.class)
			return new ZNewArray((CtNewArray<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtArrayReadImpl.class)
			return new ZArrayRead((CtArrayRead<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtVariableWriteImpl.class)
			return new ZVariableWrite((CtVariableWrite<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtConditionalImpl.class)
			return new ZConditional((CtConditional<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtNewClassImpl.class)
			return new ZNewClass((CtNewClass<?>) exp).toHaxeCode(ctx);

		if (exp.getClass() == CtSuperAccessImpl.class)
			return new ZSuperAccess((CtSuperAccessImpl<?>) exp).toHaxeCode(ctx);

		System.err.println("exp=" + exp.getClass());

		throw new NotTranspilable("?124124?" + exp.getClass() + " " + exp);
	}

	public static String exportStatement(ZeroContext ctx, CtStatement stat) {
		if (stat instanceof CtInvocation<?>) {
			final String res = new ZInvocation((CtInvocation<?>) stat).toHaxeCode(ctx);
			if (res.length() == 0)
				return "";
			return res + ";";
		} else if (stat instanceof CtReturn<?>)
			return new ZReturn((CtReturn<?>) stat).toHaxeCode(ctx) + ";";
		else if (stat instanceof CtOperatorAssignment<?, ?>)
			return new ZOperatorAssignment((CtOperatorAssignment<?, ?>) stat).toHaxeCode(ctx) + ";";
		else if (stat instanceof CtAssignment<?, ?>)
			return new ZAssignment((CtAssignment<?, ?>) stat).toHaxeCode(ctx) + ";";
		else if (stat instanceof CtLocalVariable<?>)
			return new ZLocalVariable((CtLocalVariable<?>) stat).toHaxeCode(ctx) + ";";
		else if (stat instanceof CtIf)
			return new ZIf((CtIf) stat).toHaxeCode(ctx);
		else if (stat instanceof CtBlock<?>)
			return new ZBlock((CtBlock<?>) stat).toHaxeCode(ctx);
		else if (stat instanceof CtForEach)
			return new ZForEach((CtForEach) stat).toHaxeCode(ctx);
		else if (stat instanceof CtComment)
			return new ZComment((CtComment) stat).toHaxeCode(ctx);
		else if (stat instanceof CtThrow)
			return new ZThrow((CtThrow) stat).toHaxeCode(ctx);
		else if (stat instanceof CtForImpl)
			return new ZForImpl((CtForImpl) stat).toHaxeCode(ctx);
		else if (stat instanceof CtUnaryOperator<?>)
			return new ZUnaryOperator((CtUnaryOperator<?>) stat).toHaxeCode(ctx) + ";";
		else if (stat instanceof CtWhile)
			return new ZWhile((CtWhile) stat).toHaxeCode(ctx);
		else if (stat instanceof CtTry)
			return new ZTry((CtTry) stat).toHaxeCode(ctx);
		else if (stat instanceof CtAssert)
			return "";
		else {
			throw new NotTranspilable("//85641 " + stat.getClass());
		}
	}

	public static String convertExecutableReference(ZeroContext ctx, CtExecutableReference<?> exe,
			List<CtExpression<?>> insArgs) {
		return new ZExecutableReference(exe, insArgs).toHaxeCode(ctx);
	}

	public static String getInternalIdentifier(String name, SourcePosition position) {
		final StringBuilder sb = new StringBuilder();
		sb.append("_");
		sb.append(name);
		sb.append("_");
		sb.append(position.getFile().getName().replaceAll("\\W", "_"));
		sb.append("_");
		sb.append(position.getLine());
		return sb.toString();
	}

	public static String toStringWithJavaToZava(final CtFieldReference<?> variable) {
		String result = variable.toString();
		if (result.startsWith("java."))
			result = result.replaceFirst("^java", "zava");
		return result;
	}

	public static boolean isArray(CtExpression<?> exp) {
		if (exp instanceof CtInvocationImpl<?>)
			return isArray1((CtInvocationImpl<?>) exp);
		if (exp instanceof CtFieldReadImpl<?>)
			return isArray2((CtFieldReadImpl<?>) exp);
		return false;
	}

	private static boolean isArray2(CtFieldReadImpl<?> exp) {
		return exp.getType().isArray();
	}

	private static boolean isArray1(CtInvocationImpl<?> exp) {
		final CtExecutableReference<?> exe = exp.getExecutable();
		return exe.getType().isArray();
	}

	public static boolean isInt(CtExpression<?> exp) {
		// https://javadoc.io/static/fr.inria.gforge.spoon/spoon-core/10.1.1/spoon/reflect/code/CtExpression.html
		final CtTypeReference<?> type = exp.getType();
		if ("int".equals(type.getQualifiedName()))
			return true;
		return false;
	}

	private static String toCamelCase(String name) {
		return name.substring(0, 1).toUpperCase() + name.substring(1);
	}

	public static String getAnonymousClassName(CtClass<?> anonymousClass) {
		return HaxeUtils.toCamelCase(anonymousClass.getQualifiedName().replaceAll("[.$]", "_"));
	}

}
