package chap1;
//Q6 ---> example of has-A
class Hobby{
	String h1;
	String h2;
	
	public Hobby(String h1, String h2){
			this.h1=h1;
			this.h2=h2;	}
	@Override
	public String toString() {
		return "Hobby [h1=" + h1 + ", h2=" + h2 + "]";
	}	}
class Address{
	String areaname;
	String cityname;
	public Address(String areaname,String cityname){
		this.areaname=areaname;
		this.cityname=cityname;
	}
	@Override
	public String toString() {
		return "Address [areaname=" + areaname + ", cityname=" + cityname + "]";
	}	}
class Employee{
	String name;                                        
	int id;
	Address address;  //reference composition 
	Hobby hobby; ///Aggregation
	public Employee(String name,int id, Address address,Hobby hobby)
	{
		 this.name=name;
		 this.id=id;
		 this.address = address;  
		 this.hobby =  hobby;
	}
	@Override
	public String toString() {
		return "Employee [name=" + name + ", id=" + id + ", address=" + address + ", hobby=" + hobby + "]";
	}
}
public class Q6 {
	public static void main(String[] args) {
		Address address = new Address("dahanu","palghar");
	    Hobby hobby = new Hobby("reading","singing");
	    Employee emp = new Employee("shubhangi",1,address , hobby);
		System.out.println(emp);
		System.out.println(emp.address.areaname);
		System.out.println(emp.hobby);
		
	}

}
