/*�������ݿ�Ĺ����࣬����Ŀʹ�õ���MySQL���ݿ⣬Ҳ�������������ݿ�*/
package tools;
import java.sql.*;
public class DBBean {

	private Connection conn=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	public Connection getConn(){
		try {
			Class.forName("com.mysql.jdbc.Driver");//com.microsoft.sqlserver.jdbc.SQLServerDriver
             //			System.out.print("����OK");
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
	
	public ResultSet executeQuery(String sql){// ��Ҫ�ǲ�ѯ,ע���Ѿ������ݿ�����ȡ���ˣ���ֱ�ӵ�����
		
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
	
	public int executeUpdate(String sql){  //���� ɾ�� �޸Ķ�����,ע���Ѿ������ݿ�����ȡ���ˣ���ֱ�ӵ�����
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
