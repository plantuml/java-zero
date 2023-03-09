package review.compute;

import jztest.Test;

public class ArithmeticTest extends Test {

	public ArithmeticTest() {
		super("ArithmeticTest");
	}

	@Override
	protected void allTests() {
		test01();
	}

	private void test01() {
		final int result = Arithmetic.incrementInteger(41);
		assertIntegerEquals(42, result);
	}

}
