<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
<div>
    <h1>Clientes</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="cliente" items="${clientes}">
            <tr>
                <td>${cliente.id}</td>
                <td>${cliente.name}</td>
                <td>
                    <form action="/delete-cliente" method="post">
                        <input type="hidden" id="id" name="id" value="${cliente.id}">
                        <button type="submit" style="color: Red;">Delete</button>
                        <span> | </span>
                        <a href="index.jsp?id=${cliente.id}&name=${cliente.nome}">Update</a>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>