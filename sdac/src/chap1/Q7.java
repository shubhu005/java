package chap1;

//Abstract 

abstract class Hospital
{
  static void doct() {
      System.out.println("Doctor Info");
  }

  void admit() {
      System.out.println("Admit Patient");
  }

  abstract void treat();
}

class Govt extends Hospital
{
  void treat() {
      System.out.println("Free Treatment");
  }
}
public class Q7
{
  public static void main(String args[])
  {
      Govt ob = new Govt();
      Hospital.doct();   
      ob.admit();         
      ob.treat();         
  }
}