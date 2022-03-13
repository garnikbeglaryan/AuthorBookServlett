<%@ page import="model.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 13.02.2022
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User page </title>
</head>
<body>

<%
    User user = (User) request.getAttribute("user");

%>

Edit User:
<form action="/editUser" method="post">
    <input type="hidden" name="id" value="<%=user.getId()%>" /> <br>
    Name: <input type="text" name="name" value="<%=user.getName()%>"/> <br>
    Surname: <input type="text" name="surname"  value="<%=user.getSurname()%>"/> <br>
    email: <input type="email" name="email"  value="<%=user.getEmail()%>"/> <br>
    password: <input type="password" name="password"/> <br>
    user Type: <select name="userType">
    <option value="USER">USER</option>
    <option value="ADMIN">ADMIN</option>
</select><br>
    <input type="submit" value="Edit User">


</form>
</body>
</html>
