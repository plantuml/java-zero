package review.net.sourceforge.plantuml.style;

import jztest.Test;
import net.sourceforge.plantuml.style.ClockwiseTopRightBottomLeft;

public class ClockwiseTopRightBottomLeftTest extends Test {

	public ClockwiseTopRightBottomLeftTest() {
		super("ClockwiseTopRightBottomLeftTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
		test04();
	}

	private void test01() {
		final ClockwiseTopRightBottomLeft cut = ClockwiseTopRightBottomLeft.none();
		assertDoubleEquals(0, cut.getTop());
		assertDoubleEquals(0, cut.getRight());
		assertDoubleEquals(0, cut.getBottom());
		assertDoubleEquals(0, cut.getLeft());
	}

	private void test02() {
		final ClockwiseTopRightBottomLeft cut = ClockwiseTopRightBottomLeft.read("11 20");
		assertDoubleEquals(11, cut.getTop());
		assertDoubleEquals(20, cut.getRight());
		assertDoubleEquals(11, cut.getBottom());
		assertDoubleEquals(20, cut.getLeft());
	}

	private void test03() {
		final ClockwiseTopRightBottomLeft cut = ClockwiseTopRightBottomLeft.read("11 20 30");
		assertDoubleEquals(11, cut.getTop());
		assertDoubleEquals(20, cut.getRight());
		assertDoubleEquals(30, cut.getBottom());
		assertDoubleEquals(20, cut.getLeft());
	}

	private void test04() {
		final ClockwiseTopRightBottomLeft cut = ClockwiseTopRightBottomLeft.read("11 20 30 40");
		assertDoubleEquals(11, cut.getTop());
		assertDoubleEquals(20, cut.getRight());
		assertDoubleEquals(30, cut.getBottom());
		assertDoubleEquals(40, cut.getLeft());
	}

}
