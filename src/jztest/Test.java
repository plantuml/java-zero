package jztest;

public abstract class Test {

	private final String name;

	public Test(String name) {
		this.name = name;
	}

	public boolean assertStringEquals(String expected, String actual) {
		final boolean result = expected.equals(actual);
		if (result)
			System.err.print(".");
		else {
			System.err.print("X");
			System.err.println("");
			System.err.println("expected=" + expected);
			System.err.println("actual=" + actual);
			System.err.println("");
		}
		return result;
	}

	public boolean assertIntegerEquals(int expected, int actual) {
		final boolean result = expected == actual;
		if (result)
			System.err.print(".");
		else {
			System.err.print("X");
			System.err.println("");
			System.err.println("expected=" + expected);
			System.err.println("actual=" + actual);
			System.err.println("");
		}

		return result;
	}

	public boolean assertDoubleEquals(double expected, double actual) {
		final boolean result = Math.abs(expected - actual) <= 0.01;
		if (result)
			System.err.print(".");
		else {
			System.err.print("X");
			System.err.println("");
			System.err.println("expected=" + expected);
			System.err.println("actual=" + actual);
			System.err.println("");
		}

		return result;
	}

	public boolean assertFalse(boolean expected) {
		return assertTrue(!expected);
	}

	public boolean assertTrue(boolean expected) {
		final boolean result = expected;
		if (result)
			System.err.print(".");
		else {
			System.err.print("X");
			System.err.println("");
			System.err.println("expected=" + expected);
			System.err.println("");
		}

		return result;
	}

	protected abstract void allTests();

	public final void doAllTests() {
		System.err.print(name + " [");
		allTests();
		System.err.println("]");
	}

}
