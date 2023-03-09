// THIS FILE HAS BEEN GENERATED.

package review.util;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.util.HashMap;
import jztest.Test;
import zava.util.JZMap;




class HashMapTest extends Test {



    // review.util.HashMapTest()
    public function new() {
super("HashMapTest");
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
var cut: JZMap<String,String> = new HashMap<String,String>();
assertIntegerEquals_2(0, cut.size());
    }


    // test02()[27]
    public function test02_0(): Void {
var cut: JZMap<String,String> = new HashMap<String,String>();
cut.put("key0", "value0");
assertIntegerEquals_2(1, cut.size());
    }


    // test03()[33]
    public function test03_0(): Void {
var cut: JZMap<String,String> = new HashMap<String,String>();
cut.put("key0", "value0");
cut.put("key0", "value00");
assertIntegerEquals_2(1, cut.size());
    }


    // test04()[40]
    public function test04_0(): Void {
var cut: JZMap<String,String> = new HashMap<String,String>();
cut.put("key0", "value0");
cut.put("key1", "value1");
assertIntegerEquals_2(2, cut.size());
    }

}
