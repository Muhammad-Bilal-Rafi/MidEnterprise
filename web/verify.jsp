<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%@ page import="DBHandler.DbConnection" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/21/2019
  Time: 6:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head></head>
<body>
<%

  String email=request.getParameter("email");
  String password=request.getParameter("password");
  boolean found=false;
  out.print(email+" hello "+password);
    DbConnection db=new DbConnection();
    ResultSet resultSet=db.getResults();
    try {

        while (resultSet.next()){
            if(resultSet.getString("email").equalsIgnoreCase(email) && resultSet.getString("password").equalsIgnoreCase(password))
            {

                found=true;
                break;
            }

        }

    } catch (SQLException e) {
        e.printStackTrace();
    }

        if(found==true)
        {
            response.sendRedirect("jobs.jsp");

        }
        else
            {
                response.sendRedirect("register.jsp");
            }

%>

</body>
</html>