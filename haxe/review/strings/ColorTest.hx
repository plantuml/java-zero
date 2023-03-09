// THIS FILE HAS BEEN GENERATED.

package review.strings;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import zava.awt.Color;




class ColorTest extends Test {



    // review.strings.ColorTest()
    public function new() {
super("ColorTest");
    }




    // allTests()[14]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
test04_0();
    }


    // test01()[21]
    public function test01_0(): Void {
var cut: Color = new Color(10, 20, 30);
assertIntegerEquals_2(10, cut.getRed());
assertIntegerEquals_2(20, cut.getGreen());
assertIntegerEquals_2(30, cut.getBlue());
assertIntegerEquals_2(255, cut.getAlpha());
    }


    // test02()[29]
    public function test02_0(): Void {
var cut: Color = new Color(10, 20, 30, 40);
assertIntegerEquals_2(10, cut.getRed());
assertIntegerEquals_2(20, cut.getGreen());
assertIntegerEquals_2(30, cut.getBlue());
assertIntegerEquals_2(40, cut.getAlpha());
    }


    // test03()[37]
    public function test03_0(): Void {
var cut: Color = new Color(123456);
assertIntegerEquals_2(1, cut.getRed());
assertIntegerEquals_2(226, cut.getGreen());
assertIntegerEquals_2(64, cut.getBlue());
assertIntegerEquals_2(255, cut.getAlpha());
    }


    // test04()[45]
    public function test04_0(): Void {
var cut: Color = new Color(123456789);
assertIntegerEquals_2(91, cut.getRed());
assertIntegerEquals_2(205, cut.getGreen());
assertIntegerEquals_2(21, cut.getBlue());
assertIntegerEquals_2(255, cut.getAlpha());
    }

}
