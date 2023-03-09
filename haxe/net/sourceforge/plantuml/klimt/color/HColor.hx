// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.color;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.StringUtils;
import net.sourceforge.plantuml.klimt.UChange;
import net.sourceforge.plantuml.klimt.UBackground;
import zava.awt.Color;




abstract class HColor implements UChange {



    // net.sourceforge.plantuml.klimt.color.HColor()
    public function new() {
    }




    // bg()[26]
    public function bg_0(): UBackground {
return new Back(this);
    }


    // toColor(net.sourceforge.plantuml.klimt.color.ColorMapper)[30]
    public function toColor_1(mapper: ColorMapper): Color {
throw new Exception('NOT IMPLEMENTED');
    }


    // toRGB(net.sourceforge.plantuml.klimt.color.ColorMapper)[34]
    public function toRGB_1(mapper: ColorMapper): String {
var color: Color = toColor_1(mapper);
return StringUtils.sharp000000_1(color.getRGB());
    }


    // toSvg(net.sourceforge.plantuml.klimt.color.ColorMapper)[39]
    public function toSvg_1(mapper: ColorMapper): String {
if (isTransparent_0()) {
return "#00000000";
}

var color: Color = toColor_1(mapper);
var alpha: Int = color.getAlpha();
if (((alpha) == (255))) {
return toRGB_1(mapper);
}

var s: String = (("0") + (Integer.toHexString(alpha).toUpperCase()));
s = s.substring(((s.length) - (2)));
return ((toRGB_1(mapper)) + (s));
    }


    // lighten(int)[53]
    public function lighten_1(ratio: Int): HColor {
return this;
    }


    // darken(int)[57]
    public function darken_1(ratio: Int): HColor {
return this;
    }


    // reverseHsluv()[61]
    public function reverseHsluv_0(): HColor {
return this;
    }


    // reverse()[65]
    public function reverse_0(): HColor {
return this;
    }


    // isDark()[69]
    public function isDark_0(): Bool {
return true;
    }


    // darkSchemeTheme()[74]
    public function darkSchemeTheme_0(): HColor {
return this;
    }


    // getAppropriateColor(net.sourceforge.plantuml.klimt.color.HColor)[78]
    public function getAppropriateColor_1(back: HColor): HColor {
return this;
    }


    // withDark(net.sourceforge.plantuml.klimt.color.HColor)[82]
    public function withDark_1(dark: HColor): HColor {
throw new Exception('NOT IMPLEMENTED');
    }


    // opposite()[86]
    public function opposite_0(): HColor {
throw new Exception('NOT IMPLEMENTED');
    }


    // isTransparent()[90]
    public function isTransparent_0(): Bool {
return false;
    }

}
