package chap6;

abstract class Company {

	void bonus() {
		System.out.println("Non static");

	}
	static void display() {
		System.out.println("Static");

	}
	abstract void work();

	abstract void sal();
}

class Emp extends Company {
	@Override
	void work() {
		System.out.println("work");

	}
	@Override
	void sal() {
		System.out.println("sal");

	}
}

public class Q1 {
	public static void main(String[] args) {
		Emp emp = new Emp();
		emp.sal();
		emp.bonus();
		Emp.display();
	}
}
