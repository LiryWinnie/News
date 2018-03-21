<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <%
      request.getSession().invalidate();
      request.getSession().removeAttribute("name");
      request.getSession().removeAttribute("gender");
      request.getSession().removeAttribute("id");
      request.getSession().removeAttribute("phone");
      request.getSession().removeAttribute("email");
      request.getSession().removeAttribute("age");
      request.getSession().removeAttribute("position");
      request.getSession().removeAttribute("status");
      request.getSession().removeAttribute("date");
      %>
      <h1>已退出</h1>
      <a href="../../login/login.html">返回首页</a>
</body>
</html>