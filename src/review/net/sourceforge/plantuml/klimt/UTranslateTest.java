package review.net.sourceforge.plantuml.klimt;

import jztest.Test;
import net.sourceforge.plantuml.klimt.UTranslate;

public class UTranslateTest extends Test {

	public UTranslateTest() {
		super("UTranslateTest");
	}

	@Override
	protected void allTests() {
		test01();
	}

	private void test01() {
		final UTranslate cut = new UTranslate(1, 2);
		assertDoubleEquals(1, cut.getDx());
		assertDoubleEquals(2, cut.getDy());
	}

}
