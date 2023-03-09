package review.strings;

import jztest.Test;

public class IntegerTest extends Test {

	public IntegerTest() {
		super("IntegerTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
	}

	private void test01() {
		assertIntegerEquals(10, Integer.parseInt("10"));
		assertIntegerEquals(0, Integer.parseInt("00"));
		assertIntegerEquals(-11, Integer.parseInt("-11"));
	}

	private void test02() {
		assertIntegerEquals(16, Integer.parseInt("10", 16));
		assertIntegerEquals(0, Integer.parseInt("00", 16));
		assertIntegerEquals(15, Integer.parseInt("F", 16));
		assertIntegerEquals(171, Integer.parseInt("AB", 16));
		assertIntegerEquals(171, Integer.parseInt("ab", 16));
	}

}
