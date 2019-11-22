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
<%

  String email=request.getParameter("email");
  String password=request.getParameter("password");

  out.print(email+" hello "+password);
    DbConnection db=new DbConnection();
    ResultSet resultSet=db.getResults();
    try {

        while (resultSet.next()){
            if(resultSet.getString("email")==email && resultSet.getString("password")==password)
            {

                response.sendRedirect("jobs.jsp");
            }

        }

    } catch (SQLException e) {
        e.printStackTrace();
    }

        response.sendRedirect("register.jsp");

%>
