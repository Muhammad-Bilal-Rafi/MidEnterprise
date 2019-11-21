<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/21/2019
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>




<h1>Student Registration</h1>
<hr>
</h3>Enter Fields To Register Student</h3>
<form action="save/" method="post">
     Name: <input type="text" placeholder="Enter First Name" name="fname" ><br>
    Email: <input type="email" placeholder="Enter Email" name="email"><br>
    Password: <input type="text" placeholder="Enter password" maxlength = "8" name="code" ><br>

    <br>
    Hobbies:<br>
    <input type="radio" name="hobby" value="Cricket">Cricket<br>
    <input type="radio" name="hobby" value="Games">Photography<br>
    <input type="radio" name="hobby" value="Dota 2" checked>Dota 2 <br>
    <br>
    Gender:<br>
    <input type="radio" name="gender" value="male"> Male<br>
    <input type="radio" name="gender" value="female"> Female<br>
    <br>
    Course Applied<br>

    <input type="radio" name="course" value="bscs"> BSCS<br>
    <input type="radio" name="course" value="bsse"> BSSE<br>
    <input type="radio" name="course" value="bba"> BBA<br>
    <input type="radio" name="course" value="bsee"> BSEE<br>
    <br>
    <input type="submit" value="Submit"> <div>    </div>  <input type="reset" value="Reset">
</form>
<form action="UpperCase.jsp" method="post">
    Enter Value
    <input type="text" name="val">
    <input type="submit" value="Change">
</form>
</body>
</html>
