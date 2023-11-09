<!DOCTYPE html>
<html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <link rel="shortcut icon" href="assets/icons/icon-pegada.ico" type="image/x-icon">
    <title>Pet Protectors - Início</title>
    <link rel="stylesheet" href="assets/css/styles-arealogada.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>

    <div class="navbar">
        <img src="assets/images/pegada.png" alt="petprotectors-logo" style="height: 50px;">
        <a href="#" class="navbar-brand">Pet Protectors</a>
    </div>

    <div class="sidebar">
        <div class="username">
            <img src="assets/images/user.png" alt="User Image">
            <c:if test="${sessionScope.loggedUser != null}">
                <p>${cliente.nome}</p>
            </c:if>
        </div>
        <ul>
            <li><a href="Login-MeusDados.jsp">Meus Dados</a></li>
            <li><a href="Login-MeusPets.jsp">Meus Pets</a></li>
            <li><a href="Login-MeusAgendamentos.jsp">Agendamentos</a></li>
            <li><a href="">Meu Plano</a></li>
            <c:if test="${sessionScope.loggedUser != null}">
                <li><a href="/logout">Sair</a></li>
            </c:if>
        </ul>
    </div>
    <div class="conteudo">
        <div class="centralizado">
            <img id="img-inicio" src="assets/images/undraw_friends_r511.svg" alt="">
        </div>
    </div>

</body>

</html>