package zava.lang;

class JZEnum {
	final internalName:String;

	public function new(name:String) {
		this.internalName = name;
	}

	public function name() {
		return internalName;
	}
}
