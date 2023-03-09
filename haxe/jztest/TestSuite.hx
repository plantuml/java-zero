// THIS FILE HAS BEEN GENERATED.

package jztest;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.util.ArrayList;




class TestSuite {
    public var name: String;
    public var tests: ArrayList<Test> = new ArrayList<Test>();



    // jztest.TestSuite(java.lang.String)
    public function new(name: String) {
this.name = name;
    }




    // addTest(jztest.Test)[14]
    public function addTest_1(test: Test): Void {
this.tests.add(test);
    }


    // doAllTests()[18]
    public function doAllTests_0(): Void {
{
var _list_TestSuite_java_19 = tests;
for (_i_TestSuite_java_19 in 0..._list_TestSuite_java_19.size()) {
var test: Test = _list_TestSuite_java_19.get(_i_TestSuite_java_19);
{
test.doAllTests_0();
}
}
}

    }

}
