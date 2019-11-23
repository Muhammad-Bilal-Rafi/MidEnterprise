<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/21/2019
  Time: 6:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
/*
    Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/eadmid";
String username="root";
String password="";
Connection conn= DriverManager.getConnection(url, username, password);
    try {

        String s = request.getParameter("fname");
        String t = request.getParameter("email");
        String e = request.getParameter("password");

        String q = "INSERT into registraion(fname,email,password) values(?,?,?)";

        Statement stmt = null;
        int rs;
        PreparedStatement ps = conn.prepareStatement(q);
        ps.setString(1, s);
        ps.setString(2, t);
        ps.setString(3, e);
        rs = ps.executeUpdate();
response.sendRedirect("login.jsp");
        if (rs > 0) {
            System.out.println(rs + " rows inserted!");
        }
    }

    catch(SQLException e){

        }

*/

%>