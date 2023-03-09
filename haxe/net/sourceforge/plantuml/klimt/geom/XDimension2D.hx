// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.geom;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.UTranslate;




class XDimension2D {
    public var width: Float;
    public var height: Float;



    // net.sourceforge.plantuml.klimt.geom.XDimension2D(double,double)
    public function new(width: Float, height: Float) {
if (((Double.isNaN(width)) || (Double.isNaN(height)))) {
throw new Exception('NOT IMPLEMENTED');
}

this.width = width;
this.height = height;
    }




    // toString()[23]
    public function toString_0(): String {
return (((((((("[") + (width))) + (","))) + (height))) + ("]"));
    }


    // getHeight()[27]
    public function getHeight_0(): Float {
return height;
    }


    // getWidth()[31]
    public function getWidth_0(): Float {
return width;
    }


    // delta(double)[35]
    public function delta_1(delta: Float): XDimension2D {
return delta_2(delta, delta);
    }


    // withWidth(double)[39]
    public function withWidth_1(newWidth: Float): XDimension2D {
return new XDimension2D(newWidth, height);
    }


    // applyTranslate(net.sourceforge.plantuml.klimt.UTranslate)[43]
    public function applyTranslate_1(translate: UTranslate): XDimension2D {
return new XDimension2D(((width) + (translate.getDx_0())), ((height) + (translate.getDy_0())));
    }


    // delta(double,double)[47]
    public function delta_2(deltaWidth: Float, deltaHeight: Float): XDimension2D {
if (((((deltaHeight) == (0))) && (((deltaWidth) == (0))))) {
return this;
}

return new XDimension2D(((getWidth_0()) + (deltaWidth)), ((getHeight_0()) + (deltaHeight)));
    }


    // mergeTB(net.sourceforge.plantuml.klimt.geom.XDimension2D)[54]
    public function mergeTB_1(bottom: XDimension2D): XDimension2D {
var width: Float = Math.max(getWidth_0(), bottom.getWidth_0());
var height: Float = ((getHeight_0()) + (bottom.getHeight_0()));
return new XDimension2D(width, height);
    }


    // mergeLR(net.sourceforge.plantuml.klimt.geom.XDimension2D)[61]
    public function mergeLR_1(right: XDimension2D): XDimension2D {
var height: Float = Math.max(getHeight_0(), right.getHeight_0());
var width: Float = ((getWidth_0()) + (right.getWidth_0()));
return new XDimension2D(width, height);
    }


    // atLeast(double,double)[67]
    public function atLeast_2(minWidth: Float, minHeight: Float): XDimension2D {
var h: Float = getHeight_0();
var w: Float = getWidth_0();
if (((((w) > (minWidth))) && (((h) > (minHeight))))) {
return this;
}

if (((h) < (minHeight))) {
h = minHeight;
}

if (((w) < (minWidth))) {
w = minWidth;
}

return new XDimension2D(w, h);
    }


    // max(net.sourceforge.plantuml.klimt.geom.XDimension2D,net.sourceforge.plantuml.klimt.geom.XDimension2D)[83]
    public static function max_2(dim1: XDimension2D, dim2: XDimension2D): XDimension2D {
return dim1.atLeast_2(dim2.getWidth_0(), dim2.getHeight_0());
    }

}
