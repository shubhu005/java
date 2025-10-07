package chap7;//too string

class Emp{
	String name;
	int id;
	
	public Emp(String name, int id) {
		super();
		this.name = name;
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "Emp [name=" + name + ", id=" + id + "]";
	}	
}
public class Q6 {
	public static void main(String[] args) {
		Emp emp = new Emp("shubhangi", 49);
		System.out.println(emp);
	}
}
