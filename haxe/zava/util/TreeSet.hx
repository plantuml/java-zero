package zava.util;

class TreeSet<T> implements Set<T> {
	// https://code.haxe.org/category/beginner/maps.html
	private final data:Map<String, Bool> = new Map<String, Bool>();

	public function new() {}

	public function size():Int {
		var nb:Int = 0;
		for (value in data)
			nb++;
		return nb;
	}

	public function add(element:T):Bool {
		final asString:String = cast(element, String);

		if (data.exists(asString))
			return false;

		data[asString] = true;
		return true;
	}
}
