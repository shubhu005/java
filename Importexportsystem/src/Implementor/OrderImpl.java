package Implementor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Db.GetConnection;
import Pojo.Order;
import Interface.OrderOperations;

public class OrderImpl implements OrderOperations {

	@Override
	public List<Order> getOrdersByConsumer(int consumerId) {
		System.out.println("Fetching orders for consumer ID: " + consumerId);

		List<Order> orders = new ArrayList<>();
		String query = "SELECT o.order_id, o.order_date, o.quantity, o.product_id, o.consumer_port_id, "
				+ "o.order_placed, o.shipped, o.out_for_delivery, o.delivered, " + "p.product_name, p.price "
				+ "FROM orders o " + "JOIN products p ON o.product_id = p.product_id "
				+ "WHERE o.consumer_port_id = 21"; // Hardcoded consumer ID

		try (Connection con = GetConnection.getConnection();
				PreparedStatement ps = con.prepareStatement(query);
				ResultSet rs = ps.executeQuery()) {

			if (!rs.isBeforeFirst()) {
				System.out.println("No orders found in DB!");
			}

			while (rs.next()) {
				Order order = new Order(rs.getInt("order_id"), rs.getDate("order_date"), rs.getInt("quantity"),
						rs.getInt("product_id"), rs.getInt("consumer_port_id"), rs.getBoolean("order_placed"),
						rs.getBoolean("shipped"), rs.getBoolean("out_for_delivery"), rs.getBoolean("delivered"),
						rs.getString("product_name"), rs.getDouble("price"));

				orders.add(order);
				System.out.println("Fetched Order: ID=" + order.getOrderId() + ", Product=" + order.getProductName());
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		System.out.println("Total orders retrieved: " + orders.size());
		return orders;
	}

}
