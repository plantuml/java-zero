// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class ScaleWidth extends ScaleProtected implements Scale {
    public var maxWidth: Float;



    // net.sourceforge.plantuml.ScaleWidth(double)
    public function new(maxWidth: Float) {
super();
this.maxWidth = maxWidth;
    }




    // getScaleInternal(double,double)[12]
    public function getScaleInternal_2(width: Float, height: Float): Float {
return ((maxWidth) / (width));
    }

}
