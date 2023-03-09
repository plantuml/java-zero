package review.net.sourceforge.plantuml.klimt.font;

import jztest.Test;
import net.sourceforge.plantuml.klimt.font.FontPosition;

public class FontPositionTest extends Test {

	public FontPositionTest() {
		super("FontPositionTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
	}

	private void test01() {
		final FontPosition cut = FontPosition.EXPOSANT;
		assertStringEquals("EXPOSANT", cut.name());
		assertIntegerEquals(-6, cut.getSpace());
	}

	private void test02() {
		final FontPosition cut = FontPosition.NORMAL;
		assertStringEquals("NORMAL", cut.name());
		assertIntegerEquals(0, cut.getSpace());
	}

	private void test03() {
		final FontPosition cut = FontPosition.INDICE;
		assertStringEquals("INDICE", cut.name());
		assertIntegerEquals(3, cut.getSpace());
	}

}
