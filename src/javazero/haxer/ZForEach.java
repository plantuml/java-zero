package javazero.haxer;

import javazero.HaxeUtils;
import javazero.ZeroContext;
import spoon.reflect.code.CtExpression;
import spoon.reflect.code.CtForEach;
import spoon.reflect.code.CtLocalVariable;
import spoon.reflect.code.CtStatement;
import spoon.reflect.cu.SourcePosition;

public class ZForEach implements Haxer {

	// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/support/reflect/code/CtForEachImpl.html
	private final CtForEach ins;

	public ZForEach(CtForEach ins) {
		this.ins = ins;
	}

	public String toHaxeCode(ZeroContext ctx) {
		final CtExpression<?> expression = ins.getExpression();

		final boolean isArray = HaxeUtils.isArray(expression);
		if (isArray)
			return toHaxeCodeArray(ctx);
		final SourcePosition position = ins.getPosition();
		final StringBuilder sb = new StringBuilder();
		final String indexName = HaxeUtils.getInternalIdentifier("i", position);
		final String tmpListName = HaxeUtils.getInternalIdentifier("list", position);

		final CtLocalVariable<?> variable = ins.getVariable();
		final CtStatement body = ins.getBody();
		sb.append("{\n");

		sb.append("var ");
		sb.append(tmpListName);
		sb.append(" = ");
		sb.append(HaxeUtils.convertExpression(ctx, expression));
		sb.append(";\n");

		sb.append("for (");
		sb.append(indexName);
		sb.append(" in 0...");
		sb.append(tmpListName);
		sb.append(".size()) {\n");

		sb.append("var ");
		sb.append(variable.getSimpleName());
		sb.append(": ");
		sb.append(HaxeUtils.typeShortName(variable.getType()));
		sb.append(" = ");
		sb.append(tmpListName);
		sb.append(".get(");
		sb.append(indexName);
		sb.append(");\n");

		sb.append(HaxeUtils.exportStatement(ctx, body));

		sb.append("}\n");
		sb.append("}\n");
		return sb.toString();
	}

	private String toHaxeCodeArray(ZeroContext ctx) {
		final CtExpression<?> expression = ins.getExpression();
		final SourcePosition position = ins.getPosition();
		final StringBuilder sb = new StringBuilder();
		final String indexName = HaxeUtils.getInternalIdentifier("i", position);
		final String tmpListName = HaxeUtils.getInternalIdentifier("list", position);

		final CtLocalVariable<?> variable = ins.getVariable();
		final CtStatement body = ins.getBody();
		sb.append("{\n");

		sb.append("var ");
		sb.append(tmpListName);
		sb.append(" = ");
		sb.append(HaxeUtils.convertExpression(ctx, expression));
		sb.append(";\n");

		sb.append("for (");
		sb.append(indexName);
		sb.append(" in 0...");
		sb.append(tmpListName);
		sb.append(".length) {\n");

		sb.append("var ");
		sb.append(variable.getSimpleName());
		sb.append(": ");
		sb.append(HaxeUtils.typeShortName(variable.getType()));
		sb.append(" = ");
		sb.append(tmpListName);
		sb.append("[");
		sb.append(indexName);
		sb.append("];\n");

		sb.append(HaxeUtils.exportStatement(ctx, body));

		sb.append("}\n");
		sb.append("}\n");
		return sb.toString();
	}

}
