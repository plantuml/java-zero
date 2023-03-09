// THIS FILE HAS BEEN GENERATED.

package review.net.sourceforge.plantuml.url;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import jztest.Test;
import net.sourceforge.plantuml.url.Url;




class UrlTest extends Test {



    // review.net.sourceforge.plantuml.url.UrlTest()
    public function new() {
super("UrlTest");
    }




    // allTests()[13]
    public function allTests_0(): Void {
test01_0();
    }


    // test01()[17]
    public function test01_0(): Void {
var url: Url = new Url("https://plantuml.com", "tooltip", null);
assertStringEquals_2("https://plantuml.com", url.getUrl_0());
    }

}
