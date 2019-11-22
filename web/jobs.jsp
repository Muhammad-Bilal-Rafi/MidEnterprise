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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
    <title></title>

    <style>
        body {
            background-color: #5fff46;
        }
        .login-form {
            width: 350px;
            margin: 0 auto;
            padding: 100px 0 30px;
        }
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
  <div>    </div>
    <button input type="submit" value="Reset" style="text-align:center" class="btn btn-primary btn-lg">Post Job</button></a>

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

%>


</body>

</html>
