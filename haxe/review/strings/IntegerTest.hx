// THIS FILE HAS BEEN GENERATED.

package review.strings;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;




class IntegerTest extends Test {



    // review.strings.IntegerTest()
    public function new() {
super("IntegerTest");
    }




    // allTests()[12]
    public function allTests_0(): Void {
test01_0();
test02_0();
    }


    // test01()[17]
    public function test01_0(): Void {
assertIntegerEquals_2(10, Integer.parseInt("10"));
assertIntegerEquals_2(0, Integer.parseInt("00"));
assertIntegerEquals_2(-(11), Integer.parseInt("-11"));
    }


    // test02()[23]
    public function test02_0(): Void {
assertIntegerEquals_2(16, Integer.parseInt("10", 16));
assertIntegerEquals_2(0, Integer.parseInt("00", 16));
assertIntegerEquals_2(15, Integer.parseInt("F", 16));
assertIntegerEquals_2(171, Integer.parseInt("AB", 16));
assertIntegerEquals_2(171, Integer.parseInt("ab", 16));
    }

}
