// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.font;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;

class FontPosition extends JZEnum {
public static final NORMAL = new FontPosition("NORMAL");
public static final EXPOSANT = new FontPosition("EXPOSANT");
public static final INDICE = new FontPosition("INDICE");



    // getSpace()[7]
    public function getSpace_0(): Int {
if (((this) == (net.sourceforge.plantuml.klimt.font.FontPosition.EXPOSANT))) {
return -(6);
}

if (((this) == (net.sourceforge.plantuml.klimt.font.FontPosition.INDICE))) {
return 3;
}

return 0;
    }

}
