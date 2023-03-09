package review.net.sourceforge.plantuml.url;

import jztest.Test;
import net.sourceforge.plantuml.url.Url;

public class UrlTest extends Test {

	public UrlTest() {
		super("UrlTest");
	}

	@Override
	protected void allTests() {
		test01();
	}

	private void test01() {
		final Url url = new Url("https://plantuml.com", "tooltip", null);
		assertStringEquals("https://plantuml.com", url.getUrl());
	}

}
