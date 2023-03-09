package review.strings;

import jztest.Test;

public class ConcatenationTest extends Test {

	public ConcatenationTest() {
		super("ConcatenationTest");
	}

	@Override
	protected void allTests() {
		testStringConcat();
		testStringConcat2();
	}

	private void testStringConcat() {
		final String s1 = "TITI";
		final String s2 = "TI" + "TI";
		assertStringEquals(s1, s2);
	}

	private void testStringConcat2() {
		final String s1 = "TI";
		final String s2 = "" + "TI";
		assertStringEquals(s1, s2);
	}

}
