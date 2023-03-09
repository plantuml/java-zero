// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt.color;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.color.HColor;
import jztest.Test;
import zava.awt.Color;
import net.sourceforge.plantuml.klimt.color.HColorSimple;
import net.sourceforge.plantuml.klimt.color.ColorMapper;
import net.sourceforge.plantuml.klimt.UBackground;




class HColorSimpleTest extends Test {



    // review.net.sourceforge.plantuml.klimt.color.HColorSimpleTest()
    public function new() {
super("HColorSimpleTest");
    }




    // allTests()[18]
    public function allTests_0(): Void {
test01_0();
test02_0();
    }


    // test01()[23]
    public function test01_0(): Void {
var color: Color = new Color(100, 150, 200);
var cut: HColorSimple = HColorSimple.create_1(color);
assertFalse_1(cut.isGray_0());
assertFalse_1(cut.isTransparent_0());
var mapper: ColorMapper = net.sourceforge.plantuml.klimt.color.ColorMapper.IDENTITY;
var result: Color = mapper.fromColorSimple_1(cut);
assertIntegerEquals_2(100, result.getRed());
assertIntegerEquals_2(150, result.getGreen());
assertIntegerEquals_2(200, result.getBlue());
    }


    // test02()[36]
    public function test02_0(): Void {
var color: Color = new Color(100, 150, 200);
var cut: HColorSimple = HColorSimple.create_1(color);
var bg: UBackground = cut.bg_0();
var res: HColor = bg.getBackColor_0();
assertFalse_1(res.isTransparent_0());
    }

}
