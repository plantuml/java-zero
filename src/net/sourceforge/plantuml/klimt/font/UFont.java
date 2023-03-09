// THIS FILE HAS BEEN GENERATED BY A PREPROCESSOR.
package net.sourceforge.plantuml.klimt.font;

import java.awt.Font;
import java.awt.GraphicsEnvironment;
import java.util.HashSet;
import java.util.Set;

import net.sourceforge.plantuml.StringUtils;

public class UFont {

	private final Font font;
	private final String family;


	public String toStringDebug() {
		final StringBuilder sb = new StringBuilder();
		sb.append(getPortableFontName());
		sb.append("/");
		sb.append(font.getSize());
		return sb.toString();
	}

	public static UFont build(String fontFamily, int fontStyle, int fontSize) {
		return new UFont(buildFont(fontFamily, fontStyle, fontSize), fontFamily);
	}

	private UFont(Font font, String family) {
		this.font = font;
		this.family = family;
	}

	private static Font buildFont(String fontFamily, int fontStyle, int fontSize) {
		if (fontFamily.contains(","))
			for (String name : fontFamily.split(",")) {
				name = StringUtils.eventuallyRemoveStartingAndEndingDoubleQuote(name).trim();
				if (doesFamilyExists(name))
					return new Font(fontFamily, fontStyle, fontSize);

			}

		return new Font(fontFamily, fontStyle, fontSize);
	}

	private static boolean doesFamilyExists(String name) {
		 return true;
	}

	public static UFont serif(int size) {
		return UFont.build("Serif", Font.PLAIN, size);
	}

	public static UFont sansSerif(int size) {
		return UFont.build("SansSerif", Font.PLAIN, size);
	}

	public static UFont courier(int size) {
		return UFont.build("Courier", Font.PLAIN, size);
	}

	public static UFont byDefault(int size) {
		return sansSerif(12);
	}

	public UFont goTikz(int delta) {
		return new UFont(new Font("Serif", getStyle(), getSize() + delta), "Serif");
	}

	public static UFont monospaced(int size) {
		return UFont.build("Monospaced", Font.PLAIN, size);
	}

	public final Font getUnderlayingFont(UFontContext context) {
		return font;
	}

	public UFont withSize(float size) {
		return new UFont(font.deriveFont(size), family);
	}

	public UFont withStyle(int style) {
		return new UFont(font.deriveFont(style), family);
	}

	public UFont bold() {
		return withStyle(Font.BOLD);
	}

	public UFont italic() {
		return withStyle(Font.ITALIC);
	}

	public int getStyle() {
		return font.getStyle();
	}

	public int getSize() {
		return font.getSize();
	}

	public double getSize2D() {
		return font.getSize2D();
	}

	public boolean isBold() {
		return font.isBold();
	}

	public boolean isItalic() {
		return font.isItalic();
	}

	public String getFamily(UFontContext context) {
		if (context == UFontContext.EPS) {
			if (family == null)
				return "Times-Roman";

			return font.getPSName();
		}
		if (context == UFontContext.SVG) {
			if (family.equalsIgnoreCase("sansserif"))
				return "sans-serif";

			return family;
		}
		return family;
	}

	// Kludge for testing because font names on some machines (only macOS?) do not
	// end with <DOT><STYLE>
	// See https://github.com/plantuml/plantuml/issues/720
	private String getPortableFontName() {
		final String name = font.getFontName();
		if (font.isBold() && font.isItalic())
			return name.endsWith(".bolditalic") ? name : name + ".bolditalic";
		else if (font.isBold())
			return name.endsWith(".bold") ? name : name + ".bold";
		else if (font.isItalic())
			return name.endsWith(".italic") ? name : name + ".italic";
		else
			return name.endsWith(".plain") ? name : name + ".plain";
	}

	@Override
	public String toString() {
		return font.toString()/* + " " + font.getPSName() */;
	}


}
