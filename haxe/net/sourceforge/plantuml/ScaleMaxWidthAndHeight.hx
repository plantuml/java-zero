// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class ScaleMaxWidthAndHeight extends ScaleProtected implements Scale {
    public var maxWidth: Float;
    public var maxHeight: Float;



    // net.sourceforge.plantuml.ScaleMaxWidthAndHeight(double,double)
    public function new(maxWidth: Float, maxHeight: Float) {
super();
this.maxWidth = maxWidth;
this.maxHeight = maxHeight;
    }




    // getScaleInternal(double,double)[14]
    public function getScaleInternal_2(width: Float, height: Float): Float {
var scale1: Float = ((maxWidth) / (width));
var scale2: Float = ((maxHeight) / (height));
var min: Float = Math.min(scale1, scale2);
if (((min) > (1))) {
return 1;
}

return min;
    }

}
