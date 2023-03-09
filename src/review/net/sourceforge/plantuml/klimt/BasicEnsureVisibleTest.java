package review.net.sourceforge.plantuml.klimt;

import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.BasicEnsureVisible;

public class BasicEnsureVisibleTest extends Test {

	public BasicEnsureVisibleTest() {
		super("BasicEnsureVisibleTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
	}

	private void test01() {
		final BasicEnsureVisible cut = new BasicEnsureVisible();
		assertFalse(cut.hasData());
		assertStringEquals("0,0,0,0", cut.getCoords(10));
		assertDoubleEquals(0, cut.getSurface());
	}

	private void test02() {
		final BasicEnsureVisible cut = new BasicEnsureVisible();
		cut.ensureVisible(1, 2);
		assertTrue(cut.hasData());
		assertStringEquals("10,20,10,20", cut.getCoords(10));
		assertDoubleEquals(0, cut.getSurface());
	}

	private void test03() {
		final BasicEnsureVisible cut = new BasicEnsureVisible();
		cut.ensureVisible(1, 2);
		cut.ensureVisible(4, 5);
		assertTrue(cut.hasData());
		assertStringEquals("10,20,40,50", cut.getCoords(10));
		assertDoubleEquals(9, cut.getSurface());
	}

}
