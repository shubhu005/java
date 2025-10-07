package connec;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Main {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");

		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/db10", "root", "");

		Statement statement = connection.createStatement();

		ResultSet set = statement.executeQuery("select * from info");
		while (set.next()) {
			System.out.println(set.getString(1));
			System.out.println(set.getInt(2));
		}

		connection.close();

	}
}
