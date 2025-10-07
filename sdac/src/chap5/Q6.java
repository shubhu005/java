package chap5;
class P
{
	void meth1(int a)
	{
		System.out.println("a");
	}
	void meth1(int a,int b)
	{
		System.out.println("a+b");
	}
}
class Q extends P
{
	void meth2()
	{
		System.out.println("B");
	}
}
class M extends Q{
	void meth2()
	{
		System.out.println("C");
	}
}
public class Q6
{
	public static void main(String args[])
	{
		P p = new P();
		p.meth1(10);
		p.meth1(10,20);
		M m = new M();
		m.meth2();
	}
}