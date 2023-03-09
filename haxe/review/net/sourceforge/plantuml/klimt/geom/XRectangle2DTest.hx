// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.XRectangle2D;
import net.sourceforge.plantuml.klimt.geom.XLine2D;
import net.sourceforge.plantuml.klimt.geom.XPoint2D;




class XRectangle2DTest extends Test {



    // review.net.sourceforge.plantuml.klimt.geom.XRectangle2DTest()
    public function new() {
super("XRectangle2DTest");
    }




    // allTests()[15]
    public function allTests_0(): Void {
test01_0();
test02_0();
    }


    // test01()[20]
    public function test01_0(): Void {
var cut: XRectangle2D = new XRectangle2D(1, 2, 3, 4);
assertDoubleEquals_2(1, cut.getX_0());
assertDoubleEquals_2(2, cut.getY_0());
assertDoubleEquals_2(3, cut.getWidth_0());
assertDoubleEquals_2(4, cut.getHeight_0());
    }


    // test02()[28]
    public function test02_0(): Void {
var cut: XRectangle2D = new XRectangle2D(1, 2, 3, 4);
var line: XLine2D = new XLine2D(0, 0, 10, 10);
var pt: XPoint2D = cut.intersect_1(line);
assertDoubleEquals_2(2, pt.getX_0());
assertDoubleEquals_2(2, pt.getY_0());
    }

}
