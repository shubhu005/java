package chap12;
import java.util.*;

public class Q4 {
    public static void main(String[] args) {
       
        ArrayList<String> names = new ArrayList<>();
        names.add("tom");
        names.add("harry");
        names.add("Charlie");
        names.add("jerry");

        System.out.println("For-each loop :");
        for (String name : names) {
            System.out.println(name);
            System.out.println("________________________");
        }

        System.out.println(" Using Iterator:");
        Iterator<String> itr = names.iterator();
        while (itr.hasNext()) {
            System.out.println(itr.next());
            System.out.println("________________________");
        }

        System.out.println("  ListIterator :");
        ListIterator<String> listItr = names.listIterator();
        while (listItr.hasNext()) {
            System.out.println(listItr.next());
            System.out.println("________________________");
        }

        System.out.println(" ListIterator :");
        while (listItr.hasPrevious()) {
            System.out.println(listItr.previous());
            System.out.println("________________________");
        }

        System.out.println("Enumerator:");
        Vector<String> vector = new Vector<>(names);
        Enumeration<String> en = vector.elements();
        while (en.hasMoreElements()) {
            System.out.println(en.nextElement());
            System.out.println("________________________");
        }
    }
}