package review.objects;

import jztest.Test;

public class PersonTest extends Test {

	public PersonTest() {
		super("PersonTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
	}

	private void test01() {
		final PersonImpl p = new PersonImpl("Alice");
		final String name = p.getName();
		assertStringEquals("Alice", name);
		assertIntegerEquals(5, p.getNameLenght());
	}

	private void test02() {
		final IPerson p = new PersonImpl("Alice");
		final String name = p.getName();
		assertStringEquals("Alice", name);
		// assertIntegerEquals(5, p.getNameLenght());
	}

}
