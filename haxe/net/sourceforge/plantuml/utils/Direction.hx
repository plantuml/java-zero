// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.utils;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.geom.XPoint2D;

class Direction extends JZEnum {
public static final RIGHT = new Direction("RIGHT");
public static final LEFT = new Direction("LEFT");
public static final DOWN = new Direction("DOWN");
public static final UP = new Direction("UP");



    // getInv()[9]
    public function getInv_0(): Direction {
if (((this) == (net.sourceforge.plantuml.utils.Direction.RIGHT))) {
return net.sourceforge.plantuml.utils.Direction.LEFT;
}

if (((this) == (net.sourceforge.plantuml.utils.Direction.LEFT))) {
return net.sourceforge.plantuml.utils.Direction.RIGHT;
}

if (((this) == (net.sourceforge.plantuml.utils.Direction.DOWN))) {
return net.sourceforge.plantuml.utils.Direction.UP;
}

if (((this) == (net.sourceforge.plantuml.utils.Direction.UP))) {
return net.sourceforge.plantuml.utils.Direction.DOWN;
}

throw new Exception('NOT IMPLEMENTED');
    }


    // getShortCode()[25]
    public function getShortCode_0(): String {
return name().substring(0, 1);
    }


    // fromChar(char)[29]
    public static function fromChar_1(c: String): Direction {
if (((c) == ('<'))) {
return net.sourceforge.plantuml.utils.Direction.LEFT;
}

if (((c) == ('>'))) {
return net.sourceforge.plantuml.utils.Direction.RIGHT;
}

if (((c) == ('^'))) {
return net.sourceforge.plantuml.utils.Direction.UP;
}

return net.sourceforge.plantuml.utils.Direction.DOWN;
    }


    // clockwise()[42]
    public function clockwise_0(): Direction {
if (((this) == (net.sourceforge.plantuml.utils.Direction.RIGHT))) {
return net.sourceforge.plantuml.utils.Direction.DOWN;
}

if (((this) == (net.sourceforge.plantuml.utils.Direction.LEFT))) {
return net.sourceforge.plantuml.utils.Direction.UP;
}

if (((this) == (net.sourceforge.plantuml.utils.Direction.DOWN))) {
return net.sourceforge.plantuml.utils.Direction.LEFT;
}

if (((this) == (net.sourceforge.plantuml.utils.Direction.UP))) {
return net.sourceforge.plantuml.utils.Direction.RIGHT;
}

throw new Exception('NOT IMPLEMENTED');
    }


    // leftOrRight(net.sourceforge.plantuml.klimt.geom.XPoint2D,net.sourceforge.plantuml.klimt.geom.XPoint2D)[58]
    public static function leftOrRight_2(p1: XPoint2D, p2: XPoint2D): Direction {
if (((p1.getX_0()) < (p2.getX_0()))) {
return net.sourceforge.plantuml.utils.Direction.LEFT;
}

if (((p1.getX_0()) > (p2.getX_0()))) {
return net.sourceforge.plantuml.utils.Direction.RIGHT;
}

throw new Exception('NOT IMPLEMENTED');
    }


    // fromVector(net.sourceforge.plantuml.klimt.geom.XPoint2D,net.sourceforge.plantuml.klimt.geom.XPoint2D)[68]
    public static function fromVector_2(p1: XPoint2D, p2: XPoint2D): Direction {
var x1: Float = p1.getX_0();
var y1: Float = p1.getY_0();
var x2: Float = p2.getX_0();
var y2: Float = p2.getY_0();
if (((((x1) == (x2))) && (((y1) == (y2))))) {
return null;
}

if (((x1) == (x2))) {
if (((y2) > (y1))) {
return net.sourceforge.plantuml.utils.Direction.DOWN;
}

return net.sourceforge.plantuml.utils.Direction.UP;
}

if (((y1) == (y2))) {
if (((x2) > (x1))) {
return net.sourceforge.plantuml.utils.Direction.RIGHT;
}

return net.sourceforge.plantuml.utils.Direction.LEFT;
}

throw new Exception('NOT IMPLEMENTED');
    }


    // lazzyValueOf(java.lang.String)[92]
    public static function lazzyValueOf_1(s: String): Direction {
s = s.toUpperCase();
if ("TOP".equals(s)) {
return net.sourceforge.plantuml.utils.Direction.UP;
}

if ("BOTTOM".equals(s)) {
return net.sourceforge.plantuml.utils.Direction.DOWN;
}

return Direction.valueOf_1(s);
    }

}
