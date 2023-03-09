// THIS FILE HAS BEEN GENERATED BY A PREPROCESSOR.
package net.sourceforge.plantuml.klimt.color;

import java.awt.Color;

public abstract class ColorMapper {

	private ColorMapper() {
	}

	public abstract Color fromColorSimple(HColorSimple simple);

	public final static ColorMapper IDENTITY = new ColorMapper() {
		@Override
		public Color fromColorSimple(HColorSimple simple) {
			return simple.getAwtColor();
		}
	};

}
