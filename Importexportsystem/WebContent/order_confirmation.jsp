<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.List, Implementor.OrderImpl, Pojo.Order, java.sql.Connection, Db.GetConnection, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Order Confirmation</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container text-center text-dark">
		<%
			Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			conn = GetConnection.getConnection();
			Integer consumerId = (Integer) session.getAttribute("port_id");

			if (consumerId == null) {
				response.sendRedirect("login.jsp");
				return;
			}

			String sql = "SELECT o.order_id, o.consumer_port_id, o.order_date, o.order_placed, o.shipped, o.out_for_delivery, o.delivered, p.product_id, p.product_name, p.price, o.quantity "
			+ "FROM `orders` o " + "INNER JOIN products p ON o.product_id = p.product_id "
			+ "WHERE o.consumer_port_id = ?";

			ps = conn.prepareStatement(sql);
			ps.setInt(1, consumerId);
			rs = ps.executeQuery();
		%>

		<div class="container text-center">
			<div class="row justify-content-center">
				<%
					while (rs.next()) {
					int orderId = rs.getInt("order_id");
					int custId = rs.getInt("consumer_port_id");
					Date orderDate = rs.getDate("order_date");
					boolean placed = rs.getBoolean("order_placed");
					boolean shipped = rs.getBoolean("shipped");
					boolean delivered = rs.getBoolean("delivered");
					int productId = rs.getInt("product_id");
					String productName = rs.getString("product_name");
					double price = rs.getDouble("price");
					int quantity = rs.getInt("quantity");
				%>

				<!-- Product Card -->
				<div class="col-md-4">
					<div class="product-card p-3 text-dark my-5 md-2">
						<h2 class="my-4">Order Placed Successfully!</h2>
						<h5>
							Order ID:
							<%=orderId%></h5>
						<h5>
							Product Name:
							<%=productName%></h5>
						<p>
							<strong>Consumer ID:</strong>
							<%=custId%></p>
						<p>
							<strong>Order Date:</strong>
							<%=orderDate%></p>
						<p>
							<strong>Order Status:</strong>
							<%=placed ? "Placed" : "Not Placed"%></p>
						<p>
							<strong>Shipped:</strong>
							<%=shipped ? "Shipped" : "Not Shipped"%></p>
						<p>
							<strong>Delivered:</strong>
							<%=delivered ? "Delivered" : "Not Delivered"%></p>
						<p>
							<strong>Product ID:</strong>
							<%=productId%></p>
						<p>
							<strong>Price:</strong> $<%=price%></p>
						<p>
							<strong>Quantity:</strong>
							<%=quantity%></p>

						<!-- Updated "Report" Button -->
						<a href="ReportController?product_id=<%=productId%>">
							<button type="button" class="btn btn-add">Report</button>
						</a>
					</div>
				</div>
				<!-- End of Product Card -->

				<%
					} // End of while loop
				%>
			</div>
			<!-- End of row justify-content-center -->
		</div>
		<!-- End of container text-center -->

		<p>Your order has been placed and will be processed soon.</p>
		<a href="add_to_cart.jsp" class="btn btn-primary">Continue
			Shopping</a>

		<%
			} catch (Exception e) {
		e.printStackTrace();
		} finally {
		// Close resources
		if (rs != null)
			rs.close();
		if (ps != null)
			ps.close();
		if (conn != null)
			conn.close();
		}
		%>
	</div>
	<!-- End of container text-center text-dark -->
</body>
</html>