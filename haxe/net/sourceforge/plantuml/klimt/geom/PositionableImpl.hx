// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class PositionableImpl implements Positionable {
    public var pos: XPoint2D;
    public var dim: XDimension2D;



    // net.sourceforge.plantuml.klimt.geom.PositionableImpl(double,double,net.sourceforge.plantuml.klimt.geom.XDimension2D)
    public function new(x: Float, y: Float, dim: XDimension2D) {
this.pos = new XPoint2D(x, y);
this.dim = dim;
    }




    // create(net.sourceforge.plantuml.klimt.geom.XPoint2D,net.sourceforge.plantuml.klimt.geom.XDimension2D)[15]
    public static function create_2(pt: XPoint2D, dim: XDimension2D): PositionableImpl {
return new PositionableImpl(pt.getX_0(), pt.getY_0(), dim);
    }


    // getPosition()[19]
    public function getPosition_0(): XPoint2D {
return pos;
    }


    // getSize()[23]
    public function getSize_0(): XDimension2D {
return dim;
    }


    // moveSvek(double,double)[27]
    public function moveSvek_2(deltaX: Float, deltaY: Float): Void {
this.pos = this.pos.move_2(deltaX, deltaY);
    }

}
