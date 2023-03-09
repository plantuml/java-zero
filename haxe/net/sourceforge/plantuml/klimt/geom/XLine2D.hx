// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.shape.UDrawable;




class XLine2D implements UDrawable {
    public var x1: Float;
    public var y1: Float;
    public var x2: Float;
    public var y2: Float;



    // net.sourceforge.plantuml.klimt.geom.XLine2D(double,double,double,double)
    public function new(x1: Float, y1: Float, x2: Float, y2: Float) {
this.x1 = x1;
this.y1 = y1;
this.x2 = x2;
this.y2 = y2;
    }




    // line(net.sourceforge.plantuml.klimt.geom.XPoint2D,net.sourceforge.plantuml.klimt.geom.XPoint2D)[23]
    public static function line_2(p1: XPoint2D, p2: XPoint2D): XLine2D {
return new XLine2D(p1.getX_0(), p1.getY_0(), p2.getX_0(), p2.getY_0());
    }


    // getMiddle()[27]
    public function getMiddle_0(): XPoint2D {
var mx: Float = ((((this.x1) + (this.x2))) / (2));
var my: Float = ((((this.y1) + (this.y2))) / (2));
return new XPoint2D(mx, my);
    }


    // getX1()[33]
    public function getX1_0(): Float {
return x1;
    }


    // getY1()[37]
    public function getY1_0(): Float {
return y1;
    }


    // getX2()[41]
    public function getX2_0(): Float {
return x2;
    }


    // getY2()[45]
    public function getY2_0(): Float {
return y2;
    }


    // getP1()[49]
    public function getP1_0(): XPoint2D {
return new XPoint2D(x1, y1);
    }


    // getP2()[53]
    public function getP2_0(): XPoint2D {
return new XPoint2D(x2, y2);
    }


    // withPoint1(net.sourceforge.plantuml.klimt.geom.XPoint2D)[57]
    public function withPoint1_1(other: XPoint2D): XLine2D {
return new XLine2D(other.x, other.y, x2, y2);
    }


    // withPoint2(net.sourceforge.plantuml.klimt.geom.XPoint2D)[61]
    public function withPoint2_1(other: XPoint2D): XLine2D {
return new XLine2D(x1, y1, other.x, other.y);
    }


    // ptSegDistSq(double,double,double,double,double,double)[84]
    public static function ptSegDistSq_6(x1: Float, y1: Float, x2: Float, y2: Float, px: Float, py: Float): Float {
x2 -= x1;
y2 -= y1;
px -= x1;
py -= y1;
var dotprod: Float = ((((px) * (x2))) + (((py) * (y2))));
var projlenSq: Float;
if (((dotprod) <= (0.0))) {
projlenSq = 0.0;
}
else {
px = ((x2) - (px));
py = ((y2) - (py));
dotprod = ((((px) * (x2))) + (((py) * (y2))));
if (((dotprod) <= (0.0))) {
projlenSq = 0.0;
}
else {
projlenSq = ((((dotprod) * (dotprod))) / (((((x2) * (x2))) + (((y2) * (y2))))));
}

}

var lenSq: Float = ((((((px) * (px))) + (((py) * (py))))) - (projlenSq));
if (((lenSq) < (0))) {
lenSq = 0;
}

return lenSq;
    }


    // intersect(net.sourceforge.plantuml.klimt.geom.XLine2D)[132]
    public function intersect_1(line2: XLine2D): XPoint2D {
var s1x: Float = ((this.x2) - (this.x1));
var s1y: Float = ((this.y2) - (this.y1));
var s2x: Float = ((line2.x2) - (line2.x1));
var s2y: Float = ((line2.y2) - (line2.y1));
var s: Float = ((((((-(s1y)) * (((this.x1) - (line2.x1))))) + (((s1x) * (((this.y1) - (line2.y1))))))) / (((((-(s2x)) * (s1y))) + (((s1x) * (s2y))))));
var t: Float = ((((((s2x) * (((this.y1) - (line2.y1))))) - (((s2y) * (((this.x1) - (line2.x1))))))) / (((((-(s2x)) * (s1y))) + (((s1x) * (s2y))))));
if (((((((((s) >= (0))) && (((s) <= (1))))) && (((t) >= (0))))) && (((t) <= (1))))) {
return new XPoint2D(((this.x1) + (((t) * (s1x)))), ((this.y1) + (((t) * (s1y)))));
}

return null;
    }


    // getAngle()[150]
    public function getAngle_0(): Float {
return Math.atan2(((y2) - (y1)), ((x2) - (x1)));
    }

}
