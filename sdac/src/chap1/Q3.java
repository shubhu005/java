package chap1;

class Employ{
	
void CalSal(double sal) {
	System.out.println(sal);
	
} 
void CalSal(double sal,double tax) {
	System.out.println(sal-tax);
}
void CalSal(double sal,double tax,double bonus) {
	System.out.println(sal-tax+bonus);
}

}
public class Q3 {
	public static void main(String[] args) {
		Employ emp=new Employ();
		emp.CalSal(15000);
		emp.CalSal(140000, 500);
		emp.CalSal(14000, 500, 10000);
	}

}
