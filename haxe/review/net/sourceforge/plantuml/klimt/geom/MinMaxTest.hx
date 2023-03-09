// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.MinMax;




class MinMaxTest extends Test {



    // review.net.sourceforge.plantuml.klimt.geom.MinMaxTest()
    public function new() {
super("MinMaxTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
    }


    // test01()[17]
    public function test01_0(): Void {
var cut: MinMax = MinMax.fromMax_2(10, 20);
assertDoubleEquals_2(10, cut.getWidth_0());
assertDoubleEquals_2(20, cut.getHeight_0());
    }

}
