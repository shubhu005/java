package chap9;

class Outerr{
	void meth1(){
		final int a=20;
		class Inner{
			void meth2() {
				System.out.println("Local Inner: "+a);
			}
		}	
		Inner inner = new Inner();
		inner.meth2();
	}	
}

public class Local {
public static void main(String[] args) {
	Outerr outerr =new Outerr();
	outerr.meth1();
}
}
