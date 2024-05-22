/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package User;

import Utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author Macbook Pro
 */
public class userDAO extends DBUtils{
    
    public boolean Register(UserDTO us){
        boolean f = false;
    String sql ="insert into Users(name,username,email,password,role_id) values(?,?,?,?,1)";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, us.getName());
            ps.setString(2, us.getUsername());
            ps.setString(3, us.getEmail());
            ps.setString(4, us.getPassword());
            
           int i = ps.executeUpdate();
           
            if (i == 1) {
                f = true;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return f;
    }
    public UserDTO Login(String username, String password){
        UserDTO us = new UserDTO() ;
       
        String sql = "select * from Users where username = ? and password = ?";
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                us.setId(rs.getInt(1));
                us.setName(rs.getString(2));
                us.setUsername(rs.getString(3));
                us.setEmail(rs.getString(4));
                us.setPassword(rs.getString(5));
                us.setRole_id(rs.getInt(6));
            return us;
            }
            
        } catch (Exception e) {
             e.printStackTrace();
         }
        
        
        return null ;
    }

}