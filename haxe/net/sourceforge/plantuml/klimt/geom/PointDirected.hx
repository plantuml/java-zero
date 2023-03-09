// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class PointDirected {
    public var x: Float;
    public var y: Float;
    public var angle: Float;



    // net.sourceforge.plantuml.klimt.geom.PointDirected(net.sourceforge.plantuml.klimt.geom.XPoint2D,double)
    public function new(p: XPoint2D, angle: Float) {
this.x = p.getX_0();
this.y = p.getY_0();
this.angle = angle;
    }




    // getPoint2D()[16]
    public function getPoint2D_0(): XPoint2D {
return new XPoint2D(x, y);
    }


    // getAngle()[20]
    public function getAngle_0(): Float {
return angle;
    }

}
