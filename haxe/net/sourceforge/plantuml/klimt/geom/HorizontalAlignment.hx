// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.util.Objects;
import net.sourceforge.plantuml.StringUtils;

class HorizontalAlignment extends JZEnum {
public static final LEFT = new HorizontalAlignment("LEFT");
public static final CENTER = new HorizontalAlignment("CENTER");
public static final RIGHT = new HorizontalAlignment("RIGHT");



    // fromString(java.lang.String)[14]
    public static function fromString_1(s: String): HorizontalAlignment {
if (7774.LEFT.name().equalsIgnoreCase(s)) {
return net.sourceforge.plantuml.klimt.geom.HorizontalAlignment.LEFT;
}

if (7774.CENTER.name().equalsIgnoreCase(s)) {
return net.sourceforge.plantuml.klimt.geom.HorizontalAlignment.CENTER;
}

if (7774.RIGHT.name().equalsIgnoreCase(s)) {
return net.sourceforge.plantuml.klimt.geom.HorizontalAlignment.RIGHT;
}

return null;
    }


    // fromString(java.lang.String,net.sourceforge.plantuml.klimt.geom.HorizontalAlignment)[27]
    public static function fromString_2(s: String, defaultValue: HorizontalAlignment): HorizontalAlignment {
Objects.requireNonNull(defaultValue);
if (((s) == (null))) {
return defaultValue;
}

s = StringUtils.goUpperCase_1(s);
var result: HorizontalAlignment = HorizontalAlignment.fromString_1(s);
if (((result) == (null))) {
return defaultValue;
}

return result;
    }

}
