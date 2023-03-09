// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.UTranslate;




class MinMax {
    public var maxX: Float;
    public var maxY: Float;
    public var minX: Float;
    public var minY: Float;



    // net.sourceforge.plantuml.klimt.geom.MinMax(double,double,double,double)
    public function new(minX: Float, minY: Float, maxX: Float, maxY: Float) {
this.minX = minX;
this.minY = minY;
this.maxX = maxX;
this.maxY = maxY;
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

    }




    // doesHorizontalCross(net.sourceforge.plantuml.klimt.geom.XPoint2D,net.sourceforge.plantuml.klimt.geom.XPoint2D)[16]
    public function doesHorizontalCross_2(pt1: XPoint2D, pt2: XPoint2D): Bool {
if (((pt1.getY_0()) != (pt2.getY_0()))) {
throw new Exception('NOT IMPLEMENTED');
}

if (((pt1.getX_0()) == (pt2.getX_0()))) {
throw new Exception('NOT IMPLEMENTED');
}

var y: Float = pt1.getY_0();
if (((((y) < (minY))) || (((y) > (maxY))))) {
return false;
}

if (((((pt1.getX_0()) < (minX))) && (((pt2.getX_0()) > (maxX))))) {
return true;
}

if (((((pt2.getX_0()) < (minX))) && (((pt1.getX_0()) > (maxX))))) {
return true;
}

return false;
    }


    // getEmpty(boolean)[36]
    public static function getEmpty_1(initToZero: Bool): MinMax {
if (initToZero) {
return new MinMax(0, 0, 0, 0);
}

return new MinMax(zava.lang.Double.MAX_VALUE, zava.lang.Double.MAX_VALUE, -(zava.lang.Double.MAX_VALUE), -(zava.lang.Double.MAX_VALUE));
    }


    // toString()[44]
    public function toString_0(): String {
return (((((((((((((((("(") + (minX))) + (","))) + (minY))) + (")->("))) + (maxX))) + (","))) + (maxY))) + (")"));
    }


    // fromMutable(net.sourceforge.plantuml.klimt.geom.MinMaxMutable)[48]
    public static function fromMutable_1(minmax: MinMaxMutable): MinMax {
return new MinMax(minmax.getMinX_0(), minmax.getMinY_0(), minmax.getMaxX_0(), minmax.getMaxY_0());
    }


    // addPoint(net.sourceforge.plantuml.klimt.geom.XPoint2D)[71]
    public function addPoint_1(pt: XPoint2D): MinMax {
return addPoint_2(pt.getX_0(), pt.getY_0());
    }


    // addPoint(double,double)[75]
    public function addPoint_2(x: Float, y: Float): MinMax {
return new MinMax(Math.min(x, minX), Math.min(y, minY), Math.max(x, maxX), Math.max(y, maxY));
    }


    // addMinMax(net.sourceforge.plantuml.klimt.geom.MinMax)[79]
    public function addMinMax_1(other: MinMax): MinMax {
return new MinMax(Math.min(other.minX, minX), Math.min(other.minY, minY), Math.max(other.maxX, maxX), Math.max(other.maxY, maxY));
    }


    // fromMax(double,double)[84]
    public static function fromMax_2(maxX: Float, maxY: Float): MinMax {
return MinMax.getEmpty_1(true).addPoint_2(maxX, maxY);
    }


    // fromDim(net.sourceforge.plantuml.klimt.geom.XDimension2D)[88]
    public static function fromDim_1(dim: XDimension2D): MinMax {
return MinMax.fromMax_2(dim.getWidth_0(), dim.getHeight_0());
    }


    // getMaxX()[92]
    public function getMaxX_0(): Float {
return maxX;
    }


    // getMaxY()[96]
    public function getMaxY_0(): Float {
return maxY;
    }


    // getMinX()[100]
    public function getMinX_0(): Float {
return minX;
    }


    // getMinY()[104]
    public function getMinY_0(): Float {
return minY;
    }


    // getHeight()[108]
    public function getHeight_0(): Float {
return ((maxY) - (minY));
    }


    // getWidth()[112]
    public function getWidth_0(): Float {
return ((maxX) - (minX));
    }


    // getDimension()[116]
    public function getDimension_0(): XDimension2D {
return new XDimension2D(((maxX) - (minX)), ((maxY) - (minY)));
    }


    // translate(net.sourceforge.plantuml.klimt.UTranslate)[121]
    public function translate_1(translate: UTranslate): MinMax {
var dx: Float = translate.getDx_0();
var dy: Float = translate.getDy_0();
return new MinMax(((minX) + (dx)), ((minY) + (dy)), ((maxX) + (dx)), ((maxY) + (dy)));
    }

}
