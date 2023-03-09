// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class ScaleMaxHeight extends ScaleProtected implements Scale {
    public var maxHeight: Float;



    // net.sourceforge.plantuml.ScaleMaxHeight(double)
    public function new(maxHeight: Float) {
super();
this.maxHeight = maxHeight;
    }




    // getScaleInternal(double,double)[12]
    public function getScaleInternal_2(width: Float, height: Float): Float {
var result: Float = ((maxHeight) / (height));
if (((result) > (1))) {
return 1;
}

return result;
    }

}
