// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class MinMaxMutable {
    public var maxX: Float;
    public var maxY: Float;
    public var minX: Float;
    public var minY: Float;



    // net.sourceforge.plantuml.klimt.geom.MinMaxMutable(double,double,double,double)
    public function new(minX: Float, minY: Float, maxX: Float, maxY: Float) {
if (Double.isNaN(minX)) {
throw new Exception('NOT IMPLEMENTED');
}

if (Double.isNaN(maxX)) {
throw new Exception('NOT IMPLEMENTED');
}

if (Double.isNaN(minY)) {
throw new Exception('NOT IMPLEMENTED');
}

if (Double.isNaN(maxY)) {
throw new Exception('NOT IMPLEMENTED');
}

this.minX = minX;
this.minY = minY;
this.maxX = maxX;
this.maxY = maxY;
    }




    // getEmpty(boolean)[11]
    public static function getEmpty_1(initToZero: Bool): MinMaxMutable {
if (initToZero) {
return new MinMaxMutable(0, 0, 0, 0);
}

return new MinMaxMutable(zava.lang.Double.MAX_VALUE, zava.lang.Double.MAX_VALUE, -(zava.lang.Double.MAX_VALUE), -(zava.lang.Double.MAX_VALUE));
    }


    // isInfinity()[18]
    public function isInfinity_0(): Bool {
return ((minX) == (zava.lang.Double.MAX_VALUE));
    }


    // toString()[23]
    public function toString_0(): String {
return (((((((((((((("X=") + (minX))) + (" to "))) + (maxX))) + (" and Y="))) + (minY))) + (" to "))) + (maxY));
    }


    // addPoint(double,double)[46]
    public function addPoint_2(x: Float, y: Float): Void {
if (Double.isNaN(x)) {
throw new Exception('NOT IMPLEMENTED');
}

if (Double.isNaN(y)) {
throw new Exception('NOT IMPLEMENTED');
}

this.maxX = Math.max(x, maxX);
this.maxY = Math.max(y, maxY);
this.minX = Math.min(x, minX);
this.minY = Math.min(y, minY);
    }


    // fromMax(double,double)[59]
    public static function fromMax_2(maxX: Float, maxY: Float): MinMaxMutable {
if (Double.isNaN(maxX)) {
throw new Exception('NOT IMPLEMENTED');
}

if (Double.isNaN(maxY)) {
throw new Exception('NOT IMPLEMENTED');
}

var result: MinMaxMutable = MinMaxMutable.getEmpty_1(true);
result.addPoint_2(maxX, maxY);
return result;
    }


    // getMaxX()[71]
    public function getMaxX_0(): Float {
return maxX;
    }


    // getMaxY()[75]
    public function getMaxY_0(): Float {
return maxY;
    }


    // getMinX()[79]
    public function getMinX_0(): Float {
return minX;
    }


    // getMinY()[83]
    public function getMinY_0(): Float {
return minY;
    }


    // getDimension()[87]
    public function getDimension_0(): XDimension2D {
return new XDimension2D(((maxX) - (minX)), ((maxY) - (minY)));
    }


    // reset()[91]
    public function reset_0(): Void {
this.maxX = 0;
this.maxY = 0;
this.minX = 0;
this.minY = 0;
    }

}
