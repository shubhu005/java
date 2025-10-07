package q1.array;

import java.util.List;

public interface Operations {
	void insertData(List<EmpPojo> empPojos);
	void deleteData(int id);
	void updateData(int id,String name);
	void search(int id);
	void showData();
	

}
