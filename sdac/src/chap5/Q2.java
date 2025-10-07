package chap5;

class A {
	A meth() {
		return this;
	}
}

class C extends A {
	C meth() {
		return this;
	}

	void show() {
		System.out.println("covarient return type");
	}
}

public class Q2 {
	public static void main(String[] args) {
		C c = new C();
		c.show();
		c.meth();
		c.meth().show();
		new C().show();
		new C().meth().show();

	}
}
