package review.net.sourceforge.plantuml.klimt;

import jztest.Test;
import net.sourceforge.plantuml.klimt.LineBreakStrategy;

public class LineBreakStrategyTest extends Test {

	public LineBreakStrategyTest() {
		super("LineBreakStrategyTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
		test04();
		test05();
	}

	private void test01() {
		LineBreakStrategy none = LineBreakStrategy.NONE;
		assertFalse(none.isAuto());
		assertDoubleEquals(0, none.getMaxWidth());
	}

	private void test02() {
		LineBreakStrategy none = new LineBreakStrategy("auto");
		assertTrue(none.isAuto());
		assertDoubleEquals(0, none.getMaxWidth());
	}

	private void test03() {
		LineBreakStrategy none = new LineBreakStrategy("3");
		assertFalse(none.isAuto());
		assertDoubleEquals(3, none.getMaxWidth());
	}

	private void test04() {
		LineBreakStrategy none = new LineBreakStrategy("-4");
		assertFalse(none.isAuto());
		assertDoubleEquals(-4, none.getMaxWidth());
	}

	private void test05() {
		LineBreakStrategy none = new LineBreakStrategy("foo");
		assertFalse(none.isAuto());
		assertDoubleEquals(0, none.getMaxWidth());
	}

}
