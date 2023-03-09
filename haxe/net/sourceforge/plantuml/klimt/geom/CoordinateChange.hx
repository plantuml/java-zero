// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class CoordinateChange {
    public var x1: Float;
    public var y1: Float;
    public var x2: Float;
    public var y2: Float;
    public var vect_u_x: Float;
    public var vect_u_y: Float;
    public var vect_v_x: Float;
    public var vect_v_y: Float;
    public var len: Float;



    // net.sourceforge.plantuml.klimt.geom.CoordinateChange(double,double,double,double)
    public function new(x1: Float, y1: Float, x2: Float, y2: Float) {
this.x1 = x1;
this.y1 = y1;
this.x2 = x2;
this.y2 = y2;
this.len = XPoint2D.distance_4(x1, y1, x2, y2);
if (((this.len) == (0))) {
throw new Exception('NOT IMPLEMENTED');
}

this.vect_u_x = ((((x2) - (x1))) / (len));
this.vect_u_y = ((((y2) - (y1))) / (len));
this.vect_v_x = -(this.vect_u_y);
this.vect_v_y = this.vect_u_x;
    }




    // create(net.sourceforge.plantuml.klimt.geom.XPoint2D,net.sourceforge.plantuml.klimt.geom.XPoint2D)[17]
    public static function create_2(p1: XPoint2D, p2: XPoint2D): CoordinateChange {
return new CoordinateChange(p1.getX_0(), p1.getY_0(), p2.getX_0(), p2.getY_0());
    }


    // getTrueCoordinate(double,double)[39]
    public function getTrueCoordinate_2(a: Float, b: Float): XPoint2D {
var x: Float = ((((a) * (vect_u_x))) + (((b) * (vect_v_x))));
var y: Float = ((((a) * (vect_u_y))) + (((b) * (vect_v_y))));
return new XPoint2D(((x1) + (x)), ((y1) + (y)));
    }


    // getLength()[45]
    public function getLength_0(): Float {
return len;
    }

}
