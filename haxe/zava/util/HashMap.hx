package zava.util;

class HashMap<K, V> implements JZMap<K, V> {
	// https://code.haxe.org/category/beginner/maps.html
	private final data:Map<String, V> = new Map<String, V>();

	public function new() {}

	public function put(key:K, value:V):Void {
		final asString:String = cast(key, String);

		if (data.exists(asString))
			return;

		data[asString] = value;
	}

	public function size():Int {
		var nb:Int = 0;
		for (value in data)
			nb++;
		return nb;
	}

	public function containsKey(key:K):Bool {
		throw new haxe.exceptions.NotImplementedException();
	}

	public function get(key:K):V {
		throw new haxe.exceptions.NotImplementedException();
	}
}
