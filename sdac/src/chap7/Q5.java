
package chap7;//finalize

class Empl {
	String name;
	int id;

	public Empl(String name, int id) {

		this.name = name;
		this.id = id;
	}

	@Override
	protected void finalize() throws Throwable {
		System.out.println("object deleted");
	}
}

public class Q5 {
	public static void main(String[] args) {
		Empl empl = new Empl("shubhangi", 49);
		// System.out.println(empl);
		empl = null;
		System.gc();
	}
}
