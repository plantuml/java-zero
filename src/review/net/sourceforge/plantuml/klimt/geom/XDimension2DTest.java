package review.net.sourceforge.plantuml.klimt.geom;

import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.XDimension2D;

public class XDimension2DTest extends Test {

	public XDimension2DTest() {
		super("XDimension2DTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
		test04();
		test05();
		test06();
		test07();
		test08();
		test09();
		test10();
	}

	private void test01() {
		final XDimension2D cut = new XDimension2D(3, 4);
		assertDoubleEquals(3, cut.getWidth());
		assertDoubleEquals(4, cut.getHeight());
	}

	private void test02() {
		final XDimension2D cut = new XDimension2D(3, 4).delta(1);
		assertDoubleEquals(4, cut.getWidth());
		assertDoubleEquals(5, cut.getHeight());
	}

	private void test03() {
		final XDimension2D cut = new XDimension2D(3, 4).delta(1).delta(2);
		assertDoubleEquals(6, cut.getWidth());
		assertDoubleEquals(7, cut.getHeight());
	}

	private void test04() {
		final XDimension2D cut = new XDimension2D(3, 4).delta(1).delta(2).withWidth(17);
		assertDoubleEquals(17, cut.getWidth());
		assertDoubleEquals(7, cut.getHeight());
	}

	private void test05() {
		final XDimension2D cut = new XDimension2D(3, 4).delta(1).delta(2).withWidth(17).delta(3, -4);
		assertDoubleEquals(20, cut.getWidth());
		assertDoubleEquals(3, cut.getHeight());
	}

	private void test06() {
		XDimension2D cut = new XDimension2D(3, 4);
		XDimension2D cut1 = new XDimension2D(5, 6);
		cut = cut1.mergeTB(cut);
		assertDoubleEquals(5, cut.getWidth());
		assertDoubleEquals(10, cut.getHeight());
	}

	private void test07() {
		XDimension2D cut = new XDimension2D(3, 4);
		XDimension2D cut1 = new XDimension2D(5, 6);
		cut = cut1.mergeLR(cut);
		assertDoubleEquals(8, cut.getWidth());
		assertDoubleEquals(6, cut.getHeight());
	}

	private void test08() {
		XDimension2D cut = new XDimension2D(3, 4).atLeast(10, 10);
		assertDoubleEquals(10, cut.getWidth());
		assertDoubleEquals(10, cut.getHeight());
	}

	private void test09() {
		XDimension2D cut = new XDimension2D(3, 4).atLeast(1, 10);
		assertDoubleEquals(3, cut.getWidth());
		assertDoubleEquals(10, cut.getHeight());
	}

	private void test10() {
		XDimension2D cut = new XDimension2D(3, 40);
		XDimension2D cut1 = new XDimension2D(5, 6);
		cut = XDimension2D.max(cut, cut1);
		assertDoubleEquals(5, cut.getWidth());
		assertDoubleEquals(40, cut.getHeight());
	}


}
