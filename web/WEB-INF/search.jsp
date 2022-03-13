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
    List<User> users = (List<User>) request.getAttribute("users");

%>
<a href="/users">Back</a>
Search Result:
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
        for (User user : users) { %>
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
        <td><a href="/deleteUser?id=<%=user.getId()%>">Delete</a></td>
    </tr>

    <% }

    %>

</table>

</body>
</html>
