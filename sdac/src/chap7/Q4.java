package chap7;
//hash code
import java.util.Objects;

class Employ{
	String name;
	int id;
	
	public Employ(String name, int id) {
		
		this.name = name;
		this.id = id;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, name);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Employ other = (Employ) obj;
		return id == other.id && Objects.equals(name, other.name);
	}	
}
public class Q4 {
	public static void main(String[] args) {
		Employ employ = new Employ("shubhangi", 49);
		Employ employ1 = new Employ("shubhangi", 49);
		System.out.println(employ);
		System.out.println(employ1);
		System.out.println(employ.equals(employ1));
	}
}

