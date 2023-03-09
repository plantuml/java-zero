// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class UStroke implements UChange {
    public var dashVisible: Float;
    public var dashSpace: Float;
    public var thickness: Float;



    // net.sourceforge.plantuml.klimt.UStroke(double,double,double)
    public function new(dashVisible: Float, dashSpace: Float, thickness: Float) {
this.dashVisible = dashVisible;
this.dashSpace = dashSpace;
this.thickness = thickness;
    }




    // toString()[12]
    public function toString_0(): String {
return (((((((((("") + (dashVisible))) + ("-"))) + (dashSpace))) + ("-"))) + (thickness));
    }


    // withThickness(double)[22]
    public static function withThickness_1(thickness: Float): UStroke {
return new UStroke(0, 0, thickness);
    }


    // simple()[26]
    public static function simple_0(): UStroke {
return new UStroke(0, 0, 1.0);
    }


    // onlyThickness()[30]
    public function onlyThickness_0(): UStroke {
return new UStroke(0, 0, thickness);
    }


    // getDashVisible()[34]
    public function getDashVisible_0(): Float {
return dashVisible;
    }


    // getDashSpace()[38]
    public function getDashSpace_0(): Float {
return dashSpace;
    }


    // getThickness()[42]
    public function getThickness_0(): Float {
return thickness;
    }


    // getDasharraySvg()[46]
    public function getDasharraySvg_0(): String {
if (((dashVisible) == (0))) {
return null;
}

return (((((("") + (dashVisible))) + (","))) + (dashSpace));
    }


    // getDashTikz()[53]
    public function getDashTikz_0(): String {
if (((dashVisible) == (0))) {
return null;
}

return (((((((("on ") + (dashVisible))) + ("pt off "))) + (dashSpace))) + ("pt"));
    }

}
