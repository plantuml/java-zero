// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.shape;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.AbstractShadowable;
import net.sourceforge.plantuml.klimt.UShapeSized;
import net.sourceforge.plantuml.klimt.geom.XPoint2D;




class ULine extends AbstractShadowable implements UShapeSized {
    public var dx: Float;
    public var dy: Float;



    // net.sourceforge.plantuml.klimt.shape.ULine(double,double)
    public function new(dx: Float, dy: Float) {
super();
this.dx = dx;
this.dy = dy;
    }




    // create(net.sourceforge.plantuml.klimt.geom.XPoint2D,net.sourceforge.plantuml.klimt.geom.XPoint2D)[15]
    public static function create_2(p1: XPoint2D, p2: XPoint2D): ULine {
return new ULine(((p2.getX_0()) - (p1.getX_0())), ((p2.getY_0()) - (p1.getY_0())));
    }


    // hline(double)[25]
    public static function hline_1(dx: Float): ULine {
return new ULine(dx, 0);
    }


    // vline(double)[29]
    public static function vline_1(dy: Float): ULine {
return new ULine(0, dy);
    }


    // toString()[34]
    public function toString_0(): String {
return (((((("ULine dx=") + (dx))) + (" dy="))) + (dy));
    }


    // getDX()[38]
    public function getDX_0(): Float {
return dx;
    }


    // getDY()[42]
    public function getDY_0(): Float {
return dy;
    }


    // getLength()[46]
    public function getLength_0(): Float {
return Math.sqrt(((((dx) * (dx))) + (((dy) * (dy)))));
    }


    // getWidth()[50]
    public function getWidth_0(): Float {
return dx;
    }


    // getHeight()[54]
    public function getHeight_0(): Float {
return dy;
    }

}
