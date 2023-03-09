// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.drawing;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.font.StringBounder;
import net.sourceforge.plantuml.klimt.UParam;
import net.sourceforge.plantuml.klimt.UShape;
import net.sourceforge.plantuml.klimt.UChange;
import net.sourceforge.plantuml.klimt.color.ColorMapper;
import net.sourceforge.plantuml.url.Url;
import zava.util.JZMap;
import net.sourceforge.plantuml.klimt.UGroupType;
import net.sourceforge.plantuml.klimt.color.HColor;
import zava.io.OutputStream;
import zava.io.IOException;

interface UGraphic {



    // getStringBounder()[19]
    public function getStringBounder_0(): StringBounder;


    // getParam()[21]
    public function getParam_0(): UParam;


    // draw(net.sourceforge.plantuml.klimt.UShape)[23]
    public function draw_1(shape: UShape): Void;


    // apply(net.sourceforge.plantuml.klimt.UChange)[25]
    public function apply_1(change: UChange): UGraphic;


    // getColorMapper()[27]
    public function getColorMapper_0(): ColorMapper;


    // startUrl(net.sourceforge.plantuml.url.Url)[29]
    public function startUrl_1(url: Url): Void;


    // closeUrl()[31]
    public function closeUrl_0(): Void;


    // startGroup(java.util.Map)[33]
    public function startGroup_1(typeIdents: JZMap): Void;


    // closeGroup()[35]
    public function closeGroup_0(): Void;


    // flushUg()[37]
    public function flushUg_0(): Void;


    // matchesProperty(java.lang.String)[39]
    public function matchesProperty_1(propertyName: String): Bool;


    // getDefaultBackground()[41]
    public function getDefaultBackground_0(): HColor;


    // writeToStream(java.io.OutputStream,java.lang.String,int)[43]
    public function writeToStream_3(os: OutputStream, metadata: String, dpi: Int): Void;

}
