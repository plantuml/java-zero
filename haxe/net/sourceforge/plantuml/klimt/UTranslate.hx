// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.geom.XPoint2D;
import net.sourceforge.plantuml.klimt.geom.XRectangle2D;




class UTranslate implements UChange {
    public var dx: Float;
    public var dy: Float;



    // net.sourceforge.plantuml.klimt.UTranslate(double,double)
    public function new(dx: Float, dy: Float) {
this.dx = dx;
this.dy = dy;
    }




    // toString()[13]
    public function toString_0(): String {
return (((((("translate dx=") + (dx))) + (" dy="))) + (dy));
    }


    // none()[17]
    public static function none_0(): UTranslate {
return new UTranslate(0, 0);
    }


    // dx(double)[26]
    public static function dx_1(dx: Float): UTranslate {
return new UTranslate(dx, 0);
    }


    // dy(double)[30]
    public static function dy_1(dy: Float): UTranslate {
return new UTranslate(0, dy);
    }


    // point(net.sourceforge.plantuml.klimt.geom.XPoint2D)[34]
    public static function point_1(p: XPoint2D): UTranslate {
return new UTranslate(p.getX_0(), p.getY_0());
    }


    // getDx()[38]
    public function getDx_0(): Float {
return dx;
    }


    // getDy()[42]
    public function getDy_0(): Float {
return dy;
    }


    // isAlmostSame(net.sourceforge.plantuml.klimt.UTranslate)[46]
    public function isAlmostSame_1(other: UTranslate): Bool {
return ((((this.dx) == (other.dx))) || (((this.dy) == (other.dy))));
    }


    // getTranslated(net.sourceforge.plantuml.klimt.geom.XPoint2D)[50]
    public function getTranslated_1(p: XPoint2D): XPoint2D {
if (((p) == (null))) {
return null;
}

return new XPoint2D(((p.getX_0()) + (dx)), ((p.getY_0()) + (dy)));
    }


    // scaled(double)[57]
    public function scaled_1(scale: Float): UTranslate {
return new UTranslate(((dx) * (scale)), ((dy) * (scale)));
    }


    // compose(net.sourceforge.plantuml.klimt.UTranslate)[61]
    public function compose_1(other: UTranslate): UTranslate {
return new UTranslate(((dx) + (other.dx)), ((dy) + (other.dy)));
    }


    // reverse()[65]
    public function reverse_0(): UTranslate {
return new UTranslate(-(dx), -(dy));
    }


    // apply(net.sourceforge.plantuml.klimt.geom.XRectangle2D)[69]
    public function apply_1(rect: XRectangle2D): XRectangle2D {
return new XRectangle2D(((rect.getX_0()) + (dx)), ((rect.getY_0()) + (dy)), rect.getWidth_0(), rect.getHeight_0());
    }


    // multiplyBy(double)[73]
    public function multiplyBy_1(v: Float): UTranslate {
return new UTranslate(((dx) * (v)), ((dy) * (v)));
    }


    // sym()[77]
    public function sym_0(): UTranslate {
return new UTranslate(dy, dx);
    }


    // getPosition()[81]
    public function getPosition_0(): XPoint2D {
return new XPoint2D(dx, dy);
    }

}
