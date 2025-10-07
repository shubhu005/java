package con2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Main {
	public static void main(String[] args) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try (ResultSet set = DriverManager.getConnection("jdbc:mysql://localhost:3306/db10", "root", "")
				.createStatement().executeQuery("");) {

			while (set.next()) {
				System.out.println(set.getString(1));
				System.out.println(set.getInt(2));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// connection.close();

	}
}
