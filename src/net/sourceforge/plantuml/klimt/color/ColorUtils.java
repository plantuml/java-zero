// THIS FILE HAS BEEN GENERATED BY A PREPROCESSOR.
package net.sourceforge.plantuml.klimt.color;

import java.awt.Color;

import net.sourceforge.plantuml.utils.MathUtils;

public class ColorUtils {

	public static int getGrayScale(Color color) {
		return getGrayScaleInternalFromRGB(color.getRed(), color.getGreen(), color.getBlue());
	}

	private static int getGrayScaleInternalFromRGB(int red, int green, int blue) {
		// YIQ equation from http://24ways.org/2010/calculating-color-contrast
		final int result = getGrayScaleInternal(red, green, blue) / 1000;
		return result;
	}

	private static int getGrayScaleInternal(int red, int green, int blue) {
		// YIQ equation from http://24ways.org/2010/calculating-color-contrast
		return red * 299 + green * 587 + blue * 114;
	}

	public static int getGrayScaleFromRGB(int rgb) {
		final int red = (rgb & 0x00FF0000) >> 16;
		final int green = (rgb & 0x0000FF00) >> 8;
		final int blue = (rgb & 0x000000FF);
		return getGrayScaleInternalFromRGB(red, green, blue);
	}

	public static Color getGrayScaleColor(Color color) {
		final int grayScale = getGrayScale(color);
		return new Color(grayScale, grayScale, grayScale);
	}

	public static Color getGrayScaleColorReverse(Color color) {
		final int grayScale = 255 - getGrayScale(color);
		return new Color(grayScale, grayScale, grayScale);
	}

	public static int distance(Color c1, Color c2) {
		final int diffRed = MathUtils.abs(c1.getRed() - c2.getRed());
		final int diffGreen = MathUtils.abs(c1.getGreen() - c2.getGreen());
		final int diffBlue = MathUtils.abs(c1.getBlue() - c2.getBlue());
		return getGrayScaleInternal(diffRed, diffGreen, diffBlue);
	}


}