// THIS FILE HAS BEEN GENERATED.

package review.compute;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;




class ArithmeticTest extends Test {



    // review.compute.ArithmeticTest()
    public function new() {
super("ArithmeticTest");
    }




    // allTests()[12]
    public function allTests_0(): Void {
test01_0();
    }


    // test01()[16]
    public function test01_0(): Void {
var result: Int = Arithmetic.incrementInteger_1(41);
assertIntegerEquals_2(42, result);
    }

}
