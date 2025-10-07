//Assignment 1 --> q1 display info with too string
package chap1;

class Emplo {
	String name = "shubhangi";
	int id = 1;
	double sal = 12000;
	String add = "Mum";

	Emplo(String name, int id, double sal,String add){
		this.name = name;
		this.id = id;
		this.sal = sal;
		this.add=add;
		}

	void displayInfo(String name, int id, double sal) {
		System.out.println(name + " " + id + " " + sal + " " + add);
		System.out.println(name);
		System.out.println(id);
		System.out.println(sal);	
		System.out.println(add);
	}
	@Override
	public String toString() {
		return "Emplo [name=" + name + ", id=" + id + ", sal=" + sal + "]";
	}
}

public class Q1 {
	public static void main(String[] args) {
		Emplo emplo = new Emplo("tom",1,12000,"Mumbai");
		System.out.println(emplo);
		emplo.displayInfo("shubhangi", 01, 40000);
	}
}


