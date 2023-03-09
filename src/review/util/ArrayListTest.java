package review.util;

import java.util.ArrayList;

import jztest.Test;

public class ArrayListTest extends Test {

	public ArrayListTest() {
		super("ArrayListTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
	}

	private void test01() {
		final ArrayList<String> list = new ArrayList<>();
		assertIntegerEquals(0, list.size());
	}

	private void test02() {
		final ArrayList<String> list = new ArrayList<>();
		list.add("foo0");
		assertIntegerEquals(1, list.size());
	}

	private void test03() {
		final ArrayList<String> list = new ArrayList<>();
		list.add("foo0");
		assertIntegerEquals(1, list.size());
		final String s0 = list.get(0);
		assertStringEquals("foo0", s0);
	}

}
