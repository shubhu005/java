package chap7;

class Student implements Cloneable{
String name;
int id;

public Student(String name, int id) {
	this.name = name;
	this.id = id;
}

@Override
public String toString() {
	return "Student [name=" + name + ", id=" + id + "]";
}
@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		return super.clone();
	}
}
public class Q3 {
public static void main(String[] args) throws CloneNotSupportedException {
	Student student=new Student("shubh", 1);
	student.clone();
	Student studclone=(Student)student.clone();
	System.out.println(studclone);
	
}
}
