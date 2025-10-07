package chap5;
class S{
	int a=10;
	void meth1() {
		System.out.println("S");
	}
	public S() {
		System.out.println("constructor");
	}	
}
class R extends S{
	void meth2() {
		System.out.println("hii");
		super.meth1();
	}
	public R() {
		super();
	}
}

public class Q4 {
public static void main(String[] args) {
	R r = new R();
	r.meth1();
	r.meth2();
	
}
}
