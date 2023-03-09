package review.strings;

import java.awt.Color;

import jztest.Test;

public class ColorTest extends Test {

	public ColorTest() {
		super("ColorTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
		test04();
	}

	private void test01() {
		final Color cut = new Color(10, 20, 30);
		assertIntegerEquals(10, cut.getRed());
		assertIntegerEquals(20, cut.getGreen());
		assertIntegerEquals(30, cut.getBlue());
		assertIntegerEquals(255, cut.getAlpha());
	}

	private void test02() {
		final Color cut = new Color(10, 20, 30, 40);
		assertIntegerEquals(10, cut.getRed());
		assertIntegerEquals(20, cut.getGreen());
		assertIntegerEquals(30, cut.getBlue());
		assertIntegerEquals(40, cut.getAlpha());
	}

	private void test03() {
		final Color cut = new Color(123456);
		assertIntegerEquals(1, cut.getRed());
		assertIntegerEquals(226, cut.getGreen());
		assertIntegerEquals(64, cut.getBlue());
		assertIntegerEquals(255, cut.getAlpha());
	}

	private void test04() {
		final Color cut = new Color(123456789);
		assertIntegerEquals(91, cut.getRed());
		assertIntegerEquals(205, cut.getGreen());
		assertIntegerEquals(21, cut.getBlue());
		assertIntegerEquals(255, cut.getAlpha());
	}

}
