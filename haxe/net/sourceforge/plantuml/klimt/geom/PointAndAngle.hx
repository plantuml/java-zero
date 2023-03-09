// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class PointAndAngle {
    public var pt: XPoint2D;
    public var angle: Float;



    // net.sourceforge.plantuml.klimt.geom.PointAndAngle(net.sourceforge.plantuml.klimt.geom.XPoint2D,double)
    public function new(pt: XPoint2D, angle: Float) {
this.pt = pt;
this.angle = angle;
    }




    // getPt()[14]
    public function getPt_0(): XPoint2D {
return pt;
    }


    // getAngle()[18]
    public function getAngle_0(): Float {
return angle;
    }


    // getX()[22]
    public function getX_0(): Float {
return this.pt.getX_0();
    }


    // getY()[26]
    public function getY_0(): Float {
return this.pt.getY_0();
    }

}
