package zava.util;

import haxe.Exception;

class Objects {
	public static function requireNonNull(x) {
		if (x == null)
			new Exception("ERROR requireNonNull");
		return x;
	}
}
