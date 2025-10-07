package chap5;

class RBI{
	float getRoi() {
		return 0;
	}
}
class SBI extends RBI{
	float getRoi() {
		return 7.2f;
		
	}
}
class HDFC extends RBI{
	float getRoi() {
		return 6.2f;
		
	}
}
class ICICI extends RBI{
	float getRoi() {
		return 8.1f;
		
	}
}
public class Q3 {
public static void main(String[] args) {
	RBI r;
	r=new SBI();
	System.out.println("Rate Of Intrest of SBI is :"+r.getRoi());
	r=new HDFC();
	System.out.println("Rate Of Intrest of HDFC is :"+r.getRoi());
	r=new ICICI();
	System.out.println("Rate Of Intrest of ICICI is :"+r.getRoi());
	
}
}
