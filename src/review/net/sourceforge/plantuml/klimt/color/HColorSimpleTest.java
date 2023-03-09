package review.net.sourceforge.plantuml.klimt.color;

import java.awt.Color;

import jztest.Test;
import net.sourceforge.plantuml.klimt.UBackground;
import net.sourceforge.plantuml.klimt.color.ColorMapper;
import net.sourceforge.plantuml.klimt.color.HColor;
import net.sourceforge.plantuml.klimt.color.HColorSimple;

public class HColorSimpleTest extends Test {

	public HColorSimpleTest() {
		super("HColorSimpleTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
	}

	private void test01() {
		final Color color = new Color(100, 150, 200);
		final HColorSimple cut = HColorSimple.create(color);
		assertFalse(cut.isGray());
		assertFalse(cut.isTransparent());

		final ColorMapper mapper = ColorMapper.IDENTITY;
		final Color result = mapper.fromColorSimple(cut);
		assertIntegerEquals(100, result.getRed());
		assertIntegerEquals(150, result.getGreen());
		assertIntegerEquals(200, result.getBlue());
	}

	private void test02() {
		final Color color = new Color(100, 150, 200);
		final HColorSimple cut = HColorSimple.create(color);
		final UBackground bg = cut.bg();
		final HColor res = bg.getBackColor();
		assertFalse(res.isTransparent());
		
		

	}

}
