// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.url;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.StringUtils;
import net.sourceforge.plantuml.klimt.geom.BasicEnsureVisible;
import net.sourceforge.plantuml.klimt.geom.EnsureVisible;
import zava.util.Comparator;




// net.sourceforge.plantuml.url.Url$1
class Net_sourceforge_plantuml_url_Url_1 implements Comparator<Url> {



    // net.sourceforge.plantuml.url.Url$1()
    public function new() {
    }




    // compare(net.sourceforge.plantuml.url.Url,net.sourceforge.plantuml.url.Url)[73]
    public function compare_2(url1: Url, url2: Url): Int {
var surface1: Float = url1.visible.getSurface_0();
var surface2: Float = url2.visible.getSurface_0();
if (((surface1) > (surface2))) {
return 1;
}
else {
if (((surface1) < (surface2))) {
return -(1);
}

}

return 0;
    }

}

class Url implements EnsureVisible {
    public var url: String;
    public var tooltip: String;
    public var label: String;
    public var member: Bool;
    public var visible: BasicEnsureVisible = new BasicEnsureVisible();
    public static var SURFACE_COMPARATOR: Comparator<Url> = new Net_sourceforge_plantuml_url_Url_1();



    // net.sourceforge.plantuml.url.Url(java.lang.String,java.lang.String,java.lang.String)
    public function new(url: String, tooltip: String, label: String) {
url = StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote_2(url, "\"");
this.url = url;
this.tooltip = url;
if (((((label) == (null))) || (((label.length) == (0))))) {
this.label = url;
}
else {
this.label = label;
}

    }




    // isLatex(java.lang.String)[28]
    public static function isLatex_1(pendingUrl: String): Bool {
return pendingUrl.startsWith("latex://");
    }


    // isLatex()[32]
    public function isLatex_0(): Bool {
return Url.isLatex_1(url);
    }


    // getUrl()[36]
    public function getUrl_0(): String {
return url;
    }


    // getTooltip()[40]
    public function getTooltip_0(): String {
return tooltip;
    }


    // getLabel()[44]
    public function getLabel_0(): String {
return label;
    }


    // getCoords(double)[49]
    public function getCoords_1(scale: Float): String {
return this.visible.getCoords_1(scale);
    }


    // setMember(boolean)[54]
    public function setMember_1(member: Bool): Void {
this.member = member;
    }


    // isMember()[58]
    public function isMember_0(): Bool {
return member;
    }


    // ensureVisible(double,double)[64]
    public function ensureVisible_2(x: Float, y: Float): Void {
this.visible.ensureVisible_2(x, y);
    }


    // hasData()[68]
    public function hasData_0(): Bool {
return this.visible.hasData_0();
    }

}
