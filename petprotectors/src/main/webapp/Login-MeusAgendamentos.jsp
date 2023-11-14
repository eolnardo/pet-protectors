<!DOCTYPE html>
<html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <link rel="shortcut icon" href="assets/icons/icon-pegada.ico" type="image/x-icon">
    <title>Pet Protectors - Agendamentos</title>
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
            <p>Usuário</p>
        </div>
        <ul>
            <li><a href="Login-MeusDados.jsp">Meus Dados</a></li>
            <li><a href="Login-MeusPets.jsp">Meus Pets</a></li>
            <li><a href="Login-MeusAgendamentos.jsp">Agendamentos</a></li>
            <li><a href="Login-MeuPlano.jsp">Meu Plano</a></li>
            <c:if test="${sessionScope.loggedUser != null}">
                <li><a href="/logout">Sair</a></li>
            </c:if>
        </ul>
    </div>
    <div class="conteudo">
        <div class="centralizado">
            <ul>
                <li>
                    <div class="pet-card">
                        <img src="assets/images/pata.png" alt="Pet Image">
                        <div class="card-info">
                            <h2>Nome do Pet</h2>
                            <div class="pet-info">
                                <div class="info-row">
                                    <div class="pet-data">
                                        <p>Local:</p>
                                        <input type="text" readonly>
                                        <p>Data:</p>
                                        <input type="date" placeholder="__/__/____" readonly>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="pet-data">
                                        <p style="font-size: 2.5rem;">Especialidade:</p>
                                        <input type="text" readonly>
                                        <p>Horário:</p>
                                        <input type="time" readonly>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div>
                        <a href="" class="botao cinza">Cancelar</a>
                        <a href="" class="botao verde">Novo</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>

</body>

</html>