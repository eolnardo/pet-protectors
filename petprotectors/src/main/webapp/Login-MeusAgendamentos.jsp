<!DOCTYPE html>
<html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
            <a href="index.jsp" class="navbar-brand" style="background-color: #1E1D67;">Pet Protectors</a>
        </div>

        <div class="sidebar">
            <div class="username">
                <img src="assets/images/user.png" alt="User Image">
                <p>${cliente.nome}</p>
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
                <form action="show-agendamentos" method="get">
                    <li>
                        <button type="submit">Agendamentos</button>
                    </li>
                </form>
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
                <ul>
                    <li>
                        <c:forEach var="agendamento" items="${agendamentos}">
                            <div class="pet-card">
                                <img src="assets/images/pata.png" alt="Pet Image">
                                <div class="card-info">
                                    <div class="pet-info" style="padding-top: 5rem">
                                    <h2>${pet.nome}</h2>
                                        <div class="info-row">
                                            <div class="pet-data">
                                                <p>Local:</p>
                                                <input type="text" id="local" name="local" value="${agendamento.local}" readonly>
                                                <p>Data:</p>
                                                <input type="date" id="data" value="${agendamento.data}" readonly>
                                            </div>
                                        </div>
                                        <div class="info-row">
                                            <div class="pet-data">
                                                <p style="font-size: 2.5rem;">Especialidade:</p>
                                                <input type="text" id="especialidade" name="especialidade" value="${agendamento.especialidade}" readonly>
                                                <p>Horário:</p>
                                                <input type="time" id="hora" name="hora" value="${agendamento.hora}" readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </li>
                    <li>
                        <div>
                            <button class="botao azul">Desmarcar</button>
                            <form action="create-agendamento" method="get">
                                <button type="submit" class="botao verde">Novo</button>
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
        </div>


        <script src="/petprotectors/src/main/webapp/assets/js/menu.js"></script>
    </body>

</html>