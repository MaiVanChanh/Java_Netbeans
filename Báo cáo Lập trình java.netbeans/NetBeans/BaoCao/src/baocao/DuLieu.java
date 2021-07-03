/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package baocao;

import java.awt.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
//kết nối
public class DuLieu {
     public static Connection getConnection() throws SQLException{
         Connection connection =null;
        try {
           
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url="jdbc:sqlserver://;databaseName=QL_LapTop";
            String name ="sa";
            String pas="123";
            connection=DriverManager.getConnection(url,name,pas);
        } catch (Exception ex) {
            
            ex.printStackTrace();
        }
        return connection;         
    }
    public static void close(Connection con)
    {
        if(con!=null){
            try{
                con.close();               
            }
            catch(SQLException ex){
                
                ex.printStackTrace();
            }
        }
    }
     public static void Excute(String sql)
    {
    
            try {
                Connection connection = DuLieu.getConnection();
                PreparedStatement ps = connection.prepareStatement(sql);
                
                ps.executeUpdate();  
        } catch (SQLException ex) {
            Logger.getLogger(DuLieu.class.getName()).log(Level.SEVERE, null, ex);
        }
   
    }
    public static void main(String[] args) {
        
    }
    //test
    //sql- gọi hàm kiểm tra
    //tìm kiếm :
     public static int KiemTraDuLieu (String sql )
    {
       int a = 0;
        try {
                Connection connection = DuLieu.getConnection();
                PreparedStatement ps = connection.prepareStatement(sql);
                ResultSet rs= null;
                rs=ps.executeQuery();               
                if(rs.next())
                    return 0;
    
                else
                {
                  //   rs=ps.executeQuery();               
               //while(rs.next())
                  // a =1;
                    return 1;
                }
               
        } catch (SQLException ex) {
            Logger.getLogger(DuLieu.class.getName()).log(Level.SEVERE, null, ex);
        }
      return a;
    }
      public static int KiemTraSo (String a)
    {
       for(int i=0;i<a.length();i++)
       {
            if ( a.charAt(i)== '1' || a.charAt(i) == '0' || a.charAt(i)== '2' || a.charAt(i) == '3' ||a.charAt(i)== '4' ||a.charAt(i)== '5' || a.charAt(i) == '6' || a.charAt(i) == '7' || a.charAt(i) == '8' || a.charAt(i) == '9')
               continue;
            return 0;
       }
       return 1;
        
    }
        public static ResultSet Showtb(String sql)
        {
            try {
                 Connection connection = DuLieu.getConnection();
                PreparedStatement ps = connection.prepareStatement(sql);
                return ps.executeQuery();
            } catch (Exception e) {
                 return null;
            }
           
        }
        
    
        
    
}
