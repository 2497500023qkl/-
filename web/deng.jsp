<%@ page import="jdbc.method" %>
<%@ page import="user.member" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    method a=new method();
    String user=(String)request.getParameter("username");
    String pass=(String)request.getParameter("password");
    out.print(user);
    out.print(pass);
    String s= null;
    try {
        s = a.cha(user,pass);
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    }
    System.out.println(s);
    if(s!=null){
    session.setAttribute("username" , user);
    response.sendRedirect("/login.jsp");
}else{
    session.setAttribute("error" , "账号或密码错误");
    response.sendRedirect("/index.jsp");
}

%>
</body>
</html>
