package chap1;

class Accn {
	void CalSal(double sal) {
		System.out.println(sal);
	}
	void CalSal(double sal, double tax) {
		System.out.println(sal - tax);
	}

	void CalSal(double sal, double tax, double bonus) {
		System.out.println(sal - tax - bonus);
	}	
}
public class Q4 {
	public static void main(String[] args) {
		Accn ac = new Accn();
		ac.CalSal(12000);
		ac.CalSal(12000, 4500);
		ac.CalSal(500000, 4510, 7800);
	}
}
