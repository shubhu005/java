<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, Implementor.CartDAO, Pojo.CartItem, java.sql.Connection, Db.GetConnection, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.*"%>

<%
    
    Connection conn = null;

    try {
        conn = GetConnection.getConnection();
    } catch (Exception e) {
        e.printStackTrace();
    }
   
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add to Cart</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: white;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .product-card {
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            padding: 20px;
            transition: 0.3s ease-in-out;
            text-align: center;
        }

        .product-card:hover {
            transform: scale(1.05);
        }

        .btn-add {
            background: linear-gradient(to right, #0044cc, #002b80);
            color: white;
            font-weight: bold;
            border-radius: 30px;
            padding: 10px 20px;
            transition: 0.3s ease-in-out;
            border: none;
            width: 100%;
        }

        .btn-add:hover {
            background: linear-gradient(to right, #002b80, #0044cc);
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <div class="container">
        <h2 class="text-center mb-4 text-dark">Product List</h2>

        <%
            // Hardcoded consumer_port_id for testing
            Integer consumerId = 101; // Replace with actual ID
            session.setAttribute("consumerId", consumerId);
        %>

        <div class="row justify-content-center">
         <%   
                
                String query = "SELECT * from products ";

                if (conn != null) {
                    try {
                        PreparedStatement stmt = conn.prepareStatement(query);
                        ResultSet rs = stmt.executeQuery();

                        while (rs.next()) {
                        	%>
            <!-- Sample Product Card -->
            <div class="col-md-4">
                <div class="product-card p-3 text-dark my-5 md-2">
                 <%
                            int productId = rs.getInt(1);
                            String name = rs.getString(2);
                            int quan = rs.getInt(3);
                            double price = rs.getDouble(4);
                            

                           
             %>
                           
                    <h5><%=name %>t</h5>
                    <p><strong>Price:</strong> $<%=price %></p>
                    <p><strong>Quantity:</strong> <%=quan %></p>
                    
                    <form action="CartController" method="post">
                        <input type="hidden" name="consumer_id" value="101">
                        <input type="hidden" name="product_id" value='<%= productId%>'> <!-- Replace with dynamic product_id -->
                        <input type="hidden" name="quantity" value="1">
                        <button type="submit" class="btn btn-add" name="action" value="add">Add to Cart</button>
                    </form>
                </div>
            </div>
             <%
                        } // End while loop

                        // Close resources
                        rs.close();
                        stmt.close();

                    } catch (Exception e) {
                     
                        e.printStackTrace();
                    }
                }
             %>
        </div>
    </div>

</body>
</html>