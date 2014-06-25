package Database;

import java.lang.reflect.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Logger;

import model.*;
public class DB {
	public static void main(String[] args){
		//for testing
	}
	private DB(){
		try{
			//TODO connect to m
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/B2C.NB","root","");
//			Statement s=con.createStatement();
			logger.info("connection set");
//			 ResultSet rsTables = connection.getMetaData().getTables(null, null, "student", null);  
//             if(rsTables.next()){  
//                 logger.info("student table already exsit");  
//             } else {  
//            	 Statement s=connection.createStatement();
//                 s.executeUpdate("create table student (sid int,name text,gender text,age int,classNum int,password text,birthDate date);");
//                 logger.fine("create student success");
//                 
//             }  
//             rsTables.close();
//             rsTables = connection.getMetaData().getTables(null, null, "Admin", null);  
//             if(rsTables.next()){  
//                 logger.info("admin table already exsit");  
//             } else {  
//            	 Statement s=connection.createStatement();
//                 s.executeUpdate("create table admin (aid int,password text);");
//                 s.executeUpdate("insert into admin values(1,'admin')");
//                 logger.fine("create admin success");
//             }  
//             rsTables.close();
//             rsTables = connection.getMetaData().getTables(null, null, "score", null);  
//             if(rsTables.next()){  
//                 logger.info("score table already exsit");  
//             } else {  
//            	 Statement s=connection.createStatement();
//                 s.executeUpdate("create table score (aid int,className text,score float);");
////                 s.execute("insert into admin values(1,'admin')");
//                 logger.fine("create socre success");
//             }  
//             rsTables.close();
//             connection.close();
             
		}

		catch(Exception e){
			e.printStackTrace();
		}
	}


	public static DB getInstance(){
		return db;
	}
	private static DB db=new DB();
	private Connection connection;
//	private PreparedStatement preparedStatement;
	private Logger logger;


	public NBAdmin validateAdmin(String username,String password){
		try {
			PreparedStatement p=connection.prepareStatement("select * from NBAdmin where username=? and password=?");
			p.setString(1, username);
			p.setString(2, password);
			ResultSet rs=p.executeQuery();
			while(rs.next()){
				NBAdmin admin=new NBAdmin(rs.getString(1),rs.getString(2));
				logger.info("return admin");
				return admin;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.severe("get admin failed");
		return null;

	}
	public ArrayList<NBCategory> getNBCategorys(){
		ArrayList<NBCategory> list=new ArrayList<NBCategory>(100);
		try {
			PreparedStatement p=connection.prepareStatement("select * from NBCategory;");
			ResultSet rs=p.executeQuery();
			while (rs.next()){
				NBCategory tempCateory=new NBCategory(rs.getInt(1),rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5));
				list.add(tempCateory);				
			}
			for (NBCategory temp:list){
				//TODO
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}


	public ArrayList<NBOrder> getNBOrders(){
		ArrayList<NBOrder> list=new ArrayList<NBOrder>(1000);
		Statement s;
		try {
			s = connection.createStatement();
			ResultSet rs = s.executeQuery("select * from NBOrder");
			while(rs.next()){
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	public ArrayList<NBOrderInfo> getNBOrderInfos(){
		return null;
	}
	public ArrayList<NBProduct> getNBProducts(){
		return null;

	}
	public ArrayList<NBProductComment> getProductComments(){
		return null;

	}
	public ArrayList<NBUser> getNBUsers(){
		return null;

	}
	public ArrayList <NBUserAddress> getNBUserAddress(){
		return null;

	}
	public ArrayList<NBVIPCategory> getVIPCategorys(){
		return null;

	}
	public NBOrder getNBOrder(int orderID){
		return null;
	}
	
	public ArrayList<NBOrder> getNBOrdersByUserEmail(String email){
		return null;
	}
	public ArrayList<NBOrderInfo> getNBOrderInfosByNBOrderID(int orderID){
		return null;
	}
	public ArrayList<NBOrderInfo> getNBOrderInfosByNBProductID(int productID){
		return null;
	}
	public NBProduct getNBProductByID(int id){
		return null;
	}
	public ArrayList<NBProduct> getNBProductsByName(String name){
		return null;
	}
	public ArrayList<NBProductComment> getNBProductCommentsByProductID(int productID){
		return null;
	}
	public ArrayList<NBProductComment> getNBProductCommentsByUserEmail(int productID){
		return null;
	}
	public NBUser getUserByID(int id){
		return null;
	}
	public NBUser getUserByEmail(String email){
		return null;
	}
	public ArrayList<NBUserAddress> getNBUserAddressesByUserEmail(String email){
		return null;
	}
	public ArrayList<NBUserAddress> getNBUserAddressesByUserEmailIncludingInactive(String email){
		return null;
	}
	public NBVIPCategory getNBVCategoryByNBUserEmail(String eamil){
		return null;
	}
	
	
}
