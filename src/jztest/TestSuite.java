package jztest;

import java.util.ArrayList;

public class TestSuite {

	private final String name;
	private final ArrayList<Test> tests = new ArrayList<>();

	public TestSuite(String name) {
		this.name = name;
	}

	public void addTest(Test test) {
		tests.add(test);
	}

	public void doAllTests() {
		for (Test test : tests)
			test.doAllTests();
	}

}
