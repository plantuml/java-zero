// THIS FILE HAS BEEN GENERATED BY A PREPROCESSOR.
package net.sourceforge.plantuml.style;

import net.sourceforge.plantuml.klimt.UTranslate;
import net.sourceforge.plantuml.klimt.geom.XDimension2D;

public class ClockwiseTopRightBottomLeft {

	private final double top;
	private final double right;
	private final double bottom;
	private final double left;

	public static ClockwiseTopRightBottomLeft same(double value) {
		return new ClockwiseTopRightBottomLeft(value, value, value, value);
	}

	public static ClockwiseTopRightBottomLeft none() {
		return new ClockwiseTopRightBottomLeft(0, 0, 0, 0);
	}

	public static ClockwiseTopRightBottomLeft read(String value) {
		if (value.matches("[0-9 ]+")) {
			final String split[] = value.split(" +");
			if (split.length == 1) {
				final double first = Integer.parseInt(split[0]);
				return new ClockwiseTopRightBottomLeft(first, first, first, first);
			}
			if (split.length == 2) {
				final double first = Integer.parseInt(split[0]);
				final double second = Integer.parseInt(split[1]);
				return new ClockwiseTopRightBottomLeft(first, second, first, second);
			}
			if (split.length == 3) {
				final double first = Integer.parseInt(split[0]);
				final double second = Integer.parseInt(split[1]);
				final double third = Integer.parseInt(split[2]);
				return new ClockwiseTopRightBottomLeft(first, second, third, second);
			}
			if (split.length == 4) {
				final double first = Integer.parseInt(split[0]);
				final double second = Integer.parseInt(split[1]);
				final double third = Integer.parseInt(split[2]);
				final double forth = Integer.parseInt(split[3]);
				return new ClockwiseTopRightBottomLeft(first, second, third, forth);
			}
		}
		return none();
	}

	public static ClockwiseTopRightBottomLeft margin1margin2(double margin1, double margin2) {
		return topRightBottomLeft(margin1, margin2, margin1, margin2);
	}

	public static ClockwiseTopRightBottomLeft topRightBottomLeft(double top, double right, double bottom, double left) {
		return new ClockwiseTopRightBottomLeft(top, right, bottom, left);
	}

	private ClockwiseTopRightBottomLeft(double top, double right, double bottom, double left) {
		this.top = top;
		this.right = right;
		this.bottom = bottom;
		this.left = left;
	}

	public ClockwiseTopRightBottomLeft incTop(double delta) {
		return new ClockwiseTopRightBottomLeft(top + delta, right, bottom, left);
	}

	@Override
	public String toString() {
		return "" + top + ":" + right + ":" + bottom + ":" + left;
	}

	public final double getTop() {
		return top;
	}

	public final double getRight() {
		return right;
	}

	public final double getBottom() {
		return bottom;
	}

	public final double getLeft() {
		return left;
	}


	public UTranslate getTranslate() {
		return new UTranslate(left, top);
	}

	public XDimension2D apply(XDimension2D dim) {
		return new XDimension2D(left + dim.getWidth() + right, top + dim.getHeight() + bottom);
	}

}