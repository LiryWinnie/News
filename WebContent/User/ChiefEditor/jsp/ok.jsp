<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>今日新闻管理系统</title>
<link href="../CSS/style.css" rel='stylesheet' type='text/css' />
<link href="../CSS/Audit.css" rel='stylesheet' type='text/css' />
</head>
<body>
<div class="top">
   <div class="logo">
      <img  alt="" src="../images/title.jpg">
   </div>
</div>
<div class="left_table">
   <nav id="main-navigation" class="clearfix">
       <ul>
           <li><a href="../index.jsp">首页</a></li>
           <li><a href="../WriteNews.html">撰写新闻</a></li>
           <li><a href="../waiting.jsp">待发布文章</a></li>
           <li><a href="../done.jsp">已发布文章</a></li>
           <li><a href="../rekey.html">修改密码</a></li>
           <li><a href="#">修改个人信息</a></li>
           <li><a href="../../../login/login.html">退出系统</a></li>
       </ul>
   </nav>
</div>
<div class="pages">
    <img src="../images/logoo.png">
    <div class="main">
       <p>&ensp;文章： <%=request.getParameter("title")%></p> 
       <p>&ensp;类型： <%=request.getParameter("type")%></p> 
       <p>&ensp;作者： <%=request.getParameter("reporter")%></p>    
    </div>
    <div class="content">
      <p>内容：</p>
      &emsp;<%=request.getParameter("content") %>
    </div>
    <div class="comment">
       <div class="word">
          <br><br>
          <p align="center"><b>评论</b></p>
       </div>
       <div class="comm">
          <%=request.getParameter("zcomment") %>
       </div>
    </div>
    <div class="confirm">    
         <a href="../done.jsp" onclick="link"><input type="submit" value="返回" ></a>
    </div>

</div>
</body>
</html>