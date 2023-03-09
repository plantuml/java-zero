package review.net.sourceforge.plantuml.klimt.color;

import jztest.Test;
import net.sourceforge.plantuml.klimt.color.HColor;
import net.sourceforge.plantuml.klimt.color.HColors;

public class HColorsTest extends Test {

	public HColorsTest() {
		super("HColorsTest");
	}

	@Override
	protected void allTests() {
		test01();
	}

	private void test01() {
		final HColor cut = HColors.BLACK;
	}

}
