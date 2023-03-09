// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class ScaleSimple extends ScaleProtected implements Scale {
    public var scale: Float;



    // net.sourceforge.plantuml.ScaleSimple(double)
    public function new(scale: Float) {
super();
this.scale = scale;
    }




    // getScaleInternal(double,double)[12]
    public function getScaleInternal_2(width: Float, height: Float): Float {
return scale;
    }

}
