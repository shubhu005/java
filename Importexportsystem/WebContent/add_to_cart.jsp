<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.List, Implementor.CartDAO, Pojo.CartItem, java.sql.Connection, Db.GetConnection, java.sql.PreparedStatement, java.sql.ResultSet"%>

<%
	Connection conn = GetConnection.getConnection();

// Get port_id from session
Integer portId = (Integer) session.getAttribute("port_id");
if (portId == null) {
	response.sendRedirect("login.jsp");
	return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Consumer Dashboard</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
body {
	background-color: #ffffff;
	font-family: 'Poppins', sans-serif;
	display: flex;
	flex-direction: column;
	min-height: 100vh;
}

.container {
	margin-top: 30px;
	flex-grow: 1;
}

.navbar {
	background-color: #1d3557;
	padding: 15px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

.navbar-brand, .navbar-nav .nav-link {
	color: white;
	font-weight: bold;
}

.navbar-toggler {
	background-color: white;
}

.sidebar {
	height: 100vh;
	width: 270px;
	position: fixed;
	top: 0;
	left: -270px;
	background-color: #457b9d;
	padding-top: 20px;
	transition: 0.4s;
	z-index: 1000;
}

.sidebar a {
	padding: 15px;
	display: block;
	color: white;
	text-decoration: none;
	font-size: 18px;
}

.sidebar a:hover {
	background-color: #a8dadc;
}

.sidebar.active {
	left: 0;
}

.card {
	border-radius: 10px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease;
	background: #fff;
}

.card:hover {
	transform: scale(1.05);
}

.card h5 {
	color: #1d3557;
	font-weight: bold;
}

.btn-primary {
	background-color: #e63946;
	border: none;
}

.btn-primary:hover {
	background-color: #d62828;
}

footer {
	background-color: #1d3557;
	color: white;
	padding: 20px;
	text-align: center;
	margin-top: auto;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark">
		<button class="toggle-btn" onclick="toggleSidebar()">
			<i class="fas fa-bars"></i>
		</button>
		<a class="navbar-brand ms-5" href="home.jsp">PortCommerce</a>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="add_to_cart.jsp">Products</a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp">My
						Cart</a></li>
				<li class="nav-item"><a class="nav-link" href="ConsumerViewOrder.jsp">My
						Orders</a></li>
				<li class="nav-item"><a class="nav-link"
					href="orderhistory.jsp">Order History</a></li>
				<li class="nav-item"><a class="nav-link" href="profile.jsp">My
						Profile</a></li>
			</ul>
		</div>
	</nav>

	<div class="sidebar" id="sidebar">
		<span class="close-btn" onclick="toggleSidebar()">×</span> <a
			class="nav-link" href="home.jsp">Home</a> <a class="nav-link"
			href="add_to_cart.jsp">Products</a> <a class="nav-link"
			href="cart.jsp">My Cart</a> <a class="nav-link" href="order.jsp">My
			Orders</a> <a class="nav-link" href="orderhistory.jsp">Order History</a>
		<a class="nav-link" href="profile.jsp">My Profile</a>
	</div>

	<div class="container">
		<h2 class="text-center mb-4">Available Products</h2>
		<div class="row">
			<%
				String query = "SELECT * FROM products";
			try {
				PreparedStatement stmt = conn.prepareStatement(query);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
					int productId = rs.getInt("product_id");
					String name = rs.getString("product_name");
					int quan = rs.getInt("quantity");
					double price = rs.getDouble("price");
			%>
			<div class="col-md-4">
				<div class="card p-3 my-3">
					<h5><%=name%></h5>
					<p>
						<strong>Price:</strong> $<%=price%></p>
					<p>
						<strong>Quantity:</strong>
						<%=quan%></p>
					<form action="CartController" method="post">
						<input type="hidden" name="port_id" value="<%=portId%>"> <input
							type="hidden" name="product_id" value="<%=productId%>"> <input
							type="hidden" name="quantity" value="1">
						<button type="submit" class="btn btn-primary" name="action"
							value="add">Add to Cart</button>
					</form>
				</div>
			</div>
			<%
				}
			rs.close();
			stmt.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</div>
	</div>

	<script>
		function toggleSidebar() {
			document.getElementById("sidebar").classList.toggle("active");
		}
	</script>

	<footer>
		<p>&copy; 2025 PortCommerce. All rights reserved.</p>
	</footer>
</body>
</html>
