package zava.lang;

using hx.strings.Strings;

class StringBuilder {
	private var current:String;

	public function new() {
		current = "";
	}

	public function append(data:Dynamic) {}

	public function toString():String {
		return "JE SUIS UN StringBuilder";
	}
}
