// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.color;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.util.HashMap;
import zava.util.Collections;
import zava.util.Objects;
import net.sourceforge.plantuml.StringUtils;
import zava.util.TreeSet;
import zava.util.JZMap;
import zava.util.Set;
import zava.util.Collection;
import zava.awt.Color;




// Nested type net.sourceforge.plantuml.klimt.color.HColorSet$Gradient

class Gradient {


    public var s1: String;
    public var sep: String;
    public var s2: String;
    public var me: HColorSet;



    // net.sourceforge.plantuml.klimt.color.HColorSet$Gradient(net.sourceforge.plantuml.klimt.color.HColorSet,java.lang.String,char,java.lang.String)
    public function new(me: HColorSet, s1: String, sep: String, s2: String) {
this.me = me;
this.s1 = s1;
this.sep = sep;
this.s2 = s2;
    }


    // isValid()[220]
    public function isValid_0(): Bool {
return ((this.me.isColorValid_1(s1)) && (this.me.isColorValid_1(s2)));
    }

}



// Nested type net.sourceforge.plantuml.klimt.color.HColorSet$Automatic

class Automatic {


    public var colors: Array<String>;
    public var me: HColorSet;



    // net.sourceforge.plantuml.klimt.color.HColorSet$Automatic(net.sourceforge.plantuml.klimt.color.HColorSet,java.lang.String[])
    public function new(me: HColorSet, colors: Array<String>) {
this.me = me;
this.colors = colors;
    }


    // isValid()[236]
    public function isValid_0(): Bool {
{
var _list_HColorSet_java_237 = colors;
for (_i_HColorSet_java_237 in 0..._list_HColorSet_java_237.length) {
var color: String = _list_HColorSet_java_237[_i_HColorSet_java_237];
{
if (((this.me.isColorValid_1(color)) == (false))) {
return false;
}

}
}
}

return true;
    }


    // buildInternal()[244]
    public function buildInternal_0(): HColorScheme {
if (((colors.length) == (2))) {
return new HColorScheme(this.me.build_1(colors[0]), this.me.build_1(colors[1]), null);
}

return new HColorScheme(this.me.build_1(colors[0]), this.me.build_1(colors[1]), this.me.build_1(colors[2]));
    }

}



class HColorSet {
    public static var singleton: HColorSet = new HColorSet();
    public var htmlNames: JZMap<String,String> = new HashMap<String,String>();
    public var names: Set<String> = new TreeSet<String>();



