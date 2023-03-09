package review.net.sourceforge.plantuml.klimt.geom;

import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.XPoint2D;

public class XPoint2DTest extends Test {

	public XPoint2DTest() {
		super("XPoint2DTest");
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
	}

	private void test01() {
		final XPoint2D cut = new XPoint2D(3, 4);
		assertDoubleEquals(3, cut.getX());
		assertDoubleEquals(4, cut.getY());
	}

	private void test02() {
		final XPoint2D cut = new XPoint2D(3, 4);
		final XPoint2D other = new XPoint2D(5, 6);
		assertDoubleEquals(2.82, cut.distance(other));
	}

	private void test03() {
		final XPoint2D cut = new XPoint2D(3, 4);
		final XPoint2D other = new XPoint2D(5, 6);
		assertDoubleEquals(8, cut.distanceSq(other));
	}

	private void test04() {
		final XPoint2D cut = new XPoint2D(3, 4);
		assertDoubleEquals(5.65, cut.distance(7, 8));
	}

	private void test05() {
		final double dist = XPoint2D.distance(12, -3, -4, 5);
		assertDoubleEquals(17.88, dist);
	}

	private void test06() {
		final XPoint2D cut = new XPoint2D(3, 4);
		final XPoint2D res = cut.move(-2, 3);
		assertDoubleEquals(1, res.getX());
		assertDoubleEquals(7, res.getY());
	}

	private void test07() {
		final XPoint2D cut = new XPoint2D(3, 4);
		final XPoint2D res = cut.move(new XPoint2D(-2, 3));
		assertDoubleEquals(1, res.getX());
		assertDoubleEquals(7, res.getY());
	}

	private void test08() {
		final XPoint2D cut = new XPoint2D(3, 4);
		final XPoint2D res = cut.move(-12, -13.5);
		assertDoubleEquals(-9, res.getX());
		assertDoubleEquals(-9.5, res.getY());
	}

}
