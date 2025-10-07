
package chap8;

//finally block
public class Q2 {
	public static void main(String[] args) {
		System.out.println("1");
		System.out.println("shubhu");
		System.out.println("shu");
		System.out.println("sadd");
		try {
			int a = 10 / 0;		//ArithmeticException
		} 
		catch (Exception e) {
			System.out.println(e);
		}
		finally {
			System.out.println("mohite");
			System.out.println("1254");
		}
		try {
			String s = null;
			System.out.println(s.length());     //NullPointerException: 
		} 
		catch (Exception s) 
		{	
			System.out.println(s);
		}
		try {
			int a[]=new int[10];		//ArrayIndexOutOfBoundsException
			a[12]=49;
			
		} 
		catch (Exception p) 
		{	
			System.out.println(p);
		}
	}

}
