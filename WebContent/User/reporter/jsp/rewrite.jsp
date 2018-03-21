<%@ page language="java" contentType="text/html; charset=utf-8" import="xml.NewsBean"
import="xml.xmlcore" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <center>
     <%
        String title=request.getParameter("ntitle");
        String typename=request.getParameter("type");
        String newid=request.getParameter("newid");
        String content=request.getParameter("content");
        xmlcore x=new xmlcore();
        NewsBean n=new NewsBean();
        n.setTitle(title);
        n.setType(typename);
        n.setContent(content);
        n.setNewid(newid);
        int a=0;
        %><% 
        a=x.updateNews(n);
        x.setStatus(n);
     %>
     <%=newid %>
     <a href="../index.jsp">返回首页</a>
  </center>
</body>
</html>