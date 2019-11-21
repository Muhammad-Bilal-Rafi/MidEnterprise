<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/21/2019
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<%
    Pattern p = Pattern.compile("^[ A-Za-z]+$");
    Matcher m = p.matcher("aaaaab");
    boolean b = m.matches();
%>
<h1>Registration</h1>
<hr>
</h3>Enter Fields To Register Student</h3>
<form action="save/" method="post">
    Name: <input type="text" placeholder="Enter First Name" name="fname" ><br>
    Email: <input type="email" placeholder="Enter Email" name="email"><br>
    Password: <input type="text" placeholder="Enter password" maxlength = "8" name="password" ><br>

    <input type="radio" name="gender" value="male"> I accept term and conditions<br>


    <input type="submit" value="SignUp"> <div>    </div>  <input type="reset" value="Reset"><br>
        Already registered <a href="login.jsp">Login </a>
</form>

</body>
</html>