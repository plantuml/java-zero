package zava.util;

interface JZMap<K, V> {
	public function put(key:K, value:V):Void;

	public function size():Int;

	public function containsKey(key:K):Bool;

	public function get(key:K):V;
}
