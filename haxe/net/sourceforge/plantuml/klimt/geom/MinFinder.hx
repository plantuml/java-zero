// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.util.Objects;




class MinFinder {
    public var minX: Float = zava.lang.Double.MAX_VALUE;
    public var minY: Float = zava.lang.Double.MAX_VALUE;



    // net.sourceforge.plantuml.klimt.geom.MinFinder()
    public function new() {
    }




    // manage(double,double)[11]
    public function manage_2(x: Float, y: Float): Void {
if (((x) < (minX))) {
minX = x;
}

if (((y) < (minY))) {
minY = y;
}

    }


    // manage(net.sourceforge.plantuml.klimt.geom.XPoint2D)[20]
    public function manage_1(p: XPoint2D): Void {
Objects.requireNonNull(p);
manage_2(p.getX_0(), p.getY_0());
    }


    // manage(net.sourceforge.plantuml.klimt.geom.MinFinder)[25]
    public function manage_1(other: MinFinder): Void {
manage_2(other.minX, other.minY);
    }


    // toString()[30]
    public function toString_0(): String {
return (((((("minX=") + (minX))) + (" minY="))) + (minY));
    }


    // getMinX()[34]
    public function getMinX_0(): Float {
return minX;
    }


    // getMinY()[38]
    public function getMinY_0(): Float {
return minY;
    }

}
