// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import zava.awt.image.BufferedImage;
import zava.awt.Color;

interface MutableImage {



    // getImage()[9]
    public function getImage_0(): BufferedImage;


    // withScale(double)[11]
    public function withScale_1(scale: Float): MutableImage;


    // muteColor(java.awt.Color)[13]
    public function muteColor_1(newColor: Color): MutableImage;


    // muteTransparentColor(java.awt.Color)[15]
    public function muteTransparentColor_1(newColor: Color): MutableImage;


    // monochrome()[17]
    public function monochrome_0(): MutableImage;


    // getScale()[19]
    public function getScale_0(): Float;

}
