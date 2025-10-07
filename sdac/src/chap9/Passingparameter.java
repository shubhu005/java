package chap9;	//Passsing parameter
class M {
	void m() {
	}
}
class N {
	void n() {
	}
}
class O {
	void o(M m, N n) {
		m.m();
		n.n();
	}
}
public class Passingparameter {
public static void main(String[] args) {
	O ob = new O();
	ob.o(new M() {
       @Override
		void m()  {
			System.out.println("M");
		}
	},new N() {
		@Override
		void n(){
			System.out.println("N");
		}
	}
);
}}

