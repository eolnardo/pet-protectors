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
        <a href="index.jsp" class="navbar-brand" style="background-color: #1E1D67;">Pet Protectors</a>
    </div>

    <div class="sidebar">
        <div class="username">
            <img src="assets/images/user.png" alt="User Image">
            <c:if test="${sessionScope.loggedUser != null}">
                <p>${cliente.nome}</p>
            </c:if>
        </div>
        <ul>
            <form action="show-cliente" method="get">
                <li>
                    <button type="submit">Meus Dados</button>
                </li>
            </form>
            <form action="show-pets" method="get">
                <li>
                    <button type="submit">Meus Pets</button>
                </li>
            </form>
            <li><a href="Login-MeusAgendamentos.jsp">Agendamentos</a></li>
            <form action="show-subscription" method="get">
                <li>
                    <button type="submit">Meu Plano</button>
                </li>
            </form>
            <c:if test="${sessionScope.loggedUser != null}">
                <li><a href="/logout">Sair</a></li>
            </c:if>
        </ul>
    </div>
    <div class="conteudo">
        <div class="centralizado">
            <img id="img-inicio" src="assets/images/undraw_friends_r511.svg" alt="">
        </div>
        <h1 style="margin-top: -4rem; color: #4DFF3E; text-shadow: 1px 1px 0 black, -1px -1px 0 black, 1px -1px 0 black, -1px 1px 0 black;">Bem vindo à sua área!</h1>
    </div>

</body>

</html>