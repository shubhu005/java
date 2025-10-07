package chap8; //Multicatch

public class Q5 {
	public static void main(String[] args) {
		try {
			int a[] = new int[5];
			a[10] = 10 / 0;
		} catch (ArithmeticException a) {
			System.out.println(a);
		} catch (ArrayIndexOutOfBoundsException b) {
			System.out.println(b);
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
