<%@ page language="java" import = "java.sql.*" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
    <div style=text-align:center>

    <%
    try{
    String username = request.getParameter("name");
    String userpassword = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/News";    //JDBC的URL    
    Connection conn;
    boolean a=true;
    conn = DriverManager.getConnection(url,"root","pwy4225054");
    Statement stmt = conn.createStatement(); //创建Statement对象
    String sql = "select * from employee where name='"+username+"' and password='"+userpassword+"'";    //要执行的SQL
    ResultSet i = stmt.executeQuery(sql);
    if(i.next())    	
    {
    	if(a){
    	String position="reporter";  	
    	ResultSet sr = stmt.executeQuery("select * from employee where position='"+position+"' and name='"+username+"'");
    	if(sr.next()){
    	   session.setAttribute("name",sr.getString(1));
    	   session.setAttribute("gender",sr.getString(2));
    	   session.setAttribute("id",sr.getString(3));
    	   session.setAttribute("phone",sr.getString(4));
    	   session.setAttribute("email",sr.getString(5));
    	   session.setAttribute("age",sr.getString(6));
    	   session.setAttribute("position",sr.getString(7));
    	   session.setAttribute("status",sr.getString(8));
    	   session.setAttribute("date",sr.getString(9));
    	   response.sendRedirect("../User/reporter/index.jsp");}}
    	if(a){
    	String position="editor";
    	ResultSet sr = stmt.executeQuery("select * from employee where position='"+position+"'and name='"+username+"'");
    	if(sr.next()){
    		session.setAttribute("name",sr.getString(1));
 	   session.setAttribute("gender",sr.getString(2));
 	   session.setAttribute("id",sr.getString(3));
 	   session.setAttribute("phone",sr.getString(4));
 	   session.setAttribute("email",sr.getString(5));
 	   session.setAttribute("age",sr.getString(6));
 	   session.setAttribute("position",sr.getString(7));
 	   session.setAttribute("status",sr.getString(8));
 	   session.setAttribute("date",sr.getString(9));
     	   response.sendRedirect("../User/Editor/index.jsp");}}
    	if(a){
        	String position="ChiefEditor";
        	ResultSet sr = stmt.executeQuery("select * from employee where position='"+position+"'and name='"+username+"'");
        	if(sr.next()){
        		session.setAttribute("name",sr.getString(1));
     	   session.setAttribute("gender",sr.getString(2));
     	   session.setAttribute("id",sr.getString(3));
     	   session.setAttribute("phone",sr.getString(4));
     	   session.setAttribute("email",sr.getString(5));
     	   session.setAttribute("age",sr.getString(6));
     	   session.setAttribute("position",sr.getString(7));
     	   session.setAttribute("status",sr.getString(8));
     	   session.setAttribute("date",sr.getString(9));
         	   response.sendRedirect("../User/ChiefEditor/index.jsp");}}
    	if(a){
        	String position="manager";
        	ResultSet sr = stmt.executeQuery("select * from employee where position='"+position+"'and name='"+username+"'");
        	if(sr.next()){
        		session.setAttribute("name",sr.getString(1));
     	   session.setAttribute("gender",sr.getString(2));
     	   session.setAttribute("id",sr.getString(3));
     	   session.setAttribute("phone",sr.getString(4));
     	   session.setAttribute("email",sr.getString(5));
     	   session.setAttribute("age",sr.getString(6));
     	   session.setAttribute("position",sr.getString(7));
     	   session.setAttribute("status",sr.getString(8));
     	   session.setAttribute("date",sr.getString(9));
         	   response.sendRedirect("../User/manager/index.jsp");}}
    }
    else
    {
        out.println(i.next()+"ff");

       out.println("<script language = 'javaScript'> alert('密码错误，请重新输入用户名！');</script>");

        response.setHeader("refresh","1;url = login.html");

    }
    i.close();
    stmt.close();
    conn.close();
    }
    catch(Exception e)
    { 
           out.print(e.toString());
    }
%>

</div>
    
</body>
</html>