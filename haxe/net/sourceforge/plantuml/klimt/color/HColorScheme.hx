// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.color;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class HColorScheme extends HColor {
    public var colorForLight: HColor;
    public var colorForDark: HColor;
    public var colorForTransparent: HColor;



    // net.sourceforge.plantuml.klimt.color.HColorScheme(net.sourceforge.plantuml.klimt.color.HColor,net.sourceforge.plantuml.klimt.color.HColor,net.sourceforge.plantuml.klimt.color.HColor)
    public function new(colorForLight: HColor, colorForDark: HColor, colorForTransparent: HColor) {
super();
this.colorForLight = colorForLight;
this.colorForDark = colorForDark;
this.colorForTransparent = colorForTransparent;
    }




    // getAppropriateColor(net.sourceforge.plantuml.klimt.color.HColor)[17]
    override public function getAppropriateColor_1(back: HColor): HColor {
if (back.isTransparent_0()) {
if (((colorForTransparent) != (null))) {
return colorForTransparent;
}

return this.colorForLight.withDark_1(colorForDark);
}

if (back.isDark_0()) {
return colorForDark;
}

return colorForLight;
    }

}
