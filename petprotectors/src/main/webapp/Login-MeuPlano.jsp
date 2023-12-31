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
            <a href="index.jsp" class="navbar-brand" style="background-color: #1E1D67;">Pet Protectors</a>
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
            <div class="plano-atual">
                <div class="card-image">
                    <img class="medium" src="assets/images/2-iguana.png">
                    <img class="big" src="assets/images/1-cat.png">
                    <img class="medium" src="assets/images/3-arara.png">
                </div>
                <h2>Plano Atual</h2>
                <input type="hidden" id="planoid" name="planoid" value="${plano.planoid}">
                <p>${plano.nome}</p>
                <p>${plano.preco}</p>
                <p>${plano.descricao}</p>
            </div>
            <div class="opcoes" style="margin-top: -5rem;">
                <form action="cancel-plano" method="post">
                    <button type="submit" class="botao vermelho">Cancelar</button>
                </form>
                <a href="selecionar-plano.jsp" class="botao azul">Mudar Plano</a>
            </div>
        </div>
    </body>

    </html>