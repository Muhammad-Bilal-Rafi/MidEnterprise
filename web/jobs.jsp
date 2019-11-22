<%@ page import="java.sql.SQLException" %>
<%@ page import="DBHandler.DbConnection" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/21/2019
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover:not(.active) {
            background-color: #111;
        }

        .active {
            background-color: #4CAF50;
        }
    </style>
</head>
<body>

<ul>
    <li><a href="#home">BSE163024</a></li>

    <li style="float:right"><a class="active" href="login.jsp">Logout</a></li>
</ul>
<form action="postjobs.jsp" method="post">
<input type="submit" value="Post Job"> <div>    </div>
</form>

<%
    DbConnection connection=new DbConnection();
    ResultSet resultSet=connection.getjobs();

    response.setContentType("text/html");
    out.println("<html>\n" +
            "<head>\n" +
            "<style>\n" +
            "table {\n" +
            "  font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\n" +
            "  border-collapse: collapse;\n" +
            "  width: 100%;\n" +
            "}\n" +
            "\n" +
            " td,th {\n" +
            "  border: 1px solid #ddd;\n" +
            "  padding: 8px;\n" +
            "}\n" +
            "\n" +
            "tr:nth-child(even){background-color: #f2f2f2;}\n" +
            "\n" +
            "tr:hover {background-color: #ddd;}\n" +
            "\n" +
            "th {\n" +
            "  padding-top: 12px;\n" +
            "  padding-bottom: 12px;\n" +
            "  text-align: left;\n" +
            "  background-color: #4CAF50;\n" +
            "  color: white;\n" +
            "}\n" +
            "</style>\n" +
            "</head>\n" +
            "<body>");

    out.print("<table> <tr> <th>Title</th>  <th>Description</th> <th>Type</th> <th>City</th><th>Postby</th> </tr>");
    try {

        while (resultSet.next()){

            out.print("<td>"+resultSet.getString("title")+"</td>");
            out.print("<td>"+resultSet.getString("description")+"</td>");
            out.print("<td>"+resultSet.getString("jobtype")+"</td>");
            out.print("<td>"+resultSet.getString("jobcity")+"</td> ");
            out.print("<td>"+resultSet.getInt("postedby")+"</td></tr>");

        }

    } catch (SQLException e) {
        e.printStackTrace();
    }
    out.print("</table></body></html>");
    out.print("end");
%>


</body>

</html>
