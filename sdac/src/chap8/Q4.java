package chap8;//user define exception

class VoteException extends Exception{
	
	public VoteException(String s) {
		super(s);
		
	}
	
}
 public class Q4 {
	 public static void main(String[] args) {
			Q4 ob= new Q4();
			try {
				int age= 19;
				ob.age(age);
			}
			catch(Exception e) {
				System.out.println(e);
			}
		}	
	static void age(int age) throws VoteException {
		if (age<18) {
			throw new VoteException("you are Not Eligible broo");
		}
		else {
			System.out.println("You are Eligible broo");
		}
	}	
}
