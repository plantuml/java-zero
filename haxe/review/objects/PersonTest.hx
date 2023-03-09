// THIS FILE HAS BEEN GENERATED.

package review.objects;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;




class PersonTest extends Test {



    // review.objects.PersonTest()
    public function new() {
super("PersonTest");
    }




    // allTests()[12]
    public function allTests_0(): Void {
test01_0();
test02_0();
    }


    // test01()[17]
    public function test01_0(): Void {
var p: PersonImpl = new PersonImpl("Alice");
var name: String = p.getName_0();
assertStringEquals_2("Alice", name);
assertIntegerEquals_2(5, p.getNameLenght_0());
    }


    // test02()[24]
    public function test02_0(): Void {
var p: IPerson = new PersonImpl("Alice");
var name: String = p.getName_0();
assertStringEquals_2("Alice", name);
// assertIntegerEquals(5, p.getNameLenght());
    }

}
