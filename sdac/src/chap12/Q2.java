package chap12;

import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.Iterator;

public class Q2 {
@SuppressWarnings("rawtypes")
public static void main(String[] args) {
	Map<Integer,String>map =new HashMap<Integer,String>();
	map.put(1, "A");
	map.put(2, "B");
	map.put(3, "C");
	map.put(4, "D");
	System.out.println(map.keySet());
	System.out.println(map.values());
	System.out.println(map.entrySet());
	System.out.println(map.remove(1, "A"));
	System.out.println(map.entrySet());
	System.out.println(map.containsKey(2));
	System.out.println(map.isEmpty());
	System.out.println(map.replace(3, "Shubhuuu"));
	System.out.println(map.entrySet());
	
	Set set=map.entrySet();
	Iterator iterator=set.iterator();
	while (iterator.hasNext()) {
		Object object = (Object) iterator.next();
		Map.Entry<Integer, String> entry=(Map.Entry<Integer, String>)iterator.next();
		System.out.println(entry.getKey() + " "+entry.getValue());
		
	}	
}
}
