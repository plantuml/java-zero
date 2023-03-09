// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.color;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;

class ColorType extends JZEnum {
public static final TEXT = new ColorType("TEXT");
public static final LINE = new ColorType("LINE");
public static final BACK = new ColorType("BACK");
public static final HEADER = new ColorType("HEADER");
public static final ARROW = new ColorType("ARROW");



    // getType(java.lang.String)[7]
    public static function getType_1(s: String): ColorType {
var x: Int = s.indexOf('.');
if (((x) != (-(1)))) {
s = s.substring(0, x);
}

var key: ColorType = ColorType.valueOf_1(s.toUpperCase());
return key;
    }

}
