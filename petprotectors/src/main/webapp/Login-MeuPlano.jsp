<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <link rel="shortcut icon" href="assets/icons/icon-pegada.ico" type="image/x-icon">
    <title>Pet Protectors - Meu Plano</title>
    <link rel="stylesheet" href="assets/css/styles-arealogada.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="navbar">
        <img src="assets/images/pegada.png" alt="petprotectors-logo" style="height: 50px;">
        <a href="index.jsp" class="navbar-brand">Pet Protectors</a>
    </div>
    <div class="sidebar">
            <div class="username">
                <img src="assets/images/user.png" alt="User Image">
                <p>Usuário</p>
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
            <li><a href="Login-MeuPlano.jsp">Meu Plano</a></li>
            <c:if test="${sessionScope.loggedUser != null}">
                <li><a href="/logout">Sair</a></li>
            </c:if>
        </ul>
        </div>
        <div class="conteudo">
            <div class="plano-atual">
                <h2>Plano Atual</h2>
                <p>${plano.nome}</p>
                <p>${plano.preco}</p>
            </div>
            <div class="opcoes">
                <a href="#" class="botao vermelho">Cancelar</a>
                <a href="#" class="botao amarelo">Mudar Plano</a>
            </div>
        </div>
    </body>
</html>