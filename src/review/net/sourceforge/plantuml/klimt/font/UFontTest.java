package review.net.sourceforge.plantuml.klimt.font;

import java.awt.Font;

import jztest.Test;
import net.sourceforge.plantuml.klimt.font.UFont;
import net.sourceforge.plantuml.klimt.font.UFontContext;

public class UFontTest extends Test {

	public UFontTest() {
		super("UFontTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
		test04();
	}

	private void test01() {
		assertIntegerEquals(0, Font.PLAIN);
		assertIntegerEquals(1, Font.BOLD);
		assertIntegerEquals(2, Font.ITALIC);
	}

	private void test02() {
		final UFont cut = UFont.sansSerif(12);
		assertStringEquals("SansSerif", cut.getFamily(UFontContext.G2D));
		assertIntegerEquals(0, cut.getStyle());
		assertIntegerEquals(12, cut.getSize());
		assertDoubleEquals(12, cut.getSize2D());
		assertFalse(cut.isBold());
		assertFalse(cut.isItalic());
	}

	private void test03() {
		final UFont cut = UFont.sansSerif(12).bold();
		assertStringEquals("SansSerif", cut.getFamily(UFontContext.G2D));
		assertIntegerEquals(1, cut.getStyle());
		assertIntegerEquals(12, cut.getSize());
		assertDoubleEquals(12, cut.getSize2D());
		assertTrue(cut.isBold());
		assertFalse(cut.isItalic());
	}

	private void test04() {
		final UFont cut = UFont.serif(16).italic();
		assertStringEquals("Serif", cut.getFamily(UFontContext.G2D));
		assertIntegerEquals(2, cut.getStyle());
		assertIntegerEquals(16, cut.getSize());
		assertDoubleEquals(16, cut.getSize2D());
		assertFalse(cut.isBold());
		assertTrue(cut.isItalic());
	}

}
