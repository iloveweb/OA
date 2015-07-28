<%@ page language="java" import="java.util.*,java.sql.*,tools.*" pageEncoding="UTF-8"%>
<jsp:useBean id="con" class="tools.DBBean" scope="page"></jsp:useBean>
<%
//request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Tools t=new Tools();
String zhangh=request.getParameter("zhangh");
zhangh=t.getS(zhangh);
String pws=request.getParameter("pws");
String zhenshi=request.getParameter("zhenshi");
zhenshi=t.getS(zhenshi);
String nc=request.getParameter("nc");
nc=t.getS(nc);
String gangw=request.getParameter("gangw");
gangw=t.getS(gangw);
String bum=request.getParameter("bum");
bum=t.getS(bum);
System.out.print(bum);
String mail=request.getParameter("mail");
String shouj=request.getParameter("shouj");
String phone=request.getParameter("phone");
String zhu=request.getParameter("zhu");
zhu=t.getS(zhu);
String ip=request.getRemoteHost();

String Add_time=(new java.util.Date()).toLocaleString();//以指定格式显示时间
String sql_s="select zhangh from oa_user where zhangh='"+zhangh+"'";
ResultSet rs=con.executeQuery(sql_s);
//System.out.print("rs=="+rs.next());
if(!rs.next()){
	String sql="insert into oa_user(zhangh,zhangm,name,nic,gangw,bum,mail,shouj,gphone,jzhu,ip,cishu,datime)values('"+zhangh+"','"+
				pws+"','"+zhenshi+"','"+nc+"','"+gangw+"','"+bum+"','"+mail+"','"+shouj+"','"+phone+"','"+zhu+"','"+ip+"','0','"+Add_time+"')";
	con.executeUpdate(sql);
	out.print("1");
}else{
	out.print("2");
}
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhuce.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> </body>
</html>
