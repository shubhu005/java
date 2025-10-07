package q1.array;
import java.util.ArrayList;
import java.util.List;

public class Main {
public static void main(String[] args) {
	EmpPojo empPojo1=new EmpPojo(2, "Shubhangi", 19000);
	EmpPojo empPojo2=new EmpPojo(3, "Priyanshi", 20000);
	EmpPojo empPojo3=new EmpPojo(5, "Tom", 300000);
	EmpPojo empPojo4=new EmpPojo(4, "Jerry", 400000);
	
	List<EmpPojo> empPojos=new ArrayList<EmpPojo>(); //pack the data
	empPojos.add(empPojo1);
	empPojos.add(empPojo2);
	empPojos.add(empPojo3);
	empPojos.add(empPojo4);

	OperationImp imp=new OperationImp();
	imp.insertData(empPojos);
	imp.showData();
	System.out.println("__________________________");
	imp.updateData(4, "harry");
	imp.showData();
	System.out.println("__________________________");
	imp.deleteData(3);
	imp.showData();
	System.out.println("___________________________");
	imp.search(2);
	System.out.println("___________________________");
	imp.showData();
	
}
}
