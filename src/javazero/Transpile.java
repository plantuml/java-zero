package javazero;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import spoon.Launcher;
import spoon.SpoonAPI;
import spoon.reflect.declaration.CtClass;
import spoon.reflect.declaration.CtEnum;
import spoon.reflect.declaration.CtInterface;
import spoon.reflect.declaration.CtPackage;
import spoon.reflect.declaration.CtType;

// https://learnxinyminutes.com/docs/haxe/
public class Transpile {

	public static void main(String[] args) throws IOException {
		SpoonAPI spoon = new Launcher();
		spoon.addInputResource("src/jztest");
		spoon.addInputResource("src/review");
		spoon.addInputResource("src/net");

		spoon.buildModel();

		final List<TranspilableFile> all = new ArrayList<>();

		// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/reflect/declaration/CtPackage.html
		for (CtPackage pck : spoon.getModel().getAllPackages()) {
			// https://spoon.gforge.inria.fr/mvnsites/spoon-core/apidocs/spoon/reflect/declaration/CtPackage.html
			for (CtType type : pck.getTypes()) {
				if (type.isEnum())
					all.add(new TranspileEnum((CtEnum) type));
				else if (type instanceof CtClass)
					all.add(new TranspileClass((CtClass) type));
				else if (type instanceof CtInterface)
					all.add(new TranspileInterface((CtInterface) type));
				else {
					throw new NotTranspilable("UNKOWN3666 +" + type.getClass());
					// System.err.println("UNKOWN3666 +" + type.getClass());
				}
			}
		}

		final Path root = Paths.get("haxe");
		for (TranspilableFile zfile : all) {
//			if (!zfile.toString().contains("review.net.sourceforge.plantuml.klimt"))
//			continue;
//			if (!zfile.toString().endsWith(".HColor"))
//			continue;
			System.err.println("Transpile " + zfile);
			final List<String> lines = zfile.toHaxe();

			Files.write(zfile.getPath(root), lines);

		}
	}

}
