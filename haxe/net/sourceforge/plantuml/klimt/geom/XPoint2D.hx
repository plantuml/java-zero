// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class XPoint2D {
    public var x: Float;
    public var y: Float;



    // net.sourceforge.plantuml.klimt.geom.XPoint2D(double,double)
    public function new(x: Float, y: Float) {
this.x = x;
this.y = y;
    }




    // toString()[13]
    public function toString_0(): String {
return (((((((("(") + (x))) + (","))) + (y))) + (")"));
    }


    // getX()[23]
    public function getX_0(): Float {
return x;
    }


    // getY()[27]
    public function getY_0(): Float {
return y;
    }


    // distance(net.sourceforge.plantuml.klimt.geom.XPoint2D)[31]
    public function distance_1(other: XPoint2D): Float {
var px: Float = ((other.getX_0()) - (getX_0()));
var py: Float = ((other.getY_0()) - (getY_0()));
return Math.sqrt(((((px) * (px))) + (((py) * (py)))));
    }


    // distanceSq(net.sourceforge.plantuml.klimt.geom.XPoint2D)[37]
    public function distanceSq_1(other: XPoint2D): Float {
var px: Float = ((other.getX_0()) - (getX_0()));
var py: Float = ((other.getY_0()) - (getY_0()));
return ((((px) * (px))) + (((py) * (py))));
    }


    // distance(double,double,double,double)[43]
    public static function distance_4(x1: Float, y1: Float, x2: Float, y2: Float): Float {
x1 -= x2;
y1 -= y2;
return Math.sqrt(((((x1) * (x1))) + (((y1) * (y1)))));
    }


    // distance(double,double)[49]
    public function distance_2(px: Float, py: Float): Float {
px -= getX_0();
py -= getY_0();
return Math.sqrt(((((px) * (px))) + (((py) * (py)))));
    }


    // move(double,double)[55]
    public function move_2(dx: Float, dy: Float): XPoint2D {
return new XPoint2D(((x) + (dx)), ((y) + (dy)));
    }


    // move(net.sourceforge.plantuml.klimt.geom.XPoint2D)[59]
    public function move_1(delta: XPoint2D): XPoint2D {
return new XPoint2D(((x) + (delta.x)), ((y) + (delta.y)));
    }

}
