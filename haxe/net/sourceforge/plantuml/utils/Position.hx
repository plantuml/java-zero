// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.utils;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.util.Objects;
import net.sourceforge.plantuml.klimt.geom.Rankdir;

class Position extends JZEnum {
public static final RIGHT = new Position("RIGHT");
public static final LEFT = new Position("LEFT");
public static final BOTTOM = new Position("BOTTOM");
public static final TOP = new Position("TOP");



    // fromString(java.lang.String)[11]
    public static function fromString_1(s: String): Position {
return Position.valueOf_1(s.toUpperCase());
    }


    // withRankdir(net.sourceforge.plantuml.klimt.geom.Rankdir)[15]
    public function withRankdir_1(rankdir: Rankdir): Position {
if (((Objects.requireNonNull(rankdir)) == (net.sourceforge.plantuml.klimt.geom.Rankdir.TOP_TO_BOTTOM))) {
return this;
}

if (((this) == (net.sourceforge.plantuml.utils.Position.RIGHT))) {
return net.sourceforge.plantuml.utils.Position.BOTTOM;
}

if (((this) == (net.sourceforge.plantuml.utils.Position.LEFT))) {
return net.sourceforge.plantuml.utils.Position.TOP;
}

if (((this) == (net.sourceforge.plantuml.utils.Position.BOTTOM))) {
return net.sourceforge.plantuml.utils.Position.RIGHT;
}

if (((this) == (net.sourceforge.plantuml.utils.Position.TOP))) {
return net.sourceforge.plantuml.utils.Position.LEFT;
}

throw new Exception('NOT IMPLEMENTED');
    }


    // reverseDirection()[35]
    public function reverseDirection_0(): Direction {
if (((this) == (net.sourceforge.plantuml.utils.Position.LEFT))) {
return net.sourceforge.plantuml.utils.Direction.RIGHT;
}

if (((this) == (net.sourceforge.plantuml.utils.Position.RIGHT))) {
return net.sourceforge.plantuml.utils.Direction.LEFT;
}

throw new Exception('NOT IMPLEMENTED');
    }

}
