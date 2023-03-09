// THIS FILE HAS BEEN GENERATED.

package jztest;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




abstract class Test {
    public var name: String;



    // jztest.Test(java.lang.String)
    public function new(name: String) {
this.name = name;
    }




    // assertStringEquals(java.lang.String,java.lang.String)[11]
    public function assertStringEquals_2(expected: String, actual: String): Bool {
var result: Bool = expected.equals(actual);
if (result) {
Sys.print(".");
}
else {
Sys.print("X");
Sys.println("");
Sys.println((("expected=") + (expected)));
Sys.println((("actual=") + (actual)));
Sys.println("");
}

return result;
    }


    // assertIntegerEquals(int,int)[25]
    public function assertIntegerEquals_2(expected: Int, actual: Int): Bool {
var result: Bool = ((expected) == (actual));
if (result) {
Sys.print(".");
}
else {
Sys.print("X");
Sys.println("");
Sys.println((("expected=") + (expected)));
Sys.println((("actual=") + (actual)));
Sys.println("");
}

return result;
    }


    // assertDoubleEquals(double,double)[40]
    public function assertDoubleEquals_2(expected: Float, actual: Float): Bool {
var result: Bool = ((Math.abs(((expected) - (actual)))) <= (0.01));
if (result) {
Sys.print(".");
}
else {
Sys.print("X");
Sys.println("");
Sys.println((("expected=") + (expected)));
Sys.println((("actual=") + (actual)));
Sys.println("");
}

return result;
    }


    // assertFalse(boolean)[55]
    public function assertFalse_1(expected: Bool): Bool {
return assertTrue_1(!(expected));
    }


    // assertTrue(boolean)[59]
    public function assertTrue_1(expected: Bool): Bool {
var result: Bool = expected;
if (result) {
Sys.print(".");
}
else {
Sys.print("X");
Sys.println("");
Sys.println((("expected=") + (expected)));
Sys.println("");
}

return result;
    }


    // allTests()[73]
    abstract public function allTests_0(): Void;


    // doAllTests()[75]
    public function doAllTests_0(): Void {
Sys.print(((name) + (" [")));
allTests_0();
Sys.println("]");
    }

}
