// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt.color;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.util.Collection;
import jztest.Test;
import net.sourceforge.plantuml.klimt.color.HColorSet;




class HColorSetTest extends Test {



    // review.net.sourceforge.plantuml.klimt.color.HColorSetTest()
    public function new() {
super("HColorSetTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
    }


    // test01()[17]
    public function test01_0(): Void {
var cut: HColorSet = HColorSet.instance_0();
assertIntegerEquals_2(154, cut.names_0().size());
    }

}
