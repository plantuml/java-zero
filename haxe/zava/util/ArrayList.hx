package zava.util;

class ArrayList<T> implements JZList<T> {
	private final all:Array<T> = [];

	public function new() {}

	public function size():Int {
		return all.length;
	}

	public function add(element:T):Bool {
		all.push(element);
		return true;
	}

	public function get(index:Int):T {
		return all[index];
	}
}