    // net.sourceforge.plantuml.klimt.color.HColorSet()
    public function new() {
register_2("AliceBlue", "#F0F8FF");
register_2("AntiqueWhite", "#FAEBD7");
register_2("Aqua", "#00FFFF");
register_2("Aquamarine", "#7FFFD4");
register_2("Azure", "#F0FFFF");
register_2("Beige", "#F5F5DC");
register_2("Bisque", "#FFE4C4");
register_2("Black", "#000000");
register_2("BlanchedAlmond", "#FFEBCD");
register_2("Blue", "#0000FF");
register_2("BlueViolet", "#8A2BE2");
register_2("Brown", "#A52A2A");
register_2("BurlyWood", "#DEB887");
register_2("CadetBlue", "#5F9EA0");
register_2("Chartreuse", "#7FFF00");
register_2("Chocolate", "#D2691E");
register_2("Coral", "#FF7F50");
register_2("CornflowerBlue", "#6495ED");
register_2("Cornsilk", "#FFF8DC");
register_2("Crimson", "#DC143C");
register_2("Cyan", "#00FFFF");
register_2("DarkBlue", "#00008B");
register_2("DarkCyan", "#008B8B");
register_2("DarkGoldenRod", "#B8860B");
register_2("DarkGray", "#A9A9A9");
register_2("DarkGrey", "#A9A9A9");
register_2("DarkGreen", "#006400");
register_2("DarkKhaki", "#BDB76B");
register_2("DarkMagenta", "#8B008B");
register_2("DarkOliveGreen", "#556B2F");
register_2("Darkorange", "#FF8C00");
register_2("DarkOrchid", "#9932CC");
register_2("DarkRed", "#8B0000");
register_2("DarkSalmon", "#E9967A");
register_2("DarkSeaGreen", "#8FBC8F");
register_2("DarkSlateBlue", "#483D8B");
register_2("DarkSlateGray", "#2F4F4F");
register_2("DarkSlateGrey", "#2F4F4F");
register_2("DarkTurquoise", "#00CED1");
register_2("DarkViolet", "#9400D3");
register_2("DeepPink", "#FF1493");
register_2("DeepSkyBlue", "#00BFFF");
register_2("DimGray", "#696969");
register_2("DimGrey", "#696969");
register_2("DodgerBlue", "#1E90FF");
register_2("FireBrick", "#B22222");
register_2("FloralWhite", "#FFFAF0");
register_2("ForestGreen", "#228B22");
register_2("Fuchsia", "#FF00FF");
register_2("Gainsboro", "#DCDCDC");
register_2("GhostWhite", "#F8F8FF");
register_2("Gold", "#FFD700");
register_2("GoldenRod", "#DAA520");
register_2("Gray", "#808080");
register_2("Grey", "#808080");
register_2("Green", "#008000");
register_2("GreenYellow", "#ADFF2F");
register_2("HoneyDew", "#F0FFF0");
register_2("HotPink", "#FF69B4");
register_2("IndianRed", "#CD5C5C");
register_2("Indigo", "#4B0082");
register_2("Ivory", "#FFFFF0");
register_2("Khaki", "#F0E68C");
register_2("Lavender", "#E6E6FA");
register_2("LavenderBlush", "#FFF0F5");
register_2("LawnGreen", "#7CFC00");
register_2("LemonChiffon", "#FFFACD");
register_2("LightBlue", "#ADD8E6");
register_2("LightCoral", "#F08080");
register_2("LightCyan", "#E0FFFF");
register_2("LightGoldenRodYellow", "#FAFAD2");
register_2("LightGray", "#D3D3D3");
register_2("LightGrey", "#D3D3D3");
register_2("LightGreen", "#90EE90");
register_2("LightPink", "#FFB6C1");
register_2("LightSalmon", "#FFA07A");
register_2("LightSeaGreen", "#20B2AA");
register_2("LightSkyBlue", "#87CEFA");
register_2("LightSlateGray", "#778899");
register_2("LightSlateGrey", "#778899");
register_2("LightSteelBlue", "#B0C4DE");
register_2("LightYellow", "#FFFFE0");
register_2("Lime", "#00FF00");
register_2("LimeGreen", "#32CD32");
register_2("Linen", "#FAF0E6");
register_2("Magenta", "#FF00FF");
register_2("Maroon", "#800000");
register_2("MediumAquaMarine", "#66CDAA");
register_2("MediumBlue", "#0000CD");
register_2("MediumOrchid", "#BA55D3");
register_2("MediumPurple", "#9370D8");
register_2("MediumSeaGreen", "#3CB371");
register_2("MediumSlateBlue", "#7B68EE");
register_2("MediumSpringGreen", "#00FA9A");
register_2("MediumTurquoise", "#48D1CC");
register_2("MediumVioletRed", "#C71585");
register_2("MidnightBlue", "#191970");
register_2("MintCream", "#F5FFFA");
register_2("MistyRose", "#FFE4E1");
register_2("Moccasin", "#FFE4B5");
register_2("NavajoWhite", "#FFDEAD");
register_2("Navy", "#000080");
register_2("OldLace", "#FDF5E6");
register_2("Olive", "#808000");
register_2("OliveDrab", "#6B8E23");
register_2("Orange", "#FFA500");
register_2("OrangeRed", "#FF4500");
register_2("Orchid", "#DA70D6");
register_2("PaleGoldenRod", "#EEE8AA");
register_2("PaleGreen", "#98FB98");
register_2("PaleTurquoise", "#AFEEEE");
register_2("PaleVioletRed", "#D87093");
register_2("PapayaWhip", "#FFEFD5");
register_2("PeachPuff", "#FFDAB9");
register_2("Peru", "#CD853F");
register_2("Pink", "#FFC0CB");
register_2("Plum", "#DDA0DD");
register_2("PowderBlue", "#B0E0E6");
register_2("Purple", "#800080");
register_2("Red", "#FF0000");
register_2("RosyBrown", "#BC8F8F");
register_2("RoyalBlue", "#4169E1");
register_2("SaddleBrown", "#8B4513");
register_2("Salmon", "#FA8072");
register_2("SandyBrown", "#F4A460");
register_2("SeaGreen", "#2E8B57");
register_2("SeaShell", "#FFF5EE");
register_2("Sienna", "#A0522D");
register_2("Silver", "#C0C0C0");
register_2("SkyBlue", "#87CEEB");
register_2("SlateBlue", "#6A5ACD");
register_2("SlateGray", "#708090");
register_2("SlateGrey", "#708090");
register_2("Snow", "#FFFAFA");
register_2("SpringGreen", "#00FF7F");
register_2("SteelBlue", "#4682B4");
register_2("Tan", "#D2B48C");
register_2("Teal", "#008080");
register_2("Thistle", "#D8BFD8");
register_2("Tomato", "#FF6347");
register_2("Turquoise", "#40E0D0");
register_2("Violet", "#EE82EE");
register_2("Wheat", "#F5DEB3");
register_2("White", "#FFFFFF");
register_2("WhiteSmoke", "#F5F5F5");
register_2("Yellow", "#FFFF00");
register_2("YellowGreen", "#9ACD32");
register_2("BUSINESS", "#FFFFCC");
register_2("APPLICATION", "#C2F0FF");
register_2("MOTIVATION", "#EFEFFF");
register_2("STRATEGY", "#F8E7C0");
register_2("TECHNOLOGY", "#C9FFC9");
register_2("PHYSICAL", "#97FF97");
register_2("IMPLEMENTATION", "#FFE0E0");
    }




