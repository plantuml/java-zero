package zava.awt;

class Color {
	final red:Int;
	final green:Int;
	final blue:Int;
	final alpha:Int;

	public function new(red:Int, ?green:Int = -42, ?blue:Int = -42, ?alpha:Int = 255) {
		if (green == -42 && blue == -42 && alpha == 255) {
			final rgb = red;
			this.red = (rgb & 0xFF0000) >> 16;
			this.green = (rgb & 0xFF00) >> 8;
			this.blue = rgb & 0xFF;
			this.alpha = 255;
		} else {
			this.red = red;
			this.green = green;
			this.blue = blue;
			this.alpha = alpha;
		}
	}

	public function getRed():Int {
		return red;
	}

	public function getGreen():Int {
		return green;
	}

	public function getBlue():Int {
		return blue;
	}

	public function getAlpha():Int {
		return alpha;
	}

	public function getRGB():Int {
		return 42;
	}

	public function toString():String {
		return "I AM A COLOR";
	}
}
