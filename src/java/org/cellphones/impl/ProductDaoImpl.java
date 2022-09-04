/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.cellphones.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.cellphones.dao.ProductDao;
import org.cellphones.db.MySQLDriver;
import org.cellphones.model.Product;

/**
 *
 * @author toanl
 */
public class ProductDaoImpl implements ProductDao {

    private Connection conn;

    public ProductDaoImpl() {
        conn = MySQLDriver.getInstance().getConnection();
    }

    @Override
    public boolean insert(Product product) {
        String sql = "INSERT INTO PRODUCTS VALUES(NULL, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getImg());
            stmt.setString(3, product.getDesc());
            stmt.setDouble(4, product.getPrice());
            stmt.setInt(5, product.getQuantity());
            stmt.setInt(6, product.getCategoryId());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean update(Product product) {
        String sql = "UPDATE PRODUCTS SET  NAME=?, IMG=?, DESC=?, PRICE=?, QUANTITY=?, CATEGORY_ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getImg());
            stmt.setString(3, product.getDesc());
            stmt.setDouble(4, product.getPrice());
            stmt.setInt(5, product.getQuantity());
            stmt.setInt(6, product.getCategoryId());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(int productId) {
        String sql = "DELETE FROM PRODUCTS WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, productId);
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    @Override
    public List<Product> all() {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT * FROM ProductS";
        try {
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String img = rs.getString("img");
                String desc = rs.getString("desc");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int categoryId = rs.getInt("category_id");

                productList.add(new Product(id, name, img, desc, price, quantity, categoryId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productList;
    }

    @Override
    public Product find(int id) {
        String sql = "SELECT * FROM PRODUCTS WHERE ID=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String img = rs.getString("img");
                String desc = rs.getString("desc");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int categoryId = rs.getInt("category_id");

                return new Product(id, name, img, desc, price, quantity, categoryId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public Product findByName(String name) {
        String sql = "SELECT * FROM PRODUCTS WHERE NAME=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String img = rs.getString("img");
                String desc = rs.getString("desc");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int categoryId = rs.getInt("category_id");

                return new Product(name, img, desc, price, quantity, categoryId);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public List<Product> findByCategoryId(int categoryId) {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT * FROM PRODUCTS WHERE category_id=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, categoryId);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String img = rs.getString("img");
                String desc = rs.getString("desc");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");

                productList.add(new Product(id, name, img, desc, price, quantity, categoryId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productList;
    }

    @Override
    public List<Product> searchByName(String productName) {
        List<Product> productList = new ArrayList<Product>();
        String sql = "SELECT * FROM PRODUCTS WHERE NAME like ?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + productName + "%");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String img = rs.getString("img");
                String desc = rs.getString("desc");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                int categoryId = rs.getInt("category_id");

                productList.add(new Product(id, name, img, desc, price, quantity, categoryId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productList;
    }

     @Override
    public int countProduct() {
        String sql = "SELECT COUNT(*) AS count FROM products";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int countProduct = rs.getInt("count");
                return countProduct;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

}
