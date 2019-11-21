<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/21/2019
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<h1>Login</h1>
<hr>
</h3>Enter Fields To Register</h3>
<center>
<form action="save/" method="post">

    Email: <input type="email" placeholder="Enter Email" name="email"><br>
    Password: <input type="text" placeholder="Enter password" maxlength = "8" name="password" ><br>

    <input type="submit" value="Login" > <div>
    New User <a href="register.jsp">Register </a>
</div>
</form>
    </center>
</body>
</html>
