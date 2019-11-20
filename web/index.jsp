<%--
  Created by IntelliJ IDEA.
  User: qkl
  Date: 2019/11/19
  Time: 下午7:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <div style="color:red;">
  <%
    String a=(String)session.getAttribute("error");
    if(a!=null){
      session.removeAttribute("error");
      out.print(a);
    }
  %>
  </div>
  <form action="./deng.jsp" method="post">
    <input type="text" name="username">
    <input type="text" name="password">
    <input type="submit" value="提交">
  </form>
  </body>
</html>
