// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.style;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;
import net.sourceforge.plantuml.klimt.UTranslate;
import net.sourceforge.plantuml.klimt.geom.XDimension2D;




class ClockwiseTopRightBottomLeft {
    public var top: Float;
    public var right: Float;
    public var bottom: Float;
    public var left: Float;



    // net.sourceforge.plantuml.style.ClockwiseTopRightBottomLeft(double,double,double,double)
    public function new(top: Float, right: Float, bottom: Float, left: Float) {
this.top = top;
this.right = right;
this.bottom = bottom;
this.left = left;
    }




    // same(double)[14]
    public static function same_1(value: Float): ClockwiseTopRightBottomLeft {
return new ClockwiseTopRightBottomLeft(value, value, value, value);
    }


    // none()[18]
    public static function none_0(): ClockwiseTopRightBottomLeft {
return new ClockwiseTopRightBottomLeft(0, 0, 0, 0);
    }


    // read(java.lang.String)[22]
    public static function read_1(value: String): ClockwiseTopRightBottomLeft {
if (value.matches("[0-9 ]+")) {
var split: Array<String> = value.jz_split(" +");
if (((split.length) == (1))) {
var first: Float = Integer.parseInt(split[0]);
return new ClockwiseTopRightBottomLeft(first, first, first, first);
}

if (((split.length) == (2))) {
var first: Float = Integer.parseInt(split[0]);
var second: Float = Integer.parseInt(split[1]);
return new ClockwiseTopRightBottomLeft(first, second, first, second);
}

if (((split.length) == (3))) {
var first: Float = Integer.parseInt(split[0]);
var second: Float = Integer.parseInt(split[1]);
var third: Float = Integer.parseInt(split[2]);
return new ClockwiseTopRightBottomLeft(first, second, third, second);
}

if (((split.length) == (4))) {
var first: Float = Integer.parseInt(split[0]);
var second: Float = Integer.parseInt(split[1]);
var third: Float = Integer.parseInt(split[2]);
var forth: Float = Integer.parseInt(split[3]);
return new ClockwiseTopRightBottomLeft(first, second, third, forth);
}

}

return ClockwiseTopRightBottomLeft.none_0();
    }


    // margin1margin2(double,double)[51]
    public static function margin1margin2_2(margin1: Float, margin2: Float): ClockwiseTopRightBottomLeft {
return ClockwiseTopRightBottomLeft.topRightBottomLeft_4(margin1, margin2, margin1, margin2);
    }


    // topRightBottomLeft(double,double,double,double)[55]
    public static function topRightBottomLeft_4(top: Float, right: Float, bottom: Float, left: Float): ClockwiseTopRightBottomLeft {
return new ClockwiseTopRightBottomLeft(top, right, bottom, left);
    }


    // incTop(double)[66]
    public function incTop_1(delta: Float): ClockwiseTopRightBottomLeft {
return new ClockwiseTopRightBottomLeft(((top) + (delta)), right, bottom, left);
    }


    // toString()[71]
    public function toString_0(): String {
return (((((((((((((("") + (top))) + (":"))) + (right))) + (":"))) + (bottom))) + (":"))) + (left));
    }


    // getTop()[75]
    public function getTop_0(): Float {
return top;
    }


    // getRight()[79]
    public function getRight_0(): Float {
return right;
    }


    // getBottom()[83]
    public function getBottom_0(): Float {
return bottom;
    }


    // getLeft()[87]
    public function getLeft_0(): Float {
return left;
    }


    // getTranslate()[92]
    public function getTranslate_0(): UTranslate {
return new UTranslate(left, top);
    }


    // apply(net.sourceforge.plantuml.klimt.geom.XDimension2D)[96]
    public function apply_1(dim: XDimension2D): XDimension2D {
return new XDimension2D(((((left) + (dim.getWidth_0()))) + (right)), ((((top) + (dim.getHeight_0()))) + (bottom)));
    }

}
