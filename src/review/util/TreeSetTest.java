package review.util;

import java.util.Set;
import java.util.TreeSet;

import jztest.Test;

public class TreeSetTest extends Test {

	public TreeSetTest() {
		super("TreeSetTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
		test04();
	}

	private void test01() {
		final Set<String> cut = new TreeSet<>();
		assertIntegerEquals(0, cut.size());
	}

	private void test02() {
		final Set<String> cut = new TreeSet<>();
		assertTrue(cut.add("a"));
		assertIntegerEquals(1, cut.size());
	}

	private void test03() {
		final Set<String> cut = new TreeSet<>();
		assertTrue(cut.add("a"));
		assertFalse(cut.add("a"));
		assertIntegerEquals(1, cut.size());
	}

	private void test04() {
		final Set<String> cut = new TreeSet<>();
		assertTrue(cut.add("a"));
		assertTrue(cut.add("b"));
		assertIntegerEquals(2, cut.size());
	}

}
