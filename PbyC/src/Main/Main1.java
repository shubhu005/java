package Main;
import Consumer.Employ;
import Consumer.Manager;

public class Main1 {

	public static void main(String[] args) {
		Employ emp= new Employ();
		Manager manager=new Manager();
		System.out.println(emp.cal(10000));
		System.out.println(emp.cal(14500, 5000));
		System.out.println(emp.cal(20000,15500, 2000));
		System.out.println(manager.cal(14500,100));
		
	}
	
}
