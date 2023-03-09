// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt.color;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.color.ColorUtils;
import zava.awt.Color;
import jztest.Test;




class ColorUtilsTest extends Test {



    // review.net.sourceforge.plantuml.klimt.color.ColorUtilsTest()
    public function new() {
super("ColorUtilsTest");
    }




    // allTests()[15]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
    }


    // test01()[21]
    public function test01_0(): Void {
var res: Int = ColorUtils.getGrayScale_1(new Color(100, 150, 200));
assertIntegerEquals_2(140, res);
    }


    // test02()[26]
    public function test02_0(): Void {
var res: Int = ColorUtils.getGrayScaleFromRGB_1(12345678);
assertIntegerEquals_2(122, res);
    }


    // test03()[31]
    public function test03_0(): Void {
var color1: Color = new Color(100, 150, 200);
var color2: Color = new Color(10, 90, 255);
var res: Int = ColorUtils.distance_2(color1, color2);
assertIntegerEquals_2(68400, res);
    }

}
