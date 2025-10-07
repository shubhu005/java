package Implementor;
import Db.GetConnection;
import Pojo.Product;
import Interface.ProductOperation;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductOperationImpl implements ProductOperation {
    
    @Override
    public List<Product> getAvailableProducts() {
        List<Product> productList = new ArrayList<>();
        try (Connection conn = GetConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement("CALL ViewAvailableProducts(?)")) {
            
            stmt.setInt(1, 0); // consumerID not used in stored procedure
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                productList.add(new Product(
                    rs.getInt("product_id"),
                    rs.getString("product_name"),
                    rs.getInt("quantity"),
                    rs.getDouble("price")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return productList;
    }
}
