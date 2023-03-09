// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;

class VerticalAlignment extends JZEnum {
public static final TOP = new VerticalAlignment("TOP");
public static final CENTER = new VerticalAlignment("CENTER");
public static final BOTTOM = new VerticalAlignment("BOTTOM");



    // fromString(java.lang.String)[7]
    public static function fromString_1(s: String): VerticalAlignment {
if (7774.TOP.name().equalsIgnoreCase(s)) {
return net.sourceforge.plantuml.klimt.geom.VerticalAlignment.TOP;
}

if (7774.BOTTOM.name().equalsIgnoreCase(s)) {
return net.sourceforge.plantuml.klimt.geom.VerticalAlignment.BOTTOM;
}

return net.sourceforge.plantuml.klimt.geom.VerticalAlignment.BOTTOM;
    }

}
