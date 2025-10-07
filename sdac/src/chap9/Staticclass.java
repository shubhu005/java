package chap9;

import chap9.Outersample.Inner;

class Outter {
	static private int a = 10;

	static class Inner {
		static void innermeth() {
			System.out.println(a);
		}
	}

	void outermeth() {

	}
}

public class Staticclass {
	public static void main(String[] args) {
		Outter out = new Outter();
		Outter.Inner inner = new Outter.Inner();
		inner.innermeth();

	}
}
