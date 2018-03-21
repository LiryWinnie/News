<%@ page language="java" contentType="text/html; charset=utf-8" import="xml.xmlcore" import="xml.NewsBean"
import="xml.num" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>今日新闻管理系统</title>
<link href="CSS/style.css" rel='stylesheet' type='text/css' />
<link href="CSS/waiting.css" rel='stylesheet' type='text/css' />
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
           <li><a href="unpublished.jsp">未发布</a></li>
           <li><a href="rekey.html">修改密码</a></li>
           <li><a href="#">修改个人信息</a></li>
           <li><a href="../../login/login.html">退出系统</a></li>
       </ul>
   </nav>
</div>
<div class="pages">
   <img src="images/logoo.png">
     <p align="center"><font size="6"><b>待审核文章如下</b></font></p>
   <table border="1" cellspacing=0>
      <tr>
        <th width=60px align="center">序号</th>
        <th width=350px align="center">新闻标题</th>
        <th width=100px align="center">新闻类型</th>
        <th width=120px align="center">新闻状态</th>
        <th width=200px align="center">提交时间</th>
        <th width=70px align="center">操作</th>
     </tr> 
     <%
       xmlcore x=new xmlcore();
       NewsBean n=new NewsBean();
       num nu=new num();
       int a=nu.text("Society");
       for(int i=0;i<a;i++){
    	 String s=String.valueOf(i+1);
         n=x.getNewsById("Society", s);
         char first=n.getStatus().charAt(0);
         if(first=='3'){
     %>  
      <tr>
      <td><%=n.getNewid()%></td>
      <td><%=n.getTitle()%></td>
      <td><%=n.getType()%></td>
      <td><%=n.getStatus()%></td>
      <td><%=n.getCreatetime()%></td>
      <td><a href="jsp/Audit.jsp?title=<%=n.getTitle()%>&reporter=<%=n.getReporter()%>&newid=<%=n.getNewid()%>
      &type=<%=n.getType()%>&content=<%=n.getContent()%>">修改</a> <a>删除</a></td>
     </tr>
     <% } }
       a=nu.text("History");
       for(int i=0;i<a;i++){
    	 String s=String.valueOf(i+1);
         n=x.getNewsById("History", s);
         char first=n.getStatus().charAt(0);
         if(first=='3'){
     %>  
      <tr>
      <td><%=n.getNewid()%></td>
      <td><%=n.getTitle()%></td>
      <td><%=n.getType()%></td>
      <td><%=n.getStatus()%></td>
      <td><%=n.getCreatetime()%></td>
      <td><a href="jsp/Audit.jsp?title=<%=n.getTitle()%>&reporter=<%=n.getReporter()%>&newid=<%=n.getNewid()%>
      &type=<%=n.getType()%>&content=<%=n.getContent()%>">修改</a> <a>删除</a></td>
     </tr>
     <% }  }
       a=nu.text("Sports");
       for(int i=0;i<a;i++){
    	 String s=String.valueOf(i+1);
         n=x.getNewsById("Sports", s);
         char first=n.getStatus().charAt(0);
         if(first=='3'){
     %>  
      <tr>
      <td><%=n.getNewid()%></td>
      <td><%=n.getTitle()%></td>
      <td><%=n.getType()%></td>
      <td><%=n.getStatus()%></td>
      <td><%=n.getCreatetime()%></td>
      <td><a href="jsp/Audit.jsp?title=<%=n.getTitle()%>&reporter=<%=n.getReporter()%>&newid=<%=n.getNewid()%>
      &type=<%=n.getType()%>&content=<%=n.getContent()%>">修改</a> <a>删除</a></td>
     </tr>
     <% } }
       a=nu.text("Entertainment");
       for(int i=0;i<a;i++){
    	 String s=String.valueOf(i+1);
         n=x.getNewsById("Entertainment", s);
         char first=n.getStatus().charAt(0);
         if(first=='3'){
     %>  
      <tr>
      <td><%=n.getNewid()%></td>
      <td><%=n.getTitle()%></td>
      <td><%=n.getType()%></td>
      <td><%=n.getStatus()%></td>
      <td><%=n.getCreatetime()%></td>
      <td><a href="jsp/Audit.jsp?title=<%=n.getTitle()%>&reporter=<%=n.getReporter()%>&newid=<%=n.getNewid()%>
      &type=<%=n.getType()%>&content=<%=n.getContent()%>">修改</a> <a>删除</a></td>
     </tr>
     <%} }%>  
   </table>
</div>
</body>
</html>