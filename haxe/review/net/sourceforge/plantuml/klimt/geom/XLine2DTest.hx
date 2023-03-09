// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.geom.XPoint2D;
import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.XLine2D;




class XLine2DTest extends Test {



    // review.net.sourceforge.plantuml.klimt.geom.XLine2DTest()
    public function new() {
super("XLine2DTest");
    }




    // allTests()[14]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
    }


    // test01()[20]
    public function test01_0(): Void {
var cut: XLine2D = new XLine2D(1, 2, 3, 4);
assertDoubleEquals_2(1, cut.getX1_0());
assertDoubleEquals_2(2, cut.getY1_0());
assertDoubleEquals_2(3, cut.getX2_0());
assertDoubleEquals_2(4, cut.getY2_0());
    }


    // test02()[28]
    public function test02_0(): Void {
var cut: XLine2D = XLine2D.line_2(new XPoint2D(1, 2), new XPoint2D(3, 4));
assertDoubleEquals_2(1, cut.getX1_0());
assertDoubleEquals_2(2, cut.getY1_0());
assertDoubleEquals_2(3, cut.getX2_0());
assertDoubleEquals_2(4, cut.getY2_0());
    }


    // test03()[36]
    public function test03_0(): Void {
var cut: XLine2D = XLine2D.line_2(new XPoint2D(1, 2), new XPoint2D(3, 4));
var middle: XPoint2D = cut.getMiddle_0();
assertDoubleEquals_2(2, middle.getX_0());
assertDoubleEquals_2(3, middle.getY_0());
    }

}
