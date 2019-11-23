<%@ page import="DBHandler.DbConnection" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/23/2019
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    String s = request.getParameter("fname");
    String t = request.getParameter("email");
    String e = request.getParameter("password");
   out.print(s+" "+t);
    DbConnection connection=new DbConnection();
    connection.insertData(s,t,e);

%>
<h3>You have successfully registered </h3>
<a href="login.jsp">Click here to login</a>

</body>
</html>
