// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.XPoint2D;




class XPoint2DTest extends Test {



    // review.net.sourceforge.plantuml.klimt.geom.XPoint2DTest()
    public function new() {
super("XPoint2DTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
test04_0();
test05_0();
test06_0();
test07_0();
test08_0();
    }


    // test01()[24]
    public function test01_0(): Void {
var cut: XPoint2D = new XPoint2D(3, 4);
assertDoubleEquals_2(3, cut.getX_0());
assertDoubleEquals_2(4, cut.getY_0());
    }


    // test02()[30]
    public function test02_0(): Void {
var cut: XPoint2D = new XPoint2D(3, 4);
var other: XPoint2D = new XPoint2D(5, 6);
assertDoubleEquals_2(2.82, cut.distance_1(other));
    }


    // test03()[36]
    public function test03_0(): Void {
var cut: XPoint2D = new XPoint2D(3, 4);
var other: XPoint2D = new XPoint2D(5, 6);
assertDoubleEquals_2(8, cut.distanceSq_1(other));
    }


    // test04()[42]
    public function test04_0(): Void {
var cut: XPoint2D = new XPoint2D(3, 4);
assertDoubleEquals_2(5.65, cut.distance_2(7, 8));
    }


    // test05()[47]
    public function test05_0(): Void {
var dist: Float = XPoint2D.distance_4(12, -(3), -(4), 5);
assertDoubleEquals_2(17.88, dist);
    }


    // test06()[52]
    public function test06_0(): Void {
var cut: XPoint2D = new XPoint2D(3, 4);
var res: XPoint2D = cut.move_2(-(2), 3);
assertDoubleEquals_2(1, res.getX_0());
assertDoubleEquals_2(7, res.getY_0());
    }


    // test07()[59]
    public function test07_0(): Void {
var cut: XPoint2D = new XPoint2D(3, 4);
var res: XPoint2D = cut.move_1(new XPoint2D(-(2), 3));
assertDoubleEquals_2(1, res.getX_0());
assertDoubleEquals_2(7, res.getY_0());
    }


    // test08()[66]
    public function test08_0(): Void {
var cut: XPoint2D = new XPoint2D(3, 4);
var res: XPoint2D = cut.move_2(-(12), -(13.5));
assertDoubleEquals_2(-(9), res.getX_0());
assertDoubleEquals_2(-(9.5), res.getY_0());
    }

}
