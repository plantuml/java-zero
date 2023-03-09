// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class LineBreakStrategy {
    public static var NONE: LineBreakStrategy = new LineBreakStrategy(null);
    public var value: String;



    // net.sourceforge.plantuml.klimt.LineBreakStrategy(java.lang.String)
    public function new(value: String) {
this.value = value;
    }




    // toString()[15]
    public function toString_0(): String {
return value;
    }


    // isAuto()[19]
    public function isAuto_0(): Bool {
return "auto".equalsIgnoreCase(value);
    }


    // getMaxWidth()[23]
    public function getMaxWidth_0(): Float {
if (((((value) != (null))) && (this.value.matches("-?\\d+")))) {
return Double.parseDouble(value);
}

return 0;
    }

}
