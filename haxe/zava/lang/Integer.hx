package zava.lang;

import haxe.Exception;

using hx.strings.Strings;

class Integer {
	public static function parseInt(value:String, ?radix:Int = 10):Int {
		if (radix == 16)
			return Std.parseInt("0x"+value);
		if (radix != 10)
			throw new Exception("RADIX NON SUPPORTED");
		return Std.parseInt(value);
	}

	public static function toHexString(value:Int):String {
		return StringTools.hex(value);
	}
}
