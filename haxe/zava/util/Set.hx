package zava.util;

interface Set<T> extends Collection<T> {
	public function add(element:T):Bool;

	public function size():Int;
}
