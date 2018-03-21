<%@ page language="java" contentType="text/html; charset=utf-8" import="xml.xmlcore"
    import="xml.NewsBean" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
    <center>
      <p>已审核，评论提交中...</p>
      <%String comment=request.getParameter("comment");
        String newid=request.getParameter("newid");
        String type=request.getParameter("type");
        String name= (String)session.getAttribute("name") ;
        String id= (String)session.getAttribute("id") ;
        xmlcore x=new xmlcore();
        NewsBean n=new NewsBean();
        n.setComment(comment);
        n.setEditor(name);
        n.setEdid(id);
        n.setType(type);
        n.setNewid(newid);
        n.setStatus("4");
        x.comment(n);
      %>
      <p><a href="../index.jsp">返回首页</a></p>
      <p><a href="../waiting.jsp">返回 待审核页面</a></p>
    </center>
</body>
</html>