package review.util;

import java.util.HashMap;
import java.util.Map;

import jztest.Test;

public class HashMapTest extends Test {

	public HashMapTest() {
		super("HashMapTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
		test04();
	}

	private void test01() {
		final Map<String, String> cut = new HashMap<>();
		assertIntegerEquals(0, cut.size());
	}

	private void test02() {
		final Map<String, String> cut = new HashMap<>();
		cut.put("key0", "value0");
		assertIntegerEquals(1, cut.size());
	}

	private void test03() {
		final Map<String, String> cut = new HashMap<>();
		cut.put("key0", "value0");
		cut.put("key0", "value00");
		assertIntegerEquals(1, cut.size());
	}

	private void test04() {
		final Map<String, String> cut = new HashMap<>();
		cut.put("key0", "value0");
		cut.put("key1", "value1");
		assertIntegerEquals(2, cut.size());
	}

}
