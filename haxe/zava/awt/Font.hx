package zava.awt;

class Font {
	public static final PLAIN = 0;
	public static final BOLD = 1;
	public static final ITALIC = 2;

	private final fontFamily:String;
	private final fontStyle:Int;
	private final fontSize:Int;

	public function new(fontFamily:String, fontStyle:Int, fontSize:Int) {
		this.fontFamily = fontFamily;
		this.fontStyle = fontStyle;
		this.fontSize = fontSize;
	}

	public function getFontName():String {
		return "getFontName";
	}

	public function getPSName():String {
		return "getPSName";
	}

	public function toString():String {
		return "toString";
	}

	public function isBold():Bool {
		return fontStyle & BOLD != 0;
	}

	public function isItalic():Bool {
		return fontStyle & ITALIC != 0;
	}

	public function getStyle():Int {
		return fontStyle;
	}

	public function getSize():Int {
		return fontSize;
	}

	public function getSize2D():Float {
		return fontSize;
	}

	public function deriveFont(input:Dynamic):Font {
		if (Std.isOfType(input, Int)) {
			// final i:Int = style;
			// return new Font(fontFamily, i, fontSize);
			return new Font(fontFamily, (input : Int), fontSize);
		} else {
			trace("other");
		}
		return null;
	}
}
