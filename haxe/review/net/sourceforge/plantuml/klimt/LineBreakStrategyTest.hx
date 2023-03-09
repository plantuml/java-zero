// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.klimt.LineBreakStrategy;




class LineBreakStrategyTest extends Test {



    // review.net.sourceforge.plantuml.klimt.LineBreakStrategyTest()
    public function new() {
super("LineBreakStrategyTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
test04_0();
test05_0();
    }


    // test01()[21]
    public function test01_0(): Void {
var none: LineBreakStrategy = net.sourceforge.plantuml.klimt.LineBreakStrategy.NONE;
assertFalse_1(none.isAuto_0());
assertDoubleEquals_2(0, none.getMaxWidth_0());
    }


    // test02()[27]
    public function test02_0(): Void {
var none: LineBreakStrategy = new LineBreakStrategy("auto");
assertTrue_1(none.isAuto_0());
assertDoubleEquals_2(0, none.getMaxWidth_0());
    }


    // test03()[33]
    public function test03_0(): Void {
var none: LineBreakStrategy = new LineBreakStrategy("3");
assertFalse_1(none.isAuto_0());
assertDoubleEquals_2(3, none.getMaxWidth_0());
    }


    // test04()[39]
    public function test04_0(): Void {
var none: LineBreakStrategy = new LineBreakStrategy("-4");
assertFalse_1(none.isAuto_0());
assertDoubleEquals_2(-(4), none.getMaxWidth_0());
    }


    // test05()[45]
    public function test05_0(): Void {
var none: LineBreakStrategy = new LineBreakStrategy("foo");
assertFalse_1(none.isAuto_0());
assertDoubleEquals_2(0, none.getMaxWidth_0());
    }

}
