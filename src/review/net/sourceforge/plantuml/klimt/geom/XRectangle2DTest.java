package review.net.sourceforge.plantuml.klimt.geom;

import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.XLine2D;
import net.sourceforge.plantuml.klimt.geom.XPoint2D;
import net.sourceforge.plantuml.klimt.geom.XRectangle2D;

public class XRectangle2DTest extends Test {

	public XRectangle2DTest() {
		super("XRectangle2DTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
	}

	private void test01() {
		final XRectangle2D cut = new XRectangle2D(1, 2, 3, 4);
		assertDoubleEquals(1, cut.getX());
		assertDoubleEquals(2, cut.getY());
		assertDoubleEquals(3, cut.getWidth());
		assertDoubleEquals(4, cut.getHeight());
	}

	private void test02() {
		final XRectangle2D cut = new XRectangle2D(1, 2, 3, 4);
		final XLine2D line = new XLine2D(0, 0, 10, 10);
		final XPoint2D pt = cut.intersect(line);
		assertDoubleEquals(2, pt.getX());
		assertDoubleEquals(2, pt.getY());
	}

}
