<%@ page language="java" contentType="text/html; charset=utf-8" import="xml.NewsBean" import="xml.xmlcore"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>今日新闻管理系统</title>
<link href="CSS/style.css" rel='stylesheet' type='text/css' />
<link href="CSS/Wstyle.css" rel='stylesheet' type='text/css' />
</head>
<body>
  <div class="top">
   <div class="logo">
      <img  alt="" src="images/title.jpg">
   </div>
</div>
<div class="left_table">
   <nav id="main-navigation" class="clearfix">
       <ul>
           <li><a href="index.jsp">首页</a></li>
           <li><a href="WriteNews.html">撰写新闻</a></li>
           <li><a href="waiting.jsp">待审核文章</a></li>
           <li><a href="done.jsp">已审核文章</a></li>
           <li><a href="not.jsp">未通过审核文章</a></li>
           <li><a href="rekey.html">修改密码</a></li>
           <li><a href="#">修改个人信息</a></li>
           <li><a href="../../login/login.html">退出系统</a></li>
       </ul>
   </nav>
</div>
<div class="infomation">
   <img src="images/logoo.png">
   <p align="center"><font size="6"><b>修改文章</b></font></p>
   <form action="jsp/rewrite.jsp?newid=<%=request.getParameter("newid")%>&type=<%=request.getParameter("type")%>" method="post">   
       <ul>
          <li><a><b>新闻序号</b></a>&ensp;<%=request.getParameter("newid") %></li>
          <li><a><b>标题</b> &emsp;&emsp;<input class="input_form" type="text" name="ntitle" value=<%=request.getParameter("title") %> /></a></li>
       </ul>
       <textarea id="ta" name="content" onkeypress="newline()"><%=request.getParameter("content") %></textarea>
       <div class="sub">
            <a href="jsp/rewrite.jsp?newid=<%=request.getParameter("newid")%>&type=<%=request.getParameter("type")%>" onclick="link" ><input name="onco" type="submit" value="提交"/></a>
       </div>
   </form>
</div>
</body>
</html>