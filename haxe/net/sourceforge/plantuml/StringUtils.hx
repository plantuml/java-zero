// THIS FILE HAS BEEN GENERATED.

package net.sourceforge.plantuml;

import zava.lang.*;
import haxe.Exception;
using hx.strings.Strings;
using zava.lang.JZStringUtils;




class StringUtils {



    // net.sourceforge.plantuml.StringUtils()
    public function new() {
    }




    // goUpperCase(java.lang.String)[16]
    public static function goUpperCase_1(s: String): String {
return s.toUpperCase();
    }


    // goLowerCase(java.lang.String)[20]
    public static function goLowerCase_1(s: String): String {
return s.toLowerCase();
    }


    // eventuallyRemoveStartingAndEndingDoubleQuote(java.lang.String,java.lang.String)[24]
    public static function eventuallyRemoveStartingAndEndingDoubleQuote_2(s: String, format: String): String {
if (((s) == (null))) {
return null;
}

if (((((((format.contains("\"")) && (((s.length) > (1))))) && (StringUtils.isDoubleQuote_1(s.charAt(0))))) && (StringUtils.isDoubleQuote_1(s.charAt(((s.length) - (1))))))) {
return s.substring(1, ((s.length) - (1)));
}

if (((((format.contains("(")) && (s.startsWith("(")))) && (s.endsWith(")")))) {
return s.substring(1, ((s.length) - (1)));
}

if (((((format.contains("[")) && (s.startsWith("[")))) && (s.endsWith("]")))) {
return s.substring(1, ((s.length) - (1)));
}

if (((((format.contains(":")) && (s.startsWith(":")))) && (s.endsWith(":")))) {
return s.substring(1, ((s.length) - (1)));
}

return s;
    }


    // eventuallyRemoveStartingAndEndingDoubleQuote(java.lang.String)[44]
    public static function eventuallyRemoveStartingAndEndingDoubleQuote_1(s: String): String {
if (((s) == (null))) {
return s;
}

return StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote_2(s, "\"([:");
    }


    // isDoubleQuote(char)[51]
    public static function isDoubleQuote_1(c: String): Bool {
return ((((((((((c) == ('\"'))) || (((c) == ('“'))))) || (((c) == ('”'))))) || (((c) == ('«'))))) || (((c) == ('»'))));
    }


    // sharp000000(int)[56]
    public static function sharp000000_1(color: Int): String {
var v: Int = ((0xffffff) & (color));
var s: String = (("000000") + (Integer.toHexString(v).toUpperCase()));
s = s.substring(((s.length) - (6)));
return (("#") + (s));
    }

}
