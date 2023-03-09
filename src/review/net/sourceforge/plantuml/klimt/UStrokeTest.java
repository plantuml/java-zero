package review.net.sourceforge.plantuml.klimt;

import jztest.Test;
import net.sourceforge.plantuml.klimt.UStroke;

public class UStrokeTest extends Test {

	public UStrokeTest() {
		super("UStrokeTest");
	}

	@Override
	protected void allTests() {
		test01();
	}

	private void test01() {
		final UStroke cut = UStroke.simple();
		assertDoubleEquals(1, cut.getThickness());
	}

}
