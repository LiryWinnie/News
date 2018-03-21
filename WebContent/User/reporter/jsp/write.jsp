<%@ page language="java" contentType="text/html; charset=UTF-8" import="xml.xmlcore" import="xml.num"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <center>
    <h1>提交中...</h1>
    <%
        String type=request.getParameter("cat");
        String title=request.getParameter("title");
        String content=request.getParameter("content");
        xmlcore x=new xmlcore();
        num nu=new num();
        int a=nu.text(type)+1;
        String s = String.valueOf(a);
        String name= (String)session.getAttribute("name") ;
        String id= (String)session.getAttribute("id") ;
        x.addNews(type,s,id, name,"0", "0","0","0", title, content,null, null);
    %>
    <p><A href="../index.jsp">返回首页</A><p>
</body>
</html>