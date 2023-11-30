<%--
  Created by IntelliJ IDEA.
  User: Super
  Date: 29-11-2023
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Confirmation </title>
</head>
<body>
<h3> An email has been sent to your ID with the confirmation code. Please type it below.</h3>
<form action="confirmcode" method="post">
    <input type="text" name="code" placeholder="Confirmation Code">
    <label> For now, use 0000 as code</label>
    <button type="submit"> Submit </button>
</form>
</body>
</html>
