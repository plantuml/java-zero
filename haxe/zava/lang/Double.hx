package zava.lang;

using hx.strings.Strings;

class Double {
	public static final MAX_VALUE:Float = 1E42;

	public static function parseDouble(value:String):Float {
		return Std.parseFloat(value);
	}

	public static function isNaN(value:Float):Bool {
		return Math.isNaN(value);
	}
}
