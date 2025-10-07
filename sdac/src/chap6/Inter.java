package chap6;
interface A
{
	public static final int a=10;
	public abstract void meth();
}	
class C implements A
{
	public void meth ()
	{
		System.out.println(" Interface");
	}
}
public class Inter{
	public static void main (String args[])
	{
		C b = new C();
		b.meth();
}
}