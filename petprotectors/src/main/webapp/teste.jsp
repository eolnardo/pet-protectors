<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Criar Cliente</h2>
<form action="/create-usuario" method="post">

    <label>Cliente Nome</label>
    <input type="text" nome="nome" id="nome" value="${param.nome}">
    <input type="hidden" id="cpf" name="cpf" value="${param.cpf}">

    <button type="submit">Save</button>

</form>
</body>
</html>
