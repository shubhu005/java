package chap1;

class Empl {
	int id = 2;
	double sal = 25000;
	static String comp_name = "sdac";
	static String comp_add = "mum";

	void displyInfo() {
		System.out.println(id + " " + sal);
	}

	static void displayComp() {
		System.out.println("Emp detail : " + comp_name + " , " + comp_add);
	}
}

public class Q2 {
	public static void main(String[] args) {
		Empl empl = new Empl();
		empl.displyInfo();
		Empl.displayComp();

	}

}
