// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.style;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.style.ClockwiseTopRightBottomLeft;




class ClockwiseTopRightBottomLeftTest extends Test {



    // review.net.sourceforge.plantuml.style.ClockwiseTopRightBottomLeftTest()
    public function new() {
super("ClockwiseTopRightBottomLeftTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
test04_0();
    }


    // test01()[20]
    public function test01_0(): Void {
var cut: ClockwiseTopRightBottomLeft = ClockwiseTopRightBottomLeft.none_0();
assertDoubleEquals_2(0, cut.getTop_0());
assertDoubleEquals_2(0, cut.getRight_0());
assertDoubleEquals_2(0, cut.getBottom_0());
assertDoubleEquals_2(0, cut.getLeft_0());
    }


    // test02()[28]
    public function test02_0(): Void {
var cut: ClockwiseTopRightBottomLeft = ClockwiseTopRightBottomLeft.read_1("11 20");
assertDoubleEquals_2(11, cut.getTop_0());
assertDoubleEquals_2(20, cut.getRight_0());
assertDoubleEquals_2(11, cut.getBottom_0());
assertDoubleEquals_2(20, cut.getLeft_0());
    }


    // test03()[36]
    public function test03_0(): Void {
var cut: ClockwiseTopRightBottomLeft = ClockwiseTopRightBottomLeft.read_1("11 20 30");
assertDoubleEquals_2(11, cut.getTop_0());
assertDoubleEquals_2(20, cut.getRight_0());
assertDoubleEquals_2(30, cut.getBottom_0());
assertDoubleEquals_2(20, cut.getLeft_0());
    }


    // test04()[44]
    public function test04_0(): Void {
var cut: ClockwiseTopRightBottomLeft = ClockwiseTopRightBottomLeft.read_1("11 20 30 40");
assertDoubleEquals_2(11, cut.getTop_0());
assertDoubleEquals_2(20, cut.getRight_0());
assertDoubleEquals_2(30, cut.getBottom_0());
assertDoubleEquals_2(40, cut.getLeft_0());
    }

}
