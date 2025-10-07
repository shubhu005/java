package chap7;
import java.lang.reflect.Method;
class Company{
	int a=10;
	public void meth1() {
	}
}
public class Q7 {
public static void main(String[] args) {
	  
	Company comp=new Company();
	Method methods[]=comp.getClass().getMethods();
	for(int i=0;i<methods.length;i++) {
	System.out.println(methods[i]);
	
	}
}
}
