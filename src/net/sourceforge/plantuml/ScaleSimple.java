// THIS FILE HAS BEEN GENERATED BY A PREPROCESSOR.
package net.sourceforge.plantuml;

public class ScaleSimple extends ScaleProtected implements Scale {

	private final double scale;

	public ScaleSimple(double scale) {
		this.scale = scale;
	}

	public double getScaleInternal(double width, double height) {
		return scale;
	}
}