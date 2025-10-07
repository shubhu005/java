package chap9;
class Outersample{
	private int a=10;
	class Inner{
		void innermeth() {
			System.out.println(a);
		}
	}
	void outermeth() {
		
	}
}
public class Outer {
public static void main(String[] args) {
	Outersample out=new Outersample();
	Outersample.Inner inner = out.new Inner();
	inner.innermeth();
	
}
}