    // instance()[22]
    public static function instance_0(): HColorSet {
return net.sourceforge.plantuml.klimt.color.HColorSet.singleton;
    }


    // names()[26]
    public function names_0(): Collection<String> {
return Collections.unmodifiableSet(names);
    }


    // register(java.lang.String,java.lang.String)[190]
    public function register_2(s: String, color: String): Void {
this.htmlNames.put(StringUtils.goLowerCase_1(s), color);
this.names.add(s);
    }


    // getColorOrWhite(java.lang.String)[195]
    public function getColorOrWhite_1(s: String): HColor {
if (((isColorValid_1(Objects.requireNonNull(s))) == (false))) {
return net.sourceforge.plantuml.klimt.color.HColors.WHITE;
}

try 
{
return getColor_1(s);
}
catch (e:NoSuchColorException)
{

return net.sourceforge.plantuml.klimt.color.HColors.WHITE;
}

    }


    // gradientFromString(java.lang.String)[253]
    public function gradientFromString_1(s: String): Gradient {
return null;
    }


    // automaticFromString(java.lang.String)[257]
    public function automaticFromString_1(s: String): Automatic {
if (s.startsWith("#")) {
s = s.substring(1);
}

if (((s.startsWith("?")) == (false))) {
return null;
}

var idx: Int = s.indexOf(':');
if (((idx) != (-(1)))) {
return new Automatic(this, s.substring(1).jz_split(":"));
}

return null;
    }


    // getColorLEGACY(java.lang.String)[271]
    public function getColorLEGACY_1(s: String): HColor {
return getColor_1(s);
    }


    // getColor(java.lang.String)[275]
    public function getColor_1(s: String): HColor {
if (((isColorValid_1(Objects.requireNonNull(s))) == (false))) {
throw new Exception('NOT IMPLEMENTED');
}

var automatic: Automatic = automaticFromString_1(s);
if (((automatic) != (null))) {
return automatic.buildInternal_0();
}

if (((s.equalsIgnoreCase("#transparent")) || (s.equalsIgnoreCase("transparent")))) {
s = "#00000000";
}

return build_1(s);
    }


    // isColorValid(java.lang.String)[290]
    public function isColorValid_1(s: String): Bool {
s = removeFirstDieseAndgoLowerCase_1(s);
var automatic: Automatic = automaticFromString_1(s);
if (((automatic) != (null))) {
return automatic.isValid_0();
}

var gradient: Gradient = gradientFromString_1(s);
if (((gradient) != (null))) {
return gradient.isValid_0();
}

if (s.matches("[0-9A-Fa-f]|[0-9A-Fa-f]{3}|[0-9A-Fa-f]{6}|[0-9A-Fa-f]{8}|automatic|transparent")) {
return true;
}

if (this.htmlNames.containsKey(s)) {
return true;
}

return false;
    }


    // build(java.lang.String)[310]
    public function build_1(s: String): HColor {
s = removeFirstDieseAndgoLowerCase_1(s);
var color: Color;
if (((s.equalsIgnoreCase("transparent")) || (s.equalsIgnoreCase("background")))) {
return HColors.none_0();
}
else {
if (s.matches("[0-9A-Fa-f]")) {
s = (((((((((((("") + (s.charAt(0)))) + (s.charAt(0)))) + (s.charAt(0)))) + (s.charAt(0)))) + (s.charAt(0)))) + (s.charAt(0)));
color = new Color(Integer.parseInt(s, 16));
}
else {
if (s.matches("[0-9A-Fa-f]{3}")) {
s = (((((((((((("") + (s.charAt(0)))) + (s.charAt(0)))) + (s.charAt(1)))) + (s.charAt(1)))) + (s.charAt(2)))) + (s.charAt(2)));
color = new Color(Integer.parseInt(s, 16));
}
else {
if (s.matches("[0-9A-Fa-f]{6}")) {
color = new Color(Integer.parseInt(s, 16));
}
else {
if (s.matches("[0-9A-Fa-f]{8}")) {
color = fromRGBa_1(s);
}
else {
var value: String = Objects.requireNonNull(this.htmlNames.get(s));
color = new Color(Integer.parseInt(value.substring(1), 16));
}

}

}

}

}

return HColors.simple_1(color);
    }


    // fromRGBa(java.lang.String)[332]
    public function fromRGBa_1(s: String): Color {
if (((s.length) != (8))) {
throw new Exception('NOT IMPLEMENTED');
}

var red: Int = Integer.parseInt(s.substring(0, 2), 16);
var green: Int = Integer.parseInt(s.substring(2, 4), 16);
var blue: Int = Integer.parseInt(s.substring(4, 6), 16);
var alpha: Int = Integer.parseInt(s.substring(6, 8), 16);
return new Color(red, green, blue, alpha);
    }


    // removeFirstDieseAndgoLowerCase(java.lang.String)[344]
    public function removeFirstDieseAndgoLowerCase_1(s: String): String {
s = StringUtils.goLowerCase_1(s);
if (s.startsWith("#")) {
s = s.substring(1);
}

return s;
    }

}
