package javazero;

import java.util.Comparator;

import spoon.reflect.declaration.CtElement;

public class SourceLineComparator<E extends CtElement> implements Comparator<E> {

	@Override
	public int compare(E a, E b) {
		return a.getPosition().getLine() - b.getPosition().getLine();
	}

}
