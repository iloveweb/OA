package oa.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tools.DBBean;
import tools.Tools;

public class login extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		PrintWriter out=response.getWriter();
		Tools t=new Tools();
		String name=request.getParameter("username");
		name=t.getS(name);
		String psw=request.getParameter("password");
		try{
			DBBean db=new DBBean();
			String sql="select * from oa_user where zhangh='"+name+"'and zhangm='"+psw+"'";
			ResultSet rs=db.executeQuery(sql);
			if(rs.next()){
				rs.first();
				String num=rs.getString("cishu");
				int number=Integer.parseInt(num);
				number+=1;
				String date=(new java.util.Date()).toLocaleString();
				String sq="update oa_user set cishu='"+number+"',datime='"+date+"' where zhangh='"+name+"'";
				db.executeUpdate(sq);
				HttpSession session=request.getSession(true);
				session.setAttribute("name", name);
				response.sendRedirect("index.jsp");
			}
			else{
				response.sendRedirect("zhuce.html");
			}
		}catch(Exception e){
			out.print(e);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
