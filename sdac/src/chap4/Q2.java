package chap4;

class Student{
	String name;
	int id;
	
	public Student(String name, int id) {
		this.name = name;
		this.id = id;
	}
	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		super.finalize();
		System.out.println("object deleted");
	}
}
public class Q2 {
public static void main(String[] args) {
	Student std=new Student("shubhangi", 11);
	//System.out.println(std);
	std=null;
	System.gc();	
}
}
