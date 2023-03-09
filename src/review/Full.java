package review;

import jztest.TestSuite;
import review.compute.ArithmeticTest;
import review.net.sourceforge.plantuml.StringUtilsTest;
import review.net.sourceforge.plantuml.klimt.BasicEnsureVisibleTest;
import review.net.sourceforge.plantuml.klimt.LineBreakStrategyTest;
import review.net.sourceforge.plantuml.klimt.UStrokeTest;
import review.net.sourceforge.plantuml.klimt.UTranslateTest;
import review.net.sourceforge.plantuml.klimt.color.ColorUtilsTest;
import review.net.sourceforge.plantuml.klimt.color.HColorSetTest;
import review.net.sourceforge.plantuml.klimt.color.HColorSimpleTest;
import review.net.sourceforge.plantuml.klimt.font.FontPositionTest;
import review.net.sourceforge.plantuml.klimt.font.UFontTest;
import review.net.sourceforge.plantuml.klimt.geom.MinMaxTest;
import review.net.sourceforge.plantuml.klimt.geom.XDimension2DTest;
import review.net.sourceforge.plantuml.klimt.geom.XLine2DTest;
import review.net.sourceforge.plantuml.klimt.geom.XPoint2DTest;
import review.net.sourceforge.plantuml.klimt.geom.XRectangle2DTest;
import review.net.sourceforge.plantuml.style.ClockwiseTopRightBottomLeftTest;
import review.net.sourceforge.plantuml.url.UrlTest;
import review.objects.PersonTest;
import review.strings.ColorTest;
import review.strings.ConcatenationTest;
import review.strings.IntegerTest;
import review.util.ArrayListTest;
import review.util.HashMapTest;
import review.util.ListTest;
import review.util.TreeSetTest;

public class Full {

	public static void main(String[] args) {
		final TestSuite suite = new TestSuite("first");
		suite.addTest(new ConcatenationTest());
		suite.addTest(new ArithmeticTest());
		suite.addTest(new PersonTest());
		suite.addTest(new ArrayListTest());
		suite.addTest(new ListTest());
		suite.addTest(new UStrokeTest());
		suite.addTest(new LineBreakStrategyTest());
		suite.addTest(new BasicEnsureVisibleTest());
		suite.addTest(new XPoint2DTest());
		suite.addTest(new XDimension2DTest());
		suite.addTest(new XLine2DTest());
		suite.addTest(new XRectangle2DTest());
		suite.addTest(new FontPositionTest());
		suite.addTest(new StringUtilsTest());
		suite.addTest(new UFontTest());
		suite.addTest(new UTranslateTest());
		suite.addTest(new ClockwiseTopRightBottomLeftTest());
		suite.addTest(new ColorUtilsTest());
		suite.addTest(new MinMaxTest());
		suite.addTest(new UStrokeTest());
		suite.addTest(new HColorSimpleTest());
		suite.addTest(new UrlTest());
		suite.addTest(new HColorSetTest());
		suite.addTest(new TreeSetTest());
		suite.addTest(new HashMapTest());
		suite.addTest(new ColorTest());
		suite.addTest(new IntegerTest());

		// Objective: UGraphic
		// https://github.com/andyli/hxAnonCls

		suite.doAllTests();

	}

}
