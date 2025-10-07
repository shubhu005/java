//pojo
package chap32;
class Emp {
  private String name;
  private double salary;
  private int id;
  
  public String getName() {
      return name;
  }

  public void setName(String name) {
      this.name = name;
  }

  public double getSalary() {
      return salary;
  }
  public void setSalary(double salary) {
      this.salary = salary;
  }

  public int getId() {
      return id;
  }
  public void setId(int id) {
      this.id = id;
  }
}
public class Q4{
	public static void main(String[] args) {
		Emp emp=new Emp();
		emp.setName("shubhangi");
		emp.setId(1);
		System.out.println(emp.getName()+" "+emp.getId());		
	}
}