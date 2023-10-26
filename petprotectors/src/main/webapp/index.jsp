<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Criar Cliente</h2>
<form action="/create-pet" method="post">

    <label>Cliente Nome</label>
    <!--
    <input type="text" name="nome" id="nome" value="${param.nome}">
    <input type="text" name="cpf" id="cpf" value="${param.cpf}">
    <input type="text" name="genero" id="genero" value="${param.genero}">
    <input type="text" name="pets" id="pets" value="${param.pets}">
    <input type="text" name="email" id="email" value="${param.email}">
    <input type="text" name="senha" id="senha" value="${param.senha}">
    <input type="text" name="endereco" id="endereco" value="${param.endereco}">
    <input type="text" name="telefone" id="telefone" value="${param.telefone}">
    -->
    <label> Criar Pet</label>
    <input type="text" name="nome" id="nome" value="${param.nome}">
    <input type="text" name="idade" id="idade" value="${param.idade}">
    <input type="text" name="sexo" id="sexo" value="${param.sexo}">
    <input type="text" name="especie" id="especie" value="${param.especie}">
    <input type="text" name="raca" id="raca" value="${param.raca}">

    <button type="submit">Save</button>

</form>
</body>
</html>
