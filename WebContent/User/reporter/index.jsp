<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>今日新闻管理系统</title>
<link href="CSS/style.css" rel='stylesheet' type='text/css' />
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
           <li><a href="logout.jsp">退出系统</a></li>
       </ul>
   </nav>
</div>
<div class="info">
    <img src="images/logoo.png">
    <a><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;用户信息</b></a>
    <p><%=session.getAttribute("name") %> 欢迎你，你是记者！</p>
    <table border="1" width=602px cellspacing=0>
<tr>
<td width=100px align="center">员工号</td>
<td align="center"><%=session.getAttribute("id") %></td>
</tr>
<tr>
<td width=100px align="center">姓名</td>
<td align="center"><%=session.getAttribute("name") %></td>
</tr>
<tr>
<td width=100px align="center">性别</td>
<td align="center"><%=session.getAttribute("gender") %></td>
</tr>
<tr>
<td width=100px align="center">电话号码</td>
<td align="center"><%=session.getAttribute("phone") %></td>
</tr>
<tr>
<td width=100px align="center">E-mail</td>
<td align="center"><%=session.getAttribute("email") %></td>
</tr>
<tr>
<td width=100px align="center">年龄</td>
<td align="center"><%=session.getAttribute("age") %></td>
</tr>
<tr>
<td width=100px align="center">职位</td>
<td align="center"><%=session.getAttribute("position") %></td>
</tr>
<tr>
<td width=100px align="center">状态</td>
<td align="center"><%=session.getAttribute("status") %></td>
</tr>
<tr>
<td width=100px align="center">创建时间</td>
<td align="center"><%=session.getAttribute("date") %></td>
</tr>
</table>
</div>
</body>
</html>