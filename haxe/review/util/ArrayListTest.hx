// THIS FILE HAS BEEN GENERATED.

package review.util;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import zava.util.ArrayList;




class ArrayListTest extends Test {



    // review.util.ArrayListTest()
    public function new() {
super("ArrayListTest");
    }




    // allTests()[14]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
    }


    // test01()[20]
    public function test01_0(): Void {
var list: ArrayList<String> = new ArrayList<String>();
assertIntegerEquals_2(0, list.size());
    }


    // test02()[25]
    public function test02_0(): Void {
var list: ArrayList<String> = new ArrayList<String>();
list.add("foo0");
assertIntegerEquals_2(1, list.size());
    }


    // test03()[31]
    public function test03_0(): Void {
var list: ArrayList<String> = new ArrayList<String>();
list.add("foo0");
assertIntegerEquals_2(1, list.size());
var s0: String = list.get(0);
assertStringEquals_2("foo0", s0);
    }

}
