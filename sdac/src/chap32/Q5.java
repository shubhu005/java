
//local,global static
package chap32;

class Stud{
	String name="Tom"; //global
	static String schoolname="ST John"; //static
	
	void displayInfo() {
		int age = 18;//local
		System.out.println("Name : "+name);
		System.out.println("Age :"+age );

	}
	static void displaySchoolInfo() {
		System.out.println("School Name : "+schoolname);
	}
}

public class Q5 {
	public static void main(String[] args) {
		 Stud ob = new Stud();
		 ob.displayInfo();
		 Stud.displaySchoolInfo();
	}

}
