// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.utils;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.geom.XDimension2D;




class MathUtils {



    // net.sourceforge.plantuml.utils.MathUtils()
    public function new() {
    }




    // abs(int)[8]
    public static function abs_1(a: Int): Int {
return  ( ((a) < (0)) ? -(a) : a ) ;
    }


    // max(double,double)[12]
    public static function max_2(a: Float, b: Float): Float {
return Math.max(a, b);
    }


    // max(double,double,double)[16]
    public static function max_3(a: Float, b: Float, c: Float): Float {
return MathUtils.max_2(MathUtils.max_2(a, b), c);
    }


    // max(double,double,double,double)[20]
    public static function max_4(a: Float, b: Float, c: Float, d: Float): Float {
return MathUtils.max_2(MathUtils.max_2(a, b), MathUtils.max_2(c, d));
    }


    // max(double,double,double,double,double)[24]
    public static function max_5(a: Float, b: Float, c: Float, d: Float, e: Float): Float {
return MathUtils.max_2(MathUtils.max_3(a, b, c), MathUtils.max_2(d, e));
    }


    // min(double,double)[28]
    public static function min_2(a: Float, b: Float): Float {
return Math.min(a, b);
    }


    // min(double,double,double)[32]
    public static function min_3(a: Float, b: Float, c: Float): Float {
return MathUtils.min_2(MathUtils.min_2(a, b), c);
    }


    // min(double,double,double,double)[36]
    public static function min_4(a: Float, b: Float, c: Float, d: Float): Float {
return MathUtils.min_2(MathUtils.min_2(a, b), MathUtils.min_2(c, d));
    }


    // min(double,double,double,double,double)[40]
    public static function min_5(a: Float, b: Float, c: Float, d: Float, e: Float): Float {
return MathUtils.min_2(MathUtils.min_3(a, b, c), MathUtils.min_2(d, e));
    }


    // limitation(double,double,double)[44]
    public static function limitation_3(v: Float, min: Float, max: Float): Float {
if (((min) >= (max))) {
return v;
// throw new IllegalArgumentException("min="+min+" max="+max+" v="+v);
}

if (((v) < (min))) {
return min;
}

if (((v) > (max))) {
return max;
}

return v;
    }


    // maxDim(net.sourceforge.plantuml.klimt.geom.XDimension2D,net.sourceforge.plantuml.klimt.geom.XDimension2D)[59]
    public static function maxDim_2(dim1: XDimension2D, dim2: XDimension2D): XDimension2D {
return new XDimension2D(Math.max(dim1.getWidth_0(), dim2.getWidth_0()), Math.max(dim1.getHeight_0(), dim2.getHeight_0()));
    }


    // maxDim(net.sourceforge.plantuml.klimt.geom.XDimension2D,net.sourceforge.plantuml.klimt.geom.XDimension2D,net.sourceforge.plantuml.klimt.geom.XDimension2D)[64]
    public static function maxDim_3(dim1: XDimension2D, dim2: XDimension2D, dim3: XDimension2D): XDimension2D {
return new XDimension2D(MathUtils.max_3(dim1.getWidth_0(), dim2.getWidth_0(), dim3.getWidth_0()), MathUtils.max_3(dim1.getHeight_0(), dim2.getHeight_0(), dim3.getHeight_0()));
    }

}
