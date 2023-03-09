// THIS FILE HAS BEEN GENERATED.

package review.strings;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;




class ConcatenationTest extends Test {



    // review.strings.ConcatenationTest()
    public function new() {
super("ConcatenationTest");
    }




    // allTests()[12]
    public function allTests_0(): Void {
testStringConcat_0();
testStringConcat2_0();
    }


    // testStringConcat()[17]
    public function testStringConcat_0(): Void {
var s1: String = "TITI";
var s2: String = (("TI") + ("TI"));
assertStringEquals_2(s1, s2);
    }


    // testStringConcat2()[23]
    public function testStringConcat2_0(): Void {
var s1: String = "TI";
var s2: String = (("") + ("TI"));
assertStringEquals_2(s1, s2);
    }

}
