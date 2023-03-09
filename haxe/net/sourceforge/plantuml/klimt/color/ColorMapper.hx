// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.color;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.awt.Color;




// net.sourceforge.plantuml.klimt.color.ColorMapper$1
class Net_sourceforge_plantuml_klimt_color_ColorMapper_1 extends ColorMapper {



    // net.sourceforge.plantuml.klimt.color.ColorMapper$1()
    public function new() {
super();
    }




    // fromColorSimple(net.sourceforge.plantuml.klimt.color.HColorSimple)[15]
    public function fromColorSimple_1(simple: HColorSimple): Color {
return simple.getAwtColor_0();
    }

}

abstract class ColorMapper {
    public static var IDENTITY: ColorMapper = new Net_sourceforge_plantuml_klimt_color_ColorMapper_1();



    // net.sourceforge.plantuml.klimt.color.ColorMapper()
    public function new() {
    }




    // fromColorSimple(net.sourceforge.plantuml.klimt.color.HColorSimple)[11]
    abstract public function fromColorSimple_1(simple: HColorSimple): Color;

}
