package meineservlets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;
import java.sql.Date;



public class IOManager {

	static Connection con = null;
	static Statement stmt = null;
	static ResultSet rs = null;
	
	public static void main(String[] args) {
	try{
		
	con = DriverManager.getConnection("jdbc:mysql://localhost/", "root", "");	
	stmt = con.createStatement();
	rs = stmt.executeQuery("SELECT * FROM user");
	
	while (rs.next()) {
		System.out.println(rs.getString("name"));
		
	}
	 
	}catch (Exception ex){
	System.out.println("false");
	}
	
	}
}