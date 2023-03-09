// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.klimt;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.klimt.geom.BasicEnsureVisible;




class BasicEnsureVisibleTest extends Test {



    // review.net.sourceforge.plantuml.klimt.BasicEnsureVisibleTest()
    public function new() {
super("BasicEnsureVisibleTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
test02_0();
test03_0();
    }


    // test01()[19]
    public function test01_0(): Void {
var cut: BasicEnsureVisible = new BasicEnsureVisible();
assertFalse_1(cut.hasData_0());
assertStringEquals_2("0,0,0,0", cut.getCoords_1(10));
assertDoubleEquals_2(0, cut.getSurface_0());
    }


    // test02()[26]
    public function test02_0(): Void {
var cut: BasicEnsureVisible = new BasicEnsureVisible();
cut.ensureVisible_2(1, 2);
assertTrue_1(cut.hasData_0());
assertStringEquals_2("10,20,10,20", cut.getCoords_1(10));
assertDoubleEquals_2(0, cut.getSurface_0());
    }


    // test03()[34]
    public function test03_0(): Void {
var cut: BasicEnsureVisible = new BasicEnsureVisible();
cut.ensureVisible_2(1, 2);
cut.ensureVisible_2(4, 5);
assertTrue_1(cut.hasData_0());
assertStringEquals_2("10,20,40,50", cut.getCoords_1(10));
assertDoubleEquals_2(9, cut.getSurface_0());
    }

}
