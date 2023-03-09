// THIS FILE HAS BEEN GENERATED.

package review.util;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.util.TreeSet;
import jztest.Test;
import zava.util.Set;




class TreeSetTest extends Test {



    // review.util.TreeSetTest()
    public function new() {
super("TreeSetTest");
    }




    // allTests()[15]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
test04_0();
    }


    // test01()[22]
    public function test01_0(): Void {
var cut: Set<String> = new TreeSet<String>();
assertIntegerEquals_2(0, cut.size());
    }


    // test02()[27]
    public function test02_0(): Void {
var cut: Set<String> = new TreeSet<String>();
assertTrue_1(cut.add("a"));
assertIntegerEquals_2(1, cut.size());
    }


    // test03()[33]
    public function test03_0(): Void {
var cut: Set<String> = new TreeSet<String>();
assertTrue_1(cut.add("a"));
assertFalse_1(cut.add("a"));
assertIntegerEquals_2(1, cut.size());
    }


    // test04()[40]
    public function test04_0(): Void {
var cut: Set<String> = new TreeSet<String>();
assertTrue_1(cut.add("a"));
assertTrue_1(cut.add("b"));
assertIntegerEquals_2(2, cut.size());
    }

}
