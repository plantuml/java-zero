// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt.font;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.klimt.font.FontPosition;




class FontPositionTest extends Test {



    // review.net.sourceforge.plantuml.klimt.font.FontPositionTest()
    public function new() {
super("FontPositionTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
    }


    // test01()[19]
    public function test01_0(): Void {
var cut: FontPosition = net.sourceforge.plantuml.klimt.font.FontPosition.EXPOSANT;
assertStringEquals_2("EXPOSANT", cut.name());
assertIntegerEquals_2(-(6), cut.getSpace_0());
    }


    // test02()[25]
    public function test02_0(): Void {
var cut: FontPosition = net.sourceforge.plantuml.klimt.font.FontPosition.NORMAL;
assertStringEquals_2("NORMAL", cut.name());
assertIntegerEquals_2(0, cut.getSpace_0());
    }


    // test03()[31]
    public function test03_0(): Void {
var cut: FontPosition = net.sourceforge.plantuml.klimt.font.FontPosition.INDICE;
assertStringEquals_2("INDICE", cut.name());
assertIntegerEquals_2(3, cut.getSpace_0());
    }

}
