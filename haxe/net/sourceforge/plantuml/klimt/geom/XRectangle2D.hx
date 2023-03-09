// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class XRectangle2D {
    public var x: Float;
    public var y: Float;
    public var width: Float;
    public var height: Float;



    // net.sourceforge.plantuml.klimt.geom.XRectangle2D(double,double,double,double)
    public function new(x: Float, y: Float, width: Float, height: Float) {
this.x = x;
this.y = y;
this.width = width;
this.height = height;
    }




    // getWidth()[19]
    public function getWidth_0(): Float {
return width;
    }


    // getHeight()[23]
    public function getHeight_0(): Float {
return height;
    }


    // getX()[27]
    public function getX_0(): Float {
return x;
    }


    // getY()[31]
    public function getY_0(): Float {
return y;
    }


    // getCenterX()[35]
    public function getCenterX_0(): Float {
return ((x) + (((width) / (2))));
    }


    // getCenterY()[39]
    public function getCenterY_0(): Float {
return ((y) + (((height) / (2))));
    }


    // getMinX()[43]
    public function getMinX_0(): Float {
return x;
    }


    // getMaxX()[47]
    public function getMaxX_0(): Float {
return ((x) + (width));
    }


    // getMinY()[51]
    public function getMinY_0(): Float {
return y;
    }


    // getMaxY()[55]
    public function getMaxY_0(): Float {
return ((y) + (height));
    }


    // intersects(net.sourceforge.plantuml.klimt.geom.XRectangle2D)[59]
    public function intersects_1(other: XRectangle2D): Bool {
return intersects_4(other.getX_0(), other.getY_0(), other.getWidth_0(), other.getHeight_0());
    }


    // intersects(double,double,double,double)[63]
    public function intersects_4(x: Float, y: Float, w: Float, h: Float): Bool {
return ((((((((((((((((w) > (0))) && (((h) > (0))))) && (((getWidth_0()) > (0))))) && (((getHeight_0()) > (0))))) && (((x) < (((getX_0()) + (getWidth_0()))))))) && (((((x) + (w))) > (getX_0()))))) && (((y) < (((getY_0()) + (getHeight_0()))))))) && (((((y) + (h))) > (getY_0()))));
    }


    // contains(net.sourceforge.plantuml.klimt.geom.XPoint2D)[68]
    public function contains_1(point: XPoint2D): Bool {
throw new Exception('NOT IMPLEMENTED');
    }


    // contains(double,double)[72]
    public function contains_2(xp: Float, yp: Float): Bool {
if (((((width) <= (0))) || (((height) <= (0))))) {
throw new Exception('NOT IMPLEMENTED');
}

return ((((((((xp) >= (getMinX_0()))) && (((xp) < (getMaxX_0()))))) && (((yp) >= (getMinY_0()))))) && (((yp) < (getMaxY_0()))));
    }


    // intersect(net.sourceforge.plantuml.klimt.geom.XLine2D)[78]
    public function intersect_1(line: XLine2D): XPoint2D {
var a: XPoint2D = new XPoint2D(x, y);
var b: XPoint2D = new XPoint2D(((x) + (width)), y);
var c: XPoint2D = new XPoint2D(((x) + (width)), ((y) + (height)));
var d: XPoint2D = new XPoint2D(x, ((y) + (height)));
var line1: XLine2D = XLine2D.line_2(a, b);
var line2: XLine2D = XLine2D.line_2(b, c);
var line3: XLine2D = XLine2D.line_2(c, d);
var line4: XLine2D = XLine2D.line_2(d, a);
var result: XPoint2D = line.intersect_1(line1);
if (((result) != (null))) {
return result;
}

result = line.intersect_1(line2);
if (((result) != (null))) {
return result;
}

result = line.intersect_1(line3);
if (((result) != (null))) {
return result;
}

result = line.intersect_1(line4);
if (((result) != (null))) {
return result;
}

return null;
    }

}
