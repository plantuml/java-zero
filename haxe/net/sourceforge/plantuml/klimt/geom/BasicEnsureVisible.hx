// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class BasicEnsureVisible implements EnsureVisible {
    public var minX: Float = zava.lang.Double.MAX_VALUE;
    public var maxX: Float = -(zava.lang.Double.MAX_VALUE);
    public var minY: Float = zava.lang.Double.MAX_VALUE;
    public var maxY: Float = -(zava.lang.Double.MAX_VALUE);



    // net.sourceforge.plantuml.klimt.geom.BasicEnsureVisible()
    public function new() {
    }




    // ensureVisible(double,double)[11]
    public function ensureVisible_2(x: Float, y: Float): Void {
if (((x) > (maxX))) {
maxX = x;
}

if (((x) < (minX))) {
minX = x;
}

if (((y) > (maxY))) {
maxY = y;
}

if (((y) < (minY))) {
minY = y;
}

    }


    // hasData()[26]
    public function hasData_0(): Bool {
return ((minX) != (zava.lang.Double.MAX_VALUE));
    }


    // getCoords(double)[30]
    public function getCoords_1(scale: Float): String {
if (((minX) == (zava.lang.Double.MAX_VALUE))) {
return "0,0,0,0";
}

var x1: Int = Std.int(((minX) * (scale)));
var y1: Int = Std.int(((minY) * (scale)));
var x2: Int = Std.int(((maxX) * (scale)));
var y2: Int = Std.int(((maxY) * (scale)));
return (((((((((((((("") + (x1))) + (","))) + (y1))) + (","))) + (x2))) + (","))) + (y2));
    }


    // getSurface()[41]
    public function getSurface_0(): Float {
if (((minX) == (zava.lang.Double.MAX_VALUE))) {
return 0;
}

return ((((maxX) - (minX))) * (((maxY) - (minY))));
    }

}
