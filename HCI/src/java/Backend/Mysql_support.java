/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author gaurav
 */
public class Mysql_support {

    Connection con;
    Statement st;
    public Mysql_support() throws SQLException, ClassNotFoundException {
        
       Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dude?"
                           , "root", "tiger");
           st=con.createStatement(); 
    }
    
    String [] retprofile(String userid) throws SQLException{
        
        String pr[]=new String[7];
        ResultSet rs;
       
        rs=st.executeQuery("select * from student where userid="+"'"+userid+"'");
        boolean next;
        next = rs.next();
        pr[0]=rs.getString(1);
        pr[1]=rs.getString(2);
        pr[2]=rs.getString(3);
        pr[3]=rs.getString(4);
        pr[4]=rs.getString(5);
        pr[5]=rs.getString(6);
        pr[6]=rs.getString(7);
        
        st.close();
        con.close();
        return pr;
    }
    
    ArrayList<ArrayList<String>> retcsday(String day) throws SQLException{
        
        ArrayList<ArrayList<String>> alist=
                          new ArrayList<ArrayList<String>>();
        
        ResultSet rs;
        rs=st.executeQuery("select * from cs where day='"+day+"'");
        
        while(rs.next()==true){
            
          ArrayList<String> al=new ArrayList<String>();
          al.add(rs.getString(1));
          al.add(rs.getString(2));
          al.add(rs.getString(3));
          al.add(rs.getString(4));
            
          alist.add(al);
        }
        
        
        
        
        return alist;
    }
  
    ArrayList<ArrayList<String>> retes() throws SQLException{
        
        ArrayList<ArrayList<String>> alist=
                       new ArrayList<ArrayList<String>>();
        
        ResultSet rs;
        rs=st.executeQuery("select * from es");
        
        while(rs.next()==true){
            
          ArrayList<String> al=new ArrayList<String>();
          al.add(rs.getString(1));
          al.add(rs.getString(2));
          al.add(rs.getString(3));
            
          alist.add(al);
        }
       
    return alist;
    }
 }
