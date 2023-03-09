// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt.font;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.font.UFontContext;
import zava.awt.Font;
import jztest.Test;
import net.sourceforge.plantuml.klimt.font.UFont;




class UFontTest extends Test {



    // review.net.sourceforge.plantuml.klimt.font.UFontTest()
    public function new() {
super("UFontTest");
    }




    // allTests()[16]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
test04_0();
    }


    // test01()[23]
    public function test01_0(): Void {
assertIntegerEquals_2(0, zava.awt.Font.PLAIN);
assertIntegerEquals_2(1, zava.awt.Font.BOLD);
assertIntegerEquals_2(2, zava.awt.Font.ITALIC);
    }


    // test02()[29]
    public function test02_0(): Void {
var cut: UFont = UFont.sansSerif_1(12);
assertStringEquals_2("SansSerif", cut.getFamily_1(net.sourceforge.plantuml.klimt.font.UFontContext.G2D));
assertIntegerEquals_2(0, cut.getStyle_0());
assertIntegerEquals_2(12, cut.getSize_0());
assertDoubleEquals_2(12, cut.getSize2D_0());
assertFalse_1(cut.isBold_0());
assertFalse_1(cut.isItalic_0());
    }


    // test03()[39]
    public function test03_0(): Void {
var cut: UFont = UFont.sansSerif_1(12).bold_0();
assertStringEquals_2("SansSerif", cut.getFamily_1(net.sourceforge.plantuml.klimt.font.UFontContext.G2D));
assertIntegerEquals_2(1, cut.getStyle_0());
assertIntegerEquals_2(12, cut.getSize_0());
assertDoubleEquals_2(12, cut.getSize2D_0());
assertTrue_1(cut.isBold_0());
assertFalse_1(cut.isItalic_0());
    }


    // test04()[49]
    public function test04_0(): Void {
var cut: UFont = UFont.serif_1(16).italic_0();
assertStringEquals_2("Serif", cut.getFamily_1(net.sourceforge.plantuml.klimt.font.UFontContext.G2D));
assertIntegerEquals_2(2, cut.getStyle_0());
assertIntegerEquals_2(16, cut.getSize_0());
assertDoubleEquals_2(16, cut.getSize2D_0());
assertFalse_1(cut.isBold_0());
assertTrue_1(cut.isItalic_0());
    }

}
