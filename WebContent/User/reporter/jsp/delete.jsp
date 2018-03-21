<%@ page language="java" contentType="text/html; charset=utf-8" import="xml.xmlcore"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
     <center>
    <h1>新闻已删除</h1>
    <% String type=request.getParameter("type");
       String newid=request.getParameter("newid");
       xmlcore x=new xmlcore();
       x.deletenews(type,newid);
    %>
    <p><a href="../index.jsp">返回首页</a></p>
</body>
</html>