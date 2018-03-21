<%@ page language="java" contentType="text/html; charset=utf-8" import="xml.xmlcore" import="xml.NewsBean"
import="xml.num"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>今日新闻</title>
<link href="Style.css" rel="stylesheet">
</head>
<body>
<div class="top"> 
   <div class="logo">
      <a href="News.jsp" ><img align="middle" alt="" src="photoes/title.jpg"></a>
   </div>
   <div class="login">
      <input type="text" id="searchstr" name="searchstr" class="textbox" size="20">  
      <input type="button" value="页内查找" onclick="javascript:findIt();" class="sbttn">
      <a href="login/login.html"><b>登录</b></a>
   </div>
   <script>
   var DOM = (document.getElementById) ? 1 : 0;  
   var NS4 = (document.layers) ? 1 : 0;  
   var IE4 = 0;  
   if (document.all)  
   {  
   IE4 = 1;  
   DOM = 0;  
   }  
   
   var win = window; 
   var n = 0;  
   
   function findIt() {  
   if (document.getElementById("searchstr").value != "")  
   findInPage(document.getElementById("searchstr").value);  
   }  
   
   
   function findInPage(str) {  
   var txt, i, found;  
   
   if (str == "")  
   return false;  
   
   if (DOM)  
   {  
   win.find(str, false, true);  
   return true;  
   }  
   
   if (NS4) {  
   if (!win.find(str))  
   while(win.find(str, false, true))  
   n++;  
   else  
   n++;  
   
   if (n == 0)  
   alert("未找到指定内容.");  
   }  
   
   if (IE4) {  
   txt = win.document.body.createTextRange();  
   
   for (i = 0; i <= n && (found = txt.findText(str)) != false; i++) {  
   txt.moveStart("character", 1);  
   txt.moveEnd("textedit");  
   }  
   
   if (found) {  
   txt.moveStart("character", -1);  
   txt.findText(str);  
   txt.select();  
   txt.scrollIntoView();  
   n++;  
   }  
   else {  
   if (n > 0) {  
   n = 0;  
   findInPage(str);  
   }  
   else  
   alert("未找到指定内容.");  
   }  
   }  
   
   return false;  
   }
   </script>
</div>
<br>
<div class="conn">
   <nav id="main-navigation" class="clearfix">
       <ul>
           <li><a href="#">首    页</a></li>
           <li><a href="#">社    会</a></li>
           <li><a href="#">历    史</a></li>
           <li><a href="#">娱    乐</a></li>
           <li><a href="#">体    育</a></li>
       </ul>
   </nav>
</div>
<br>
<div class="mainbody">
 <div class="down_news">
    <div class="social">
        <p><b>社会</b></p>
        <ul>
        <%
        xmlcore x=new xmlcore();
        NewsBean n=new NewsBean();
        num nu=new num();
        int a=nu.text("Society");
        for(int i=0;i<a;i++){
    	   String s=String.valueOf(i+1);
           n=x.getNewsById("Society", s);
           char first=n.getStatus().charAt(0);
           if(first=='1'){
        %>
            <li><a href="looknews.jsp?reporter=<%=n.getReporter()%>&title=<%=n.getTitle()%>&type=<%=n.getType()%>&content=<%=n.getContent()%>"><%=n.getTitle() %></a></li>
        <% }
           }%>  
       </ul>
    </div>
    <div class="history">
        <p><b>历史</b></p>
         <ul>
        <%
        a=nu.text("History");
        for(int i=0;i<a;i++){
    	   String s=String.valueOf(i+1);
           n=x.getNewsById("History", s);
           char first=n.getStatus().charAt(0);
           if(first=='1'){
        %>
            <li><a href="looknews.jsp?reporter=<%=n.getReporter()%>&title=<%=n.getTitle()%>&type=<%=n.getType()%>&content=<%=n.getContent()%>"><%=n.getTitle() %></a></li>
        <% }
           }%>  
       </ul>
    </div>
    <div class="entertain">
        <p><b>娱乐</b></p>
         <ul>
        <%
        a=nu.text("Entertainment");
        for(int i=0;i<a;i++){
    	   String s=String.valueOf(i+1);
           n=x.getNewsById("Entertainment", s);
           char first=n.getStatus().charAt(0);
           
           if(first=='1'){
        %>
            <li><a href="looknews.jsp?reporter=<%=n.getReporter()%>&title=<%=n.getTitle()%>&type=<%=n.getType()%>&content=<%=n.getContent()%>"><%=n.getTitle() %></a></li>
        <% }
           }%>  
       </ul>
    </div>
    <div class="sports">
        <p><b>体育</b></p>
         <ul>
        <%
        a=nu.text("Sports");
        for(int i=0;i<a;i++){
    	   String s=String.valueOf(i+1);
           n=x.getNewsById("Sports", s);
           char first=n.getStatus().charAt(0);
           if(first=='1'){
        %>
            <li><a href="looknews.jsp?reporter=<%=n.getReporter()%>&title=<%=n.getTitle()%>&type=<%=n.getType()%>&content=<%=n.getContent()%>"><%=n.getTitle() %></a></li>
        <% }
           }%>  
       </ul>
    </div>
 </div>
</div>
</body>
</html>