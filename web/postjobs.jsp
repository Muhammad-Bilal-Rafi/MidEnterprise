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
<form action="saveJobRecord.jsp" method="post">

     Title: <input type="text" placeholder="Enter Title" name="title" ><br>
    <textarea  name="description" rows="4" cols="50">
Description
</textarea>

    <br>
    Job Type:<br>
    <input type="radio" name="jobtype" value="full Time">Full Time<br>
    <input type="radio" name="jobtype" value="part Time">Part Time <br>
    <br>
    City:<br>
    <select name="city">
        <option value="Islamabad">Islamabad</option>
        <option value="karachi">Karachi</option>
        <option value="lahore">Lahore</option>
        <option value="multan">Multan</option>
    </select>


    <input type="submit" value="Pst Job"> <div>    </div>
</form>
</center>
</body>
</html>
