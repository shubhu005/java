package chap12;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
public class Q3 {
public static void main(String[] args) {
	Properties properties = new Properties();
	properties.put("India","new delhii");
	properties.put("Pakistan","islamabad");
	properties.put("Spain","madrid");
	properties.put("USA","Wd");
	
	Set set=properties.keySet();
	Iterator iterator=set.iterator();
	while (iterator.hasNext()) {
		String string =(String)iterator.next();
		System.out.println(string+ " "+properties.getProperty(string));
		
	
}
	String string2=properties.getProperty("China","Not Found");
	String string3=properties.getProperty("India","Not Found");
	System.out.println("_____________________________\n");
	System.out.println(string2);
	System.out.println(string3);
	
}
}
