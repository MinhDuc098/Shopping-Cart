/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.OrderLine;
import model.bill;

import model.category;
import model.product;
import model.review;

/**
 *
 * @author AS
 */
public class DAO extends DBContext {

    public List<product> getAll() {
        List<product> list = new ArrayList<>();
        String sql = "select * from Product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                category c = getCategory(rs.getInt("cateID"));
                product p = new product(rs.getInt("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("description"), c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public category getCategory(int cid) {
        String sql = "select * from Category where cid=?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                category c = new category(rs.getInt("cid"), rs.getString("cname"));
                return c;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<category> getAllCategory() {
        List<category> list = new ArrayList<>();
        String sql = "select * from Category";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                category c = new category(rs.getInt("cid"), rs.getString("cname"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<product> getProductByCategory(int cid) {
        String sql = "select * from product where cateID=?";
        List<product> list = new ArrayList<>();
        try {
            PreparedStatement pt = connection.prepareStatement(sql);
            pt.setInt(1, cid);
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                category c = getCategory(cid);
                product p = new product(rs.getInt("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("description"), c);
                list.add(p);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public product getProductById(int id) {
        String sql = "select * from product where id = ?";
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setInt(1, id);
            ResultSet rs = p.executeQuery();
            if (rs.next()) {
                category c = getCategory(rs.getInt("cateID"));
                product pd = new product(rs.getInt("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("description"), c);
                return pd;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public List<product> getProductByName(String name) {
        String sql = "select * from product where name like ?";
        List<product> lp = new ArrayList<>();
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setString(1, "%" + name + "%");
            ResultSet rs = p.executeQuery();
            while (rs.next()) {
                category c = getCategory(rs.getInt("cateID"));
                product pd = new product(rs.getInt("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("description"), c);
                lp.add(pd);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return lp;
    }

    public List<product> getProductByPrice(Double price) {
        String sql = "select * from product where price <= ?";
        List<product> lp = new ArrayList<>();
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setDouble(1, price);
            ResultSet rs = p.executeQuery();
            while (rs.next()) {
                category c = getCategory(rs.getInt("cateID"));
                product pd = new product(rs.getInt("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("description"), c);
                lp.add(pd);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return lp;
    }
    
    public List<product> getTopProduct() {
        String sql = "select top(3) * from product order by  price desc";
        List<product> lp = new ArrayList<>();
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            
            ResultSet rs = p.executeQuery();
            while (rs.next()) {
                category c = getCategory(rs.getInt("cateID"));
                product pd = new product(rs.getInt("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("description"), c);
                lp.add(pd);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return lp;
    }
    public List<product> getNewProduct() {
        String sql = "select top(3) * from product order by  id desc";
        List<product> lp = new ArrayList<>();
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            
            ResultSet rs = p.executeQuery();
            while (rs.next()) {
                category c = getCategory(rs.getInt("cateID"));
                product pd = new product(rs.getInt("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("description"), c);
                lp.add(pd);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return lp;
    }
    public List<product> getFeatureProduct() {
        String sql = "select top(3) * from product order by  price";
        List<product> lp = new ArrayList<>();
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            
            ResultSet rs = p.executeQuery();
            while (rs.next()) {
                category c = getCategory(rs.getInt("cateID"));
                product pd = new product(rs.getInt("id"), rs.getString("name"), rs.getString("image"), rs.getDouble("price"), rs.getString("description"), c);
                lp.add(pd);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return lp;
    }
    
    public Account check(String username, String password) {
        String sql = "select *\n"
                + "from Account\n"
                + "where [user] = ? and pass = ? ";
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setString(1, username);
            p.setString(2, password);
            ResultSet r = p.executeQuery();
            if (r.next()) {
                Account a = new Account(r.getInt("uID"), r.getString("user"), r.getString("pass"), r.getInt("isUser"), r.getInt("isAdmin"));
                return a;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateAccount(String user, String pass) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [pass] = ?,>\n"
                + " WHERE user = ?";
         try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setString(1, pass);
            p.setString(2, user);
           
            p.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void insertAccount(String user, String pass) {
        String sql = "insert into Account([user],pass,isAdmin,isUser)\n"
                + "values(?,?,0,1)";
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setString(1, user);
            p.setString(2, pass);
            p.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void deleteProduct(int id) {
        String sql = "delete from product where id = ?";
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setInt(1, id);
            p.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateProduct(int id, String name, String img, Double price, String des, category c) {
        String sql = "UPDATE product\n"
                + "SET name = ?, image = ?, price = ?, description=?, cateID=?\n"
                + "WHERE id = ?";
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setString(1, name);
            p.setString(2, img);
            p.setDouble(3, price);
            p.setString(4, des);
            p.setInt(5, c.getCid());
            p.setInt(6, id);
            p.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void addProduct(String name, String img, Double price, String des, category c) {
        String sql = "insert into product(name,image,price,[description],cateID)\n"
                + "values(?,?,?,?,?)";
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setString(1, name);
            p.setString(2, img);
            p.setDouble(3, price);
            p.setString(4, des);
            p.setInt(5, c.getCid());

            p.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String sql = "select * from Account";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getInt("uID"), rs.getString("user"), rs.getString("pass"), rs.getInt("isAdmin"), rs.getInt("isUser"));
                list.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void deleteAccount(int id) {
        String sql = "delete from Account where uID = ?";
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setInt(1, id);
            p.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<review> getreviewByID(int id) {
        List<review> list = new ArrayList<>();
        String sql = "select * from review where pID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                review acc = new review(rs.getString("uName"), rs.getString("uEmail"), rs.getString("review"), rs.getInt("rate"), rs.getInt("pID"));
                list.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void insertReview(review r) {
        String sql = "insert into review(uName,uEmail,review,rate,pID)\n"
                + "values(?,?,?,?,?)";
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setString(1, r.getName());
            p.setString(2, r.getEmail());
            p.setString(3, r.getReview());
            p.setInt(4, r.getRate());
            p.setInt(5, r.getpID());
            p.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void insertBill(bill r) {
        String sql = "insert into Bill(FirstName,LastName,address,City,Country,ZipCode,telephone,uID)\n"
                + "values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setString(1, r.getFirstName());
            p.setString(2, r.getLastName());
            p.setString(3, r.getAddress());
            p.setString(4, r.getCity());
            p.setString(5, r.getCountry());
            p.setString(6, r.getZipCode());
            p.setString(7, r.getTelephone());
            p.setInt(8, r.getuID());

            p.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public bill getAllBillById(int id) {
        String sql = "select * from Bill where uID = ?";

        try {

            PreparedStatement p = connection.prepareStatement(sql);
            p.setInt(1, id);
            ResultSet rs = p.executeQuery();
            if (rs.next()) {
                bill b = new bill(rs.getString("FirstName"), rs.getString("LastName"), rs.getString("address"), rs.getString("City"), rs.getString("Country"), rs.getString("ZipCode"), rs.getString("telephone"), rs.getInt("uID"));
                return b;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateBill(bill r) {
        String sql = "UPDATE Bill\n"
                + "SET FirstName = ?, LastName = ?, address = ?, City=?, Country=?, ZipCode = ?, telephone = ?\n"
                + "WHERE uID = ?";
        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setString(1, r.getFirstName());
            p.setString(2, r.getLastName());
            p.setString(3, r.getAddress());
            p.setString(4, r.getCity());
            p.setString(5, r.getCountry());
            p.setString(6, r.getZipCode());
            p.setString(7, r.getTelephone());
            p.setInt(8, r.getuID());
            p.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void insertOrderLine(OrderLine o, int id) {
        String sql = "INSERT INTO [dbo].[OrderLine]\n"
                + "           ([pID]\n"
                + "           ,[uID]\n"
                + "           ,[quantity])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?)\n";

        try {
            PreparedStatement p = connection.prepareStatement(sql);
            p.setInt(1, o.getProduct().getId());
            p.setInt(2, id);
            p.setInt(3, o.getQuantity());

            p.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<OrderLine> getOrderLineById(int id) {
        String sql = "select * from OrderLine where uID = ?";
        List<OrderLine> list = new ArrayList<>();
        try {
            PreparedStatement pt = connection.prepareStatement(sql);
            pt.setInt(1, id);
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                product p = getProductById(rs.getInt("pID"));
                OrderLine b = new OrderLine(p, rs.getInt("quantity"));
                list.add(b);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

}
