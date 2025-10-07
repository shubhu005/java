//constructor with parameter
package chap32;

class Student{
	String name;
	int age;
	
	Student (String name,int age){
		this.name=name;
		this.age=age;	
	}
	 void displayInfo() {
		 System.out.println("Name :"+name);
		 System.out.println("Age :"+age);
	}
}

public class Main {
	public static void main(String[] args) {
		Student student = new Student("shubhangi",22);
		student.displayInfo(); 
	}
	
}
