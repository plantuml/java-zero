// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




abstract class ScaleProtected implements Scale {



    // net.sourceforge.plantuml.ScaleProtected()
    public function new() {
    }




    // getScaleInternal(double,double)[6]
    abstract public function getScaleInternal_2(width: Float, height: Float): Float;


    // getScale(double,double)[8]
    public function getScale_2(width: Float, height: Float): Float {
var result: Float = getScaleInternal_2(width, height);
if (((result) <= (0))) {
return 1;
}

if (((result) > (4))) {
return 4;
}

return result;
    }

}
