package review.objects;

public class PersonImpl implements IPerson {

	private String name;

	public PersonImpl(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public int getNameLenght() {
		return name.length();
	}

}
