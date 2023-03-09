package review.util;

import java.util.ArrayList;
import java.util.List;

import jztest.Test;

public class ListTest extends Test {

	public ListTest() {
		super("ListTest");
	}

	@Override
	protected void allTests() {
		test01();
	}

	private void test01() {
		final List<String> list = new ArrayList<>();
		assertIntegerEquals(0, list.size());
	}

}
