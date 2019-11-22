<%@ page import="DBHandler.DbConnection" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/22/2019
  Time: 5:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%

    DbConnection connection=new DbConnection();
    String title=request.getParameter("title");

    String description=request.getParameter("description");
    String city=request.getParameter("city");
    String jobtype=request.getParameter("jobtype");

    out.print(title+description+city+jobtype);

    connection.insertJob(title,description,jobtype,city,2);



%>
<a href="jobs.jsp"> click me to see all jobs </a>
</body>
</html>
