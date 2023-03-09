// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.klimt.UTranslate;




class UTranslateTest extends Test {



    // review.net.sourceforge.plantuml.klimt.UTranslateTest()
    public function new() {
super("UTranslateTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
    }


    // test01()[17]
    public function test01_0(): Void {
var cut: UTranslate = new UTranslate(1, 2);
assertDoubleEquals_2(1, cut.getDx_0());
assertDoubleEquals_2(2, cut.getDy_0());
    }

}
