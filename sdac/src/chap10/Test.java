package chap10;

class A{
	A meth() {
		return this;
	}
}
class B extends A{
	B meth() {
		return this;
	}
	void show() {
		System.out.println("shubhuu");	
	}
}
public class Test {	
public static void main(String[] args) {
	String s1 ="Tom";
	String s2 ="tomy";
	System.out.println(s2.length());
	System.out.println(s1.length());
	System.out.println(s2.compareTo(s1));
	System.out.println(s2.concat(s1));
	System.out.println(s1.trim());
	System.out.println(s2.replace("t","c"));
	int a = 11;
	String str = String.valueOf(a);
	System.out.println(str);
	B b = new B();
	b.show();
}
}


