package q1.array;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;

public class OperationImp implements Operations {
	/* public static void main(String[] args) { */
	List<EmpPojo> db = new ArrayList<EmpPojo>();

	@Override
	public void insertData(List<EmpPojo> empPojos) {
		Iterator<EmpPojo> iterator = db.iterator();
		db.addAll(empPojos);
		System.out.println("Data inserteddd");

	}

	@Override
	public void deleteData(int id) {
		Iterator<EmpPojo> iterator = db.iterator();
		while (iterator.hasNext()) {
			EmpPojo empPojo = iterator.next();
			if (empPojo.getId() == id) {
				iterator.remove();
				System.out.println("Data deleted....");
			}
		}
	}

	@Override
	public void updateData(int id, String name) {
		Iterator<EmpPojo> iterator = db.iterator();
		while (iterator.hasNext()) {
			EmpPojo empPojo = iterator.next();
			if (empPojo.getId() == id) {
				empPojo.setName(name);
				System.out.println("Data Updated!!!");
			}
		}
	}

	@Override
	public void search(int id) {
		Iterator<EmpPojo> iterator = db.iterator();
		while (iterator.hasNext()) {
			EmpPojo empPojo = iterator.next();
			if (empPojo.getId() == id) {
				System.out.println(empPojo);
				System.out.println("Found !!!!");
			}
		}
	}

	@Override
	public void showData() {
		Iterator<EmpPojo> iterator = db.iterator();
		while (iterator.hasNext()) {
			EmpPojo empPojo = iterator.next();
			System.out.println(empPojo);
		}
	}

}
