// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.style;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;

class PName extends JZEnum {
public static final Shadowing = new PName("Shadowing");
public static final FontName = new PName("FontName");
public static final FontColor = new PName("FontColor");
public static final FontSize = new PName("FontSize");
public static final FontStyle = new PName("FontStyle");
public static final BackGroundColor = new PName("BackGroundColor");
public static final RoundCorner = new PName("RoundCorner");
public static final LineThickness = new PName("LineThickness");
public static final DiagonalCorner = new PName("DiagonalCorner");
public static final HyperLinkColor = new PName("HyperLinkColor");
public static final HyperlinkUnderlineStyle = new PName("HyperlinkUnderlineStyle");
public static final HyperlinkUnderlineThickness = new PName("HyperlinkUnderlineThickness");
public static final HeadColor = new PName("HeadColor");
public static final LineColor = new PName("LineColor");
public static final LineStyle = new PName("LineStyle");
public static final Padding = new PName("Padding");
public static final Margin = new PName("Margin");
public static final MaximumWidth = new PName("MaximumWidth");
public static final MinimumWidth = new PName("MinimumWidth");
public static final ExportedName = new PName("ExportedName");
public static final Image = new PName("Image");
public static final HorizontalAlignment = new PName("HorizontalAlignment");
public static final ShowStereotype = new PName("ShowStereotype");
public static final ImagePosition = new PName("ImagePosition");



    // getFromName(java.lang.String,net.sourceforge.plantuml.style.StyleScheme)[30]
    public static function getFromName_2(name: String, scheme: StyleScheme): PName {
{
var _list_PName_java_31 = PName.values_0();
for (_i_PName_java_31 in 0..._list_PName_java_31.length) {
var prop: PName = _list_PName_java_31[_i_PName_java_31];
{
if (prop.name().equalsIgnoreCase(name)) {
return prop;
}

}
}
}

return null;
    }

}
