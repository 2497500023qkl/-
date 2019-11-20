<%--
  Created by IntelliJ IDEA.
  User: qkl
  Date: 2019/11/20
  Time: 下午4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
欢迎进入
<%
String a=(String)session.getAttribute("username");
if(a!=null){
    out.print(a);
}else{
    response.sendRedirect("/index.jsp");
}

%>
</body>
</html>
