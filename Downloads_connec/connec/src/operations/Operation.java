package operations;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import con3.GetConnection;

public class Operation implements Operations {

	@Override
	public void insertData() {

		try {
			PreparedStatement statement = GetConnection.getConnection()
					.prepareStatement("insert into info values(?,?)");

			statement.setString(1, "peter");
			statement.setInt(2, 3);

			statement.executeUpdate();
			System.out.println("data inserted...");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void updatedata() {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteData() {
		// TODO Auto-generated method stub

	}

	@Override
	public void show() {
		// TODO Auto-generated method stub

	}
	
	public static void main(String[] args) {
		
		Operation op = new Operation();
		op.insertData();
		
		
	}

}
