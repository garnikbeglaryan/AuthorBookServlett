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
    List<User> allUsers = (List<User>) request.getAttribute("allUsers");

%>

Search:
<form action="/search" method="get">
    <input type="text" name="keyword">
    <input type="submit" value="search">
</form>
All Users:
<table border="1">
    <theadL>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>user Type</th>
        <th>action</th>
    </tr>
    </theadL>

    <%
        for (User user : allUsers) { %>
    <tr>
        <td><%=user.getId()%>
        </td>
        <td><%=user.getName()%>
        </td>
        <td><%=user.getSurname()%>
        </td>
        <td><%=user.getEmail()%>
        </td>
        <td><%=user.getType().name()%>
        </td>
        <td><a href="/deleteUser?id=<%=user.getId()%>">Delete</a> / <a href="/editUser?id=<%=user.getId()%>">Edit</a> </td>
    </tr>

    <% }

    %>

</table>

Add User:
<form action="/addUser" method="post">
    Name: <input type="text" name="name"/> <br>
    Surname: <input type="text" name="surname"/> <br>
    email: <input type="email" name="email"/> <br>
    password: <input type="password" name="password"/> <br>
    user Type: <select name="userType">
    <option value="USER">USER</option>
    <option value="ADMIN">ADMIN</option>
</select><br>
    <input type="submit" value="add user">


</form>
</body>
</html>
