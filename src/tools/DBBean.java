/*连接数据库的工具类，本项目使用的是MySQL数据库，也可连接其他数据库*/
package tools;
import java.sql.*;
public class DBBean {

	private Connection conn=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	public Connection getConn(){
		try {
			Class.forName("com.mysql.jdbc.Driver");//com.microsoft.sqlserver.jdbc.SQLServerDriver
             //			System.out.print("驱动OK");
			try {
				conn=DriverManager.getConnection("jdbc:MySQL://localhost:3306/office?user=fyc&password=123");//"jdbc:sqlserver://localhost;databaseName=InternetShopping","fyc","123"
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public ResultSet executeQuery(String sql){// 主要是查询,注意已经将数据库连接取到了，可直接调用了
		
		try {
			conn=this.getConn();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	public int executeUpdate(String sql){  //增加 删除 修改都可以,注意已经将数据库连接取到了，可直接调用了
		int result=0;
		try {
			conn=this.getConn();
			stmt=conn.createStatement();
			result=stmt.executeUpdate(sql);
			//System.out.print("hahahaha");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public void close(){
		try {
			if(rs!=null)
				{
				rs.close();
				rs=null;
				}
			if(stmt!=null)
				{
				stmt.close();
				stmt=null;
				}
			if(conn!=null)
			{
				conn.close();
				conn=null;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
