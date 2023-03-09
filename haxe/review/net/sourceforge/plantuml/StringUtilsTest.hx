// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.StringUtils;
import jztest.Test;




class StringUtilsTest extends Test {



    // review.net.sourceforge.plantuml.StringUtilsTest()
    public function new() {
super("StringUtilsTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
test04_0();
    }


    // test01()[20]
    public function test01_0(): Void {
var s: String = StringUtils.goUpperCase_1("abC");
assertStringEquals_2("ABC", s);
    }


    // test02()[25]
    public function test02_0(): Void {
assertStringEquals_2("abc", StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote_1("abc"));
assertStringEquals_2("abc", StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote_1("(abc)"));
assertStringEquals_2("abc", StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote_1("\"abc\""));
assertStringEquals_2("abc", StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote_1(":abc:"));
    }


    // test03()[32]
    public function test03_0(): Void {
var s: String = StringUtils.sharp000000_1(123456);
assertStringEquals_2("#01E240", s);
    }


    // test04()[37]
    public function test04_0(): Void {
var s: String = StringUtils.goLowerCase_1("AbC");
assertStringEquals_2("abc", s);
    }

}
