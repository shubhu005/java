package chap9;

interface Emp{
	 void a();	
}
abstract class Student{
	void b() {
		
	}
}
class Manager{
	void c() {
		
	}
}
public class Anonymous {
	public static void main(String[] args) {
		Emp emp = new Emp() {
			@Override
			public void a() {
				System.out.println("hello");
			}
		};
		emp.a();
		Student std = new Student() 
		 {
			@Override
			void b() {
				System.out.println("hii");
			}
		};
		std.b();
		Manager manager = new Manager() {
			@Override
			void c() {
				System.out.println("How r uuu!!!");
			}
		};
		manager.c();
	}
}
