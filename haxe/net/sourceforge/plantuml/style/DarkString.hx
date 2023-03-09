// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml.style;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class DarkString {
    public var value1: String;
    public var value2: String;
    public var priority: Int;



    // net.sourceforge.plantuml.style.DarkString(java.lang.String,java.lang.String,int)
    public function new(value1: String, value2: String, priority: Int) {
this.value1 = value1;
this.value2 = value2;
this.priority = priority;
    }




    // mergeWith(net.sourceforge.plantuml.style.DarkString)[16]
    public function mergeWith_1(other: DarkString): DarkString {
if (((other) == (null))) {
return this;
}

if (((((((this.value2) == (null))) && (((other.value2) == (null))))) || (((((this.value1) == (null))) && (((other.value1) == (null))))))) {
if (DarkString.isBigger_2(this.priority, other.priority)) {
return this;
}

return other;
}

if (((((this.value2) == (null))) && (((other.value1) == (null))))) {
return new DarkString(this.value1, other.value2, this.priority);
}

if (((((other.value2) == (null))) && (((this.value1) == (null))))) {
return new DarkString(other.value1, this.value2, other.priority);
}

if (DarkString.isBigger_2(this.priority, other.priority)) {
return this;
}

return other;
// System.err.println("this =" + this);
// System.err.println("other=" + other);
// throw new UnsupportedOperationException();
    }


    // isBigger(int,int)[39]
    public static function isBigger_2(a: Int, b: Int): Bool {
return ((a) > (b));
    }


    // addPriority(int)[47]
    public function addPriority_1(delta: Int): DarkString {
return new DarkString(value1, value2, ((delta) + (priority)));
    }


    // toString()[52]
    public function toString_0(): String {
return ((((((((((value1) + ("/"))) + (value2))) + (" ("))) + (priority))) + (")"));
    }


    // getValue1()[56]
    public function getValue1_0(): String {
return value1;
    }


    // getValue2()[60]
    public function getValue2_0(): String {
return value2;
    }


    // getPriority()[64]
    public function getPriority_0(): Int {
return priority;
    }

}
