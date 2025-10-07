package q1.array;

public class EmpPojo {
	private int id;
	private String name;
	private double sal;
	
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public double getSal() {
		return sal;
	}
	public EmpPojo(int id, String name, double sal) {
		super();
		this.id = id;
		this.name = name;
		this.sal = sal;
	}
	@Override
	public String toString() {
		return "EmpPojo [id=" + id + ", name=" + name + ", sal=" + sal + "]";
	}
	
	
	
	

}
