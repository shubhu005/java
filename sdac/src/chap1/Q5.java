package chap1;


class Accnt {
	void CalSal(double sal) {
		System.out.println(sal);
	}
	void CalSal(double sal, double tax) {
		System.out.println(sal - tax);
	}

	void CalSal(double sal, double tax, double bonus) {
		System.out.println(sal - tax - bonus);
	}
	class Emp extends Accnt {
		@Override
		void CalSal(double sal) {
			System.out.println("Emp : " + sal);
		}
		void CalSal(double sal, double tax) {
			System.out.println(sal - tax);
		}

		void CalSal(double sal, double tax, double bonus) {
			System.out.println("Emp :" + (sal - tax + bonus));
		}
	}
}
public class Q5 {
	public static void main(String[] args) {
		Accnt ac = new Accnt();
		ac.CalSal(12000);
		ac.CalSal(12000, 4500);
		ac.CalSal(500000, 4510, 7800);
	}
}
