package chap5;
final class Emp{
	final int a=2;
	final void info() {
		//a=20;
		System.out.println("hello method cant be overriden");
	}
}	
public class Q1 {
	public static void main(String[] args) {
		Emp emp=new Emp();
		System.out.println(emp);
	}

}
