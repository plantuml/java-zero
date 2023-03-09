package review.net.sourceforge.plantuml;

import jztest.Test;
import net.sourceforge.plantuml.StringUtils;

public class StringUtilsTest extends Test {

	public StringUtilsTest() {
		super("StringUtilsTest");
	}

	@Override
	protected void allTests() {
		test01();
		test02();
		test03();
		test04();
	}

	private void test01() {
		final String s = StringUtils.goUpperCase("abC");
		assertStringEquals("ABC", s);
	}

	private void test02() {
		assertStringEquals("abc", StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote("abc"));
		assertStringEquals("abc", StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote("(abc)"));
		assertStringEquals("abc", StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote("\"abc\""));
		assertStringEquals("abc", StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote(":abc:"));
	}

	private void test03() {
		final String s = StringUtils.sharp000000(123456);
		assertStringEquals("#01E240", s);
	}

	private void test04() {
		final String s = StringUtils.goLowerCase("AbC");
		assertStringEquals("abc", s);
	}

}
