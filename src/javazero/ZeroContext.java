package javazero;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import spoon.reflect.declaration.CtClass;

public class ZeroContext {

	private final List<String> anonymousClasses = new ArrayList<>();

	public void addAnonymousClass(CtClass<?> anonymousClass) {
		final TranspileAnonymousClass trans = new TranspileAnonymousClass(anonymousClass);
		anonymousClasses.addAll(trans.toHaxe());
	}

	public final List<String> getAnonymousClasses() {
		return Collections.unmodifiableList(anonymousClasses);
	}

}
