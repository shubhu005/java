
package com.hospital.staff.doctor.salary;

class Salary {
	protected double calculateSalary(double amt, double tax) {
		return amt - tax;
	}
}

class Comp extends com.hospital.staff.doctor.salary.Salary {
	double netSalary;

	void show() {
		System.out.println(netSalary);
	}
}

public class Main {
	public static void main(String[] args) {
		Comp comp = new Comp();
		comp.netSalary = comp.calculateSalary(1200, 120);
		comp.show();
	}
}
