// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.klimt.color;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.utils.MathUtils;
import zava.awt.Color;




class ColorUtils {



    // net.sourceforge.plantuml.klimt.color.ColorUtils()
    public function new() {
    }




    // getGrayScale(java.awt.Color)[10]
    public static function getGrayScale_1(color: Color): Int {
return ColorUtils.getGrayScaleInternalFromRGB_3(color.getRed(), color.getGreen(), color.getBlue());
    }


    // getGrayScaleInternalFromRGB(int,int,int)[14]
    public static function getGrayScaleInternalFromRGB_3(red: Int, green: Int, blue: Int): Int {
var result: Int = Std.int((ColorUtils.getGrayScaleInternal_3(red, green, blue)) / (1000));
return result;
    }


    // getGrayScaleInternal(int,int,int)[20]
    public static function getGrayScaleInternal_3(red: Int, green: Int, blue: Int): Int {
return ((((((red) * (299))) + (((green) * (587))))) + (((blue) * (114))));
    }


    // getGrayScaleFromRGB(int)[25]
    public static function getGrayScaleFromRGB_1(rgb: Int): Int {
var red: Int = ((((rgb) & (0xff0000))) >> (16));
var green: Int = ((((rgb) & (0xff00))) >> (8));
var blue: Int = ((rgb) & (0xff));
return ColorUtils.getGrayScaleInternalFromRGB_3(red, green, blue);
    }


    // getGrayScaleColor(java.awt.Color)[32]
    public static function getGrayScaleColor_1(color: Color): Color {
var grayScale: Int = ColorUtils.getGrayScale_1(color);
return new Color(grayScale, grayScale, grayScale);
    }


    // getGrayScaleColorReverse(java.awt.Color)[37]
    public static function getGrayScaleColorReverse_1(color: Color): Color {
var grayScale: Int = ((255) - (ColorUtils.getGrayScale_1(color)));
return new Color(grayScale, grayScale, grayScale);
    }


    // distance(java.awt.Color,java.awt.Color)[42]
    public static function distance_2(c1: Color, c2: Color): Int {
var diffRed: Int = MathUtils.abs_1(((c1.getRed()) - (c2.getRed())));
var diffGreen: Int = MathUtils.abs_1(((c1.getGreen()) - (c2.getGreen())));
var diffBlue: Int = MathUtils.abs_1(((c1.getBlue()) - (c2.getBlue())));
return ColorUtils.getGrayScaleInternal_3(diffRed, diffGreen, diffBlue);
    }

}
