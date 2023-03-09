package review.net.sourceforge.plantuml.klimt.geom;

import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.MinMax;

public class MinMaxTest extends Test {

	public MinMaxTest() {
		super("MinMaxTest");
	}

	@Override
	protected void allTests() {
		test01();
	}

	private void test01() {
		final MinMax cut = MinMax.fromMax(10, 20);
		assertDoubleEquals(10, cut.getWidth());
		assertDoubleEquals(20, cut.getHeight());
	}

}
