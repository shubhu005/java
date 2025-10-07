package pack2;
import pack1.*;
class D{
	public static void main(String[] args) {
		 A ob = new A();
		    System.out.println(ob.a);
			//System.out.println(ob.b);
			//System.out.println(ob.c);
			//System.out.println(ob.d);
	}	
}
class E extends A{
	public static void main(String[] args) {
	E e = new 	E();
	System.out.println(e.a);
	//System.out.println(ob.b);
	System.out.println(e.c);
	//System.out.println(ob.d);
	}
}
//direct access
class F extends pack1.A{
	public static void main(String[] args) {
		 F f = new F();
		 System.out.println(f.a);
		 System.out.println(f.c);	
	}	
}
public class Main{
	public static void main(String[] args) {
		//System.out.println(f.a);
	}
}
