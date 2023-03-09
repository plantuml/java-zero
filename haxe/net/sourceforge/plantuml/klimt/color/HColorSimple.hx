// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.color;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.awt.Color;




class HColorSimple extends HColor {
    public var color: Color;
    public var dark: HColor;



    // net.sourceforge.plantuml.klimt.color.HColorSimple(java.awt.Color,net.sourceforge.plantuml.klimt.color.HColor)
    public function new(c: Color, dark: HColor) {
super();
this.color = c;
this.dark = dark;
    }




    // toString()[14]
    public function toString_0(): String {
var withDark: Bool = ((dark) != (null));
var sb: StringBuilder = new StringBuilder();
if (withDark) {
sb.append("WITHDARK ");
}

sb.append(this.color.toString());
sb.append(" α=");
sb.append(this.color.getAlpha());
if (isTransparent_0()) {
sb.append(" transparent");
}

return sb.toString();
    }


    // isDark()[31]
    override public function isDark_0(): Bool {
return ((ColorUtils.getGrayScale_1(color)) < (128));
    }


    // isTransparent()[36]
    override public function isTransparent_0(): Bool {
return ((this.color.getAlpha()) == (0));
    }


    // create(java.awt.Color)[40]
    public static function create_1(c: Color): HColorSimple {
return new HColorSimple(c, null);
    }


    // getAwtColor()[49]
    public function getAwtColor_0(): Color {
return color;
    }


    // asMonochrome()[53]
    public function asMonochrome_0(): HColor {
return HColorSimple.create_1(ColorUtils.getGrayScaleColor_1(color));
    }


    // opposite()[59]
    override public function opposite_0(): HColor {
var mono: Color = ColorUtils.getGrayScaleColor_1(color);
var grayScale: Int =  ( ((((255) - (mono.getGreen()))) > (127)) ? 255 : 0 ) ;
return HColorSimple.create_1(new Color(grayScale, grayScale, grayScale));
    }


    // distanceTo(net.sourceforge.plantuml.klimt.color.HColorSimple)[65]
    public function distanceTo_1(other: HColorSimple): Int {
return ColorUtils.distance_2(this.color, other.color);
    }


    // isGray()[69]
    public function isGray_0(): Bool {
return ((((this.color.getRed()) == (this.color.getGreen()))) && (((this.color.getGreen()) == (this.color.getBlue()))));
    }


    // withDark(net.sourceforge.plantuml.klimt.color.HColor)[74]
    override public function withDark_1(dark: HColor): HColor {
return new HColorSimple(color, dark);
    }


    // darkSchemeTheme()[79]
    override public function darkSchemeTheme_0(): HColor {
if (((dark) == (null))) {
return this;
}

return dark;
    }

}
