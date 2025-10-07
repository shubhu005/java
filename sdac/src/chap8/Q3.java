package chap8;

import java.io.*;	//Exception Propogation

class A {
	void a() throws Exception { // default of java.io
		IOException i = new IOException();
		System.out.println("shubhuuuu");
		throw i;
	}
}

class B {
	void b() throws Exception {
		A a = new A();
		a.a();
	}
}

class C {
	void c() {
		try {
			B b = new B();
			b.b();
		} catch (Exception e) { // Exception is reference object
			System.out.println(e);
		}

	}
}

public class Q3 {
	public static void main(String[] args) {
		C c = new C();
		c.c();

	}
}
