// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.XDimension2D;




class XDimension2DTest extends Test {



    // review.net.sourceforge.plantuml.klimt.geom.XDimension2DTest()
    public function new() {
super("XDimension2DTest");
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
test09_0();
test10_0();
    }


    // test01()[26]
    public function test01_0(): Void {
var cut: XDimension2D = new XDimension2D(3, 4);
assertDoubleEquals_2(3, cut.getWidth_0());
assertDoubleEquals_2(4, cut.getHeight_0());
    }


    // test02()[32]
    public function test02_0(): Void {
var cut: XDimension2D = new XDimension2D(3, 4).delta_1(1);
assertDoubleEquals_2(4, cut.getWidth_0());
assertDoubleEquals_2(5, cut.getHeight_0());
    }


    // test03()[38]
    public function test03_0(): Void {
var cut: XDimension2D = new XDimension2D(3, 4).delta_1(1).delta_1(2);
assertDoubleEquals_2(6, cut.getWidth_0());
assertDoubleEquals_2(7, cut.getHeight_0());
    }


    // test04()[44]
    public function test04_0(): Void {
var cut: XDimension2D = new XDimension2D(3, 4).delta_1(1).delta_1(2).withWidth_1(17);
assertDoubleEquals_2(17, cut.getWidth_0());
assertDoubleEquals_2(7, cut.getHeight_0());
    }


    // test05()[50]
    public function test05_0(): Void {
var cut: XDimension2D = new XDimension2D(3, 4).delta_1(1).delta_1(2).withWidth_1(17).delta_2(3, -(4));
assertDoubleEquals_2(20, cut.getWidth_0());
assertDoubleEquals_2(3, cut.getHeight_0());
    }


    // test06()[56]
    public function test06_0(): Void {
var cut: XDimension2D = new XDimension2D(3, 4);
var cut1: XDimension2D = new XDimension2D(5, 6);
cut = cut1.mergeTB_1(cut);
assertDoubleEquals_2(5, cut.getWidth_0());
assertDoubleEquals_2(10, cut.getHeight_0());
    }


    // test07()[64]
    public function test07_0(): Void {
var cut: XDimension2D = new XDimension2D(3, 4);
var cut1: XDimension2D = new XDimension2D(5, 6);
cut = cut1.mergeLR_1(cut);
assertDoubleEquals_2(8, cut.getWidth_0());
assertDoubleEquals_2(6, cut.getHeight_0());
    }


    // test08()[72]
    public function test08_0(): Void {
var cut: XDimension2D = new XDimension2D(3, 4).atLeast_2(10, 10);
assertDoubleEquals_2(10, cut.getWidth_0());
assertDoubleEquals_2(10, cut.getHeight_0());
    }


    // test09()[78]
    public function test09_0(): Void {
var cut: XDimension2D = new XDimension2D(3, 4).atLeast_2(1, 10);
assertDoubleEquals_2(3, cut.getWidth_0());
assertDoubleEquals_2(10, cut.getHeight_0());
    }


    // test10()[84]
    public function test10_0(): Void {
var cut: XDimension2D = new XDimension2D(3, 40);
var cut1: XDimension2D = new XDimension2D(5, 6);
cut = XDimension2D.max_2(cut, cut1);
assertDoubleEquals_2(5, cut.getWidth_0());
assertDoubleEquals_2(40, cut.getHeight_0());
    }

}
