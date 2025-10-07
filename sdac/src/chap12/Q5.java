package chap12;

import java.util.*;
import java.util.Collection;

class Emp {
	int id;
	String name;
	double salary;

	Emp(int id, String name, double salary) {
		this.id = id;
		this.name = name;
		this.salary = salary;
	}

	@Override
	public String toString() {
		return id + " " + name + " " + salary;
	}

	int compareTo(Emp o) {

		if (this.id < o.id)
			return -1;
		else if (this.id > o.id)
			return 1;
		else
			return 0;
	}
}

public class Q5 {
	public static void main(String[] args) {

		Emp emp1 = new Emp(9, "Priya", 50000);
		Emp emp2 = new Emp(6, "Jerry", 60000);
		Emp emp3 = new Emp(8, "Dolly", 55000);

		ArrayList<Emp> emps = new ArrayList<Emp>();
		emps.add(emp1);
		emps.add(emp2);
		emps.add(emp3);

		System.out.println("Before sorting:");
		Iterator<Emp> itr = emps.iterator();
		while (itr.hasNext()) {
			Emp emp = (Emp) itr.next();
			System.out.println(emp);
		}
		
		System.out.println("After sorting:");
		Collections.sort(emps, new SalaryComparator());
		Iterator<Emp> itr2 = emps.iterator();
		while (itr2.hasNext()) {
			Emp emp = (Emp) itr2.next();
			System.out.println(emp);
		}

	

	}
}
