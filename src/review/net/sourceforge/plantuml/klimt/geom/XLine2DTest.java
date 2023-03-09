package review.net.sourceforge.plantuml.klimt.geom;

import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.XLine2D;
import net.sourceforge.plantuml.klimt.geom.XPoint2D;

public class XLine2DTest extends Test {

	public XLine2DTest() {
		super("XLine2DTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
	}

	private void test01() {
		final XLine2D cut = new XLine2D(1, 2, 3, 4);
		assertDoubleEquals(1, cut.getX1());
		assertDoubleEquals(2, cut.getY1());
		assertDoubleEquals(3, cut.getX2());
		assertDoubleEquals(4, cut.getY2());
	}

	private void test02() {
		final XLine2D cut = XLine2D.line(new XPoint2D(1, 2), new XPoint2D(3, 4));
		assertDoubleEquals(1, cut.getX1());
		assertDoubleEquals(2, cut.getY1());
		assertDoubleEquals(3, cut.getX2());
		assertDoubleEquals(4, cut.getY2());
	}

	private void test03() {
		final XLine2D cut = XLine2D.line(new XPoint2D(1, 2), new XPoint2D(3, 4));
		final XPoint2D middle = cut.getMiddle();
		assertDoubleEquals(2, middle.getX());
		assertDoubleEquals(3, middle.getY());
	}

}
