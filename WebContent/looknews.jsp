<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<title>今日新闻</title>
<link href="Style.css" rel="stylesheet">
</head>
<body>
<div class="top"> 
   <div class="logo">
      <a href="News.html" ><img align="middle" alt="" src="photoes/title.jpg"></a>
   </div>
</div>
<br>
   <center><h1><%=request.getParameter("title") %></h1></center>
   <p><a>作者：</a><%=request.getParameter("reporter") %></p>
   <p><%=request.getParameter("content") %></p>
</body>
</html>