// THIS FILE HAS BEEN GENERATED.

package review.util;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.util.ArrayList;
import jztest.Test;
import zava.util.JZList;




class ListTest extends Test {



    // review.util.ListTest()
    public function new() {
super("ListTest");
    }




    // allTests()[15]
    public function allTests_0(): Void {
test01_0();
    }


    // test01()[19]
    public function test01_0(): Void {
var list: JZList<String> = new ArrayList<String>();
assertIntegerEquals_2(0, list.size());
    }

}
