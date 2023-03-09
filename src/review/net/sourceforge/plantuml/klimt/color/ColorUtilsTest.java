package review.net.sourceforge.plantuml.klimt.color;

import java.awt.Color;

import jztest.Test;
import net.sourceforge.plantuml.klimt.color.ColorUtils;

public class ColorUtilsTest extends Test {

	public ColorUtilsTest() {
		super("ColorUtilsTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
	}

	private void test01() {
		final int res = ColorUtils.getGrayScale(new Color(100, 150, 200));
		assertIntegerEquals(140, res);
	}

	private void test02() {
		final int res = ColorUtils.getGrayScaleFromRGB(12345678);
		assertIntegerEquals(122, res);
	}

	private void test03() {
		final Color color1 = new Color(100, 150, 200);
		final Color color2 = new Color(10, 90, 255);
		final int res = ColorUtils.distance(color1, color2);
		assertIntegerEquals(68400, res);
	}

}
