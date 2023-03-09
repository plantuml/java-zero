// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.klimt.UStroke;




class UStrokeTest extends Test {



    // review.net.sourceforge.plantuml.klimt.UStrokeTest()
    public function new() {
super("UStrokeTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
    }


    // test01()[17]
    public function test01_0(): Void {
var cut: UStroke = UStroke.simple_0();
assertDoubleEquals_2(1, cut.getThickness_0());
    }

}
