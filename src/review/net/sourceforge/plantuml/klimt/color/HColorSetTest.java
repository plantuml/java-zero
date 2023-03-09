package review.net.sourceforge.plantuml.klimt.color;

import jztest.Test;
import net.sourceforge.plantuml.klimt.color.HColorSet;

public class HColorSetTest extends Test {

	public HColorSetTest() {
		super("HColorSetTest");
	}

	@Override
	protected void allTests() {
		test01();
	}

	private void test01() {
		final HColorSet cut = HColorSet.instance();
		assertIntegerEquals(154, cut.names().size());
	}

}
