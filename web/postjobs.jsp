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




<h1>Person Register</h1>
<hr>
</h3>Enter Fields To Register Student</h3>
<center>
<form action="save/" method="post">

     Title: <input type="text" placeholder="Enter Title" name="title" ><br>
    <textarea rows="4" cols="50">
Description
</textarea>

    <br>
    Job Type:<br>
    <input type="radio" name="full" value="full">Full Time<br>
    <input type="radio" name="part" value="part">Part Time <br>
    <br>
    City:<br>
    <select>
        <option value="isb">Islamabad</option>
        <option value="kar">Karachi</option>
        <option value="lahr">Lahore</option>
        <option value="multn">Multan</option>
    </select>

    <input type="dropdown" name="gender" value="male"> Male<br>
    <input type="radio" name="gender" value="female"> Female<br>
    <br>


    <input type="submit" value="Pst Job"> <div>    </div>
</form>
</center>
</body>
</html>
