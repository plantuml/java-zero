package zava.lang;

using hx.strings.Strings;

class JZStringUtils {
	public static function matches(me:String, pattern:String):Bool {
		final r = new EReg(pattern, "");
		return r.match(me);
	}

	// https://code.haxe.org/category/beginner/regular-expressions.html
	// https://api.haxe.org/EReg.html
	public static function jz_split(me:String, pattern:String):Array<String> {
		final regexp:EReg = new EReg(pattern, "g");
		final result = regexp.split(me);
		return result;
	}
}
