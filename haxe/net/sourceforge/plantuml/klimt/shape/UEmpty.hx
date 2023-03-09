// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.shape;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.UShape;
import net.sourceforge.plantuml.klimt.geom.XDimension2D;




class UEmpty implements UShape {
    public var width: Float;
    public var height: Float;



    // net.sourceforge.plantuml.klimt.shape.UEmpty(double,double)
    public function new(width: Float, height: Float) {
if (((width) == (0))) {
throw new Exception('NOT IMPLEMENTED');
}

this.width = width;
this.height = height;
    }




    // create(net.sourceforge.plantuml.klimt.geom.XDimension2D)[20]
    public static function create_1(dim: XDimension2D): UEmpty {
return new UEmpty(dim.getWidth_0(), dim.getHeight_0());
    }


    // getWidth()[24]
    public function getWidth_0(): Float {
return width;
    }


    // getHeight()[28]
    public function getHeight_0(): Float {
return height;
    }

}
