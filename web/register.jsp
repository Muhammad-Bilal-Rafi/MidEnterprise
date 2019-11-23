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
            width: 500px;
            margin: 0 auto;
            padding: 100px 0 30px;
        }
        .form-control {
            min-height: 41px;
            background: #5affdf;
            box-shadow: none !important;
            border-color: #081725;
        }
        .form-control:focus {
            border-color: #70c5c0;
        }
        .form-control, .btn {
            border-radius: 2px;
        }
        .login-form form {
            color: #7a7a7a;
            border-radius: 2px;
            margin-bottom: 15px;
            font-size: 13px;
            background: #afece1;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
            position: relative;
        }
        .login-form h2 {
            font-size: 22px;
            margin: 35px 0 25px;
        }
        .login-form .avatar {
            position: absolute;
            margin: 0 auto;
            left: 0;
            right: 0;
            top: -50px;
            width: 95px;
            height: 95px;
            border-radius: 50%;
            z-index: 9;
            background: #70c5c0;
            padding: 15px;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
        }
        .login-form .avatar img {
            width: 100%;
        }
        .login-form input[type="checkbox"] {
            margin-top: 2px;
        }
        .login-form .btn {
            font-size: 16px;
            font-weight: bold;
            background: #70c5c0;
            border: none;
            margin-bottom: 20px;
        }
        .login-form .btn:hover, .login-form .btn:focus {
            background: #50b8b3;
            outline: none !important;
        }
        .login-form a {
            color: #fff;
            text-decoration: underline;
        }
        .login-form a:hover {
            text-decoration: none;
        }
        .login-form form a {
            color: #7a7a7a;
            text-decoration: none;
        }
        .login-form form a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>

<%
    Pattern p = Pattern.compile("^[ A-Za-z]+$");
    Matcher m = p.matcher("aaaaab");
    boolean b = m.matches();
%>
<container>
    <div class="login-form">
<center>
<h1>Registration</h1>
<hr>

<form action="saveUserRecord.jsp" method="post">
    <div class="form-group ">
   <h3> Name:</h3> <input type="text" placeholder="Enter First Name" class="form-control inquire-control" name="fname" required="" aria-required="true"><br>
    </div><br>
    <div class="form-group ">
        <h3> Email:  </h3><input type="email" placeholder="Enter Email" name="email" class="form-control inquire-control" id="email" placeholder="Email" required="" aria-required="true">
    </div><br>
    <div class="form-group ">
        <h3> Password:  </h3> <input type="text" placeholder="Enter password" maxlength = "8" name="password" class="form-control inquire-control" required="" aria-required="true"><br>
    </div><br>
    <input type="radio" name="gender"  required="true"  value="confirm"> I accept term and conditions<br>

    <button type="submit" value="SignUp" style="text-align:center" class="btn btn-primary btn-lg">SignUp</button></a>
    <button input type="reset" value="Reset" style="text-align:center" class="btn btn-primary btn-lg">Reset</button></a>

</form>
    <p class="text-center small">Already Account<a href="login.jsp" >Login</a></p>
    <script>
        $(document).ready(function(){
            $("input").focus(function(){
                $(this).css("background-color","#cccccc");
            });
            $("input").blur(function(){
                $(this).css("background-color","#ffffff");
            });
        });

    </script>
    </center>
    </div>
    </container>
</body>
</html>