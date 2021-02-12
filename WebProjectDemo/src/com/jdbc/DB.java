package com.jdbc;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DB{
    public static void main(String[] args){
        DB.getConnection();
    }
    public static Connection getConnection(){
        Connection conn=null;
        Statement stmt=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useSSL = false" , "root", "root");
            System.out.println("connected");
	}catch(Exception e)
        {
            e.printStackTrace();
            System.out.println(e);
        }
	return conn;
	}
}