<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Order Status</title>
</head>
<body>
    <h1>Update Order Status</h1>
    <form method="post">
        <label for="order_id">Order ID:</label>
        <input type="number" id="order_id" name="order_id" required><br><br>
        <label for="status">Select Status:</label>
        <select id="status" name="status" required>
            <option value="order_placed">Order Placed</option>
            <option value="shipped">Shipped</option>
            <option value="out_for_delivery">Out for Delivery</option>
            <option value="delivered">Delivered</option>
        </select><br><br>
        <input type="submit" value="Update Status">
    </form>

    <h2>Orders Table</h2>
    <%
        // Fetch seller_id from session
        Integer sellerId = (Integer) session.getAttribute("seller_id");
        if (sellerId == null) {
            response.sendRedirect("login.jsp"); // Redirect to login if not logged in
            return;
        }

        Connection conn = null;
        CallableStatement cstmt = null;
        ResultSet rs = null;

        try {
            // Database connection details
            String url = "jdbc:mysql://localhost:3306/importexportsystem";
            String user = "root";
            String password = "";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);

            // If form is submitted, call the stored function
            if (request.getMethod().equalsIgnoreCase("post")) {
                int orderId = Integer.parseInt(request.getParameter("order_id"));
                String status = request.getParameter("status");

                // Call the stored function
                String sql = "{ ? = call UpdateOrderStatusFunction(?, ?) }";
                cstmt = conn.prepareCall(sql);
                cstmt.registerOutParameter(1, Types.BOOLEAN);
                cstmt.setInt(2, orderId);
                cstmt.setString(3, status);
                cstmt.execute();

                boolean updateSuccessful = cstmt.getBoolean(1);

                if (updateSuccessful) {
                    out.println("<p>Status updated successfully for Order ID: " + orderId + "</p>");
                } else {
                    out.println("<p>Failed to update status. Invalid Order ID or status sequence.</p>");
                }
            }

            // Fetch and display the updated orders table for the logged-in seller
            String selectSql = "SELECT o.order_id, o.order_placed, o.shipped, o.out_for_delivery, o.delivered " +
                                "FROM orders o " +
                                "JOIN products p ON o.product_id = p.product_id " +
                                "WHERE p.seller_id = ?";
            PreparedStatement pstmt = conn.prepareStatement(selectSql);
            pstmt.setInt(1, sellerId);
            rs = pstmt.executeQuery();

            out.println("<table border='1'>");
            out.println("<tr><th>Order ID</th><th>Order Placed</th><th>Shipped</th><th>Out for Delivery</th><th>Delivered</th></tr>");
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("order_id") + "</td>");
                out.println("<td>" + rs.getBoolean("order_placed") + "</td>");
                out.println("<td>" + rs.getBoolean("shipped") + "</td>");
                out.println("<td>" + rs.getBoolean("out_for_delivery") + "</td>");
                out.println("<td>" + rs.getBoolean("delivered") + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            if (rs != null) rs.close();
            if (cstmt != null) cstmt.close();
            if (conn != null) conn.close();
        }
    %>
</body>
</html>