// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.font;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.StringUtils;
import zava.awt.Font;




class UFont {
    public var font: Font;
    public var family: String;



    // net.sourceforge.plantuml.klimt.font.UFont(java.awt.Font,java.lang.String)
    public function new(font: Font, family: String) {
this.font = font;
this.family = family;
    }




    // toStringDebug()[17]
    public function toStringDebug_0(): String {
var sb: StringBuilder = new StringBuilder();
sb.append(getPortableFontName_0());
sb.append("/");
sb.append(this.font.getSize());
return sb.toString();
    }


    // build(java.lang.String,int,int)[25]
    public static function build_3(fontFamily: String, fontStyle: Int, fontSize: Int): UFont {
return new UFont(UFont.buildFont_3(fontFamily, fontStyle, fontSize), fontFamily);
    }


    // buildFont(java.lang.String,int,int)[34]
    public static function buildFont_3(fontFamily: String, fontStyle: Int, fontSize: Int): Font {
if (fontFamily.contains(",")) {
{
var _list_UFont_java_36 = fontFamily.jz_split(",");
for (_i_UFont_java_36 in 0..._list_UFont_java_36.length) {
var name: String = _list_UFont_java_36[_i_UFont_java_36];
{
name = StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote_1(name).trim();
if (UFont.doesFamilyExists_1(name)) {
return new Font(fontFamily, fontStyle, fontSize);
}

}
}
}

}

return new Font(fontFamily, fontStyle, fontSize);
    }


    // doesFamilyExists(java.lang.String)[46]
    public static function doesFamilyExists_1(name: String): Bool {
return true;
    }


    // serif(int)[50]
    public static function serif_1(size: Int): UFont {
return UFont.build_3("Serif", zava.awt.Font.PLAIN, size);
    }


    // sansSerif(int)[54]
    public static function sansSerif_1(size: Int): UFont {
return UFont.build_3("SansSerif", zava.awt.Font.PLAIN, size);
    }


    // courier(int)[58]
    public static function courier_1(size: Int): UFont {
return UFont.build_3("Courier", zava.awt.Font.PLAIN, size);
    }


    // byDefault(int)[62]
    public static function byDefault_1(size: Int): UFont {
return UFont.sansSerif_1(12);
    }


    // goTikz(int)[66]
    public function goTikz_1(delta: Int): UFont {
return new UFont(new Font("Serif", getStyle_0(), ((getSize_0()) + (delta))), "Serif");
    }


    // monospaced(int)[70]
    public static function monospaced_1(size: Int): UFont {
return UFont.build_3("Monospaced", zava.awt.Font.PLAIN, size);
    }


    // getUnderlayingFont(net.sourceforge.plantuml.klimt.font.UFontContext)[74]
    public function getUnderlayingFont_1(context: UFontContext): Font {
return font;
    }


    // withSize(float)[78]
    public function withSize_1(size: Float): UFont {
return new UFont(this.font.deriveFont(size), family);
    }


    // withStyle(int)[82]
    public function withStyle_1(style: Int): UFont {
return new UFont(this.font.deriveFont(style), family);
    }


    // bold()[86]
    public function bold_0(): UFont {
return withStyle_1(zava.awt.Font.BOLD);
    }


    // italic()[90]
    public function italic_0(): UFont {
return withStyle_1(zava.awt.Font.ITALIC);
    }


    // getStyle()[94]
    public function getStyle_0(): Int {
return this.font.getStyle();
    }


    // getSize()[98]
    public function getSize_0(): Int {
return this.font.getSize();
    }


    // getSize2D()[102]
    public function getSize2D_0(): Float {
return this.font.getSize2D();
    }


    // isBold()[106]
    public function isBold_0(): Bool {
return this.font.isBold();
    }


    // isItalic()[110]
    public function isItalic_0(): Bool {
return this.font.isItalic();
    }


    // getFamily(net.sourceforge.plantuml.klimt.font.UFontContext)[114]
    public function getFamily_1(context: UFontContext): String {
if (((context) == (net.sourceforge.plantuml.klimt.font.UFontContext.EPS))) {
if (((family) == (null))) {
return "Times-Roman";
}

return this.font.getPSName();
}

if (((context) == (net.sourceforge.plantuml.klimt.font.UFontContext.SVG))) {
if (this.family.equalsIgnoreCase("sansserif")) {
return "sans-serif";
}

return family;
}

return family;
    }


    // getPortableFontName()[133]
    public function getPortableFontName_0(): String {
var name: String = this.font.getFontName();
if (((this.font.isBold()) && (this.font.isItalic()))) {
return  ( name.endsWith(".bolditalic") ? name : ((name) + (".bolditalic")) ) ;
}
else {
if (this.font.isBold()) {
return  ( name.endsWith(".bold") ? name : ((name) + (".bold")) ) ;
}
else {
if (this.font.isItalic()) {
return  ( name.endsWith(".italic") ? name : ((name) + (".italic")) ) ;
}
else {
return  ( name.endsWith(".plain") ? name : ((name) + (".plain")) ) ;
}

}

}

    }


    // toString()[146]
    public function toString_0(): String {
return this.font.toString();
    }

}
