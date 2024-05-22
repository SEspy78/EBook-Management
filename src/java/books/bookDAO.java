/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package books;

import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Macbook Pro
 */
public class bookDAO extends DBUtils {

    public boolean addBook(BookDTO b) {
        boolean f = false;
        String sql = "INSERT INTO Book ( title, author, Category, page, image, description, linkbook, user_id)"
                + "VALUES (?,?,?,?,?,?,?,?)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, b.getTitle());
            ps.setString(2, b.getAuthor());
            ps.setString(3, b.getCategory());
            ps.setInt(4, b.getPage());
            ps.setString(5, b.getImg());
            ps.setString(6, b.getDescription());
            ps.setString(7, b.getLink_book());
            ps.setInt(8, b.getUser_id());

            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();

        }
        return f;
    }

    public List<BookDTO> getAllBook() {
        List<BookDTO> list = new ArrayList<BookDTO>();
        String sql = "select * from Book";
        try {

            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                BookDTO b = new BookDTO();
                b.setId(rs.getInt(1));
                b.setTitle(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setCategory(rs.getString(4));
                b.setPage(rs.getInt(5));
                b.setImg(rs.getString(6));
                b.setDescription(rs.getString(7));
                b.setLink_book(rs.getString(8));
                b.setUser_id(rs.getInt(9));
                list.add(b);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    public BookDTO getBookByID(int id) {
        BookDTO b = new BookDTO();
        String sql = "select * from Book where id =?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                b.setId(rs.getInt(1));
                b.setTitle(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setCategory(rs.getString(4));
                b.setPage(rs.getInt(5));
                b.setImg(rs.getString(6));
                b.setDescription(rs.getString(7));
                b.setLink_book(rs.getString(8));
                b.setUser_id(rs.getInt(9));
                return b;
            } else {
                return null;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean UpdateEditBook(BookDTO b) {
        boolean f = false;
        String sql = "UPDATE Book "
                + "SET title = ? , author =? , Category = ?,page = ?, description = ?, linkbook = ? "
                + "WHERE id = ?  ";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, b.getTitle());
            ps.setString(2, b.getAuthor());
            ps.setString(3, b.getCategory());
            ps.setInt(4, b.getPage());
            ps.setString(5, b.getDescription());
            ps.setString(6, b.getLink_book());
            ps.setInt(7 , b.getId());
            int i = ps.executeUpdate();
            if(i==1){
              f = true;
          }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    public boolean deleteBook(int id ){
        boolean f = false ;
        String sql = "delete from Book where id = ?" ;
        try{
            
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            int i = ps.executeUpdate();
            if(i==1){
                f = true;
            }
            
        }catch (Exception e){
           e.printStackTrace();
        }
        return f;
        
    }
    public List<BookDTO> searchBook(String name){
        List<BookDTO> list = new ArrayList<BookDTO>();
        String sql = "select * from Book where title like ?";
        try{
            
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,"%"+ name + "%");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                BookDTO b = new BookDTO();
                b.setId(rs.getInt(1));
                b.setTitle(rs.getString(2));
                b.setAuthor(rs.getString(3));
                b.setCategory(rs.getString(4));
                b.setPage(rs.getInt(5));
                b.setImg(rs.getString(6));
                b.setDescription(rs.getString(7));
                b.setLink_book(rs.getString(8));
                b.setUser_id(rs.getInt(9));
                list.add(b);
            }
            return list;
            
    }catch(SQLException e){
        e.printStackTrace();
    }
   return list;
}
}