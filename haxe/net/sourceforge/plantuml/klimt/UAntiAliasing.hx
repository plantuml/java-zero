// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.awt.RenderingHints_Key;
import zava.awt.RenderingHints;
import zava.awt.Graphics2D;

class UAntiAliasing extends JZEnum implements UChange {
public static final ANTI_ALIASING_ON = new UAntiAliasing("ANTI_ALIASING_ON");
public static final ANTI_ALIASING_OFF = new UAntiAliasing("ANTI_ALIASING_OFF");



    // apply(java.awt.Graphics2D)[11]
    public function apply_1(g2d: Graphics2D): Void {
if (((this) == (net.sourceforge.plantuml.klimt.UAntiAliasing.ANTI_ALIASING_ON))) {
g2d.setRenderingHint(zava.awt.RenderingHints.KEY_ANTIALIASING, zava.awt.RenderingHints.VALUE_ANTIALIAS_ON);
}
else {
g2d.setRenderingHint(zava.awt.RenderingHints.KEY_ANTIALIASING, zava.awt.RenderingHints.VALUE_ANTIALIAS_OFF);
}

    }

}
