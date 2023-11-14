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

    <title>Meu Plano</title>
    <style>
        /* Copie todas as propriedades CSS fornecidas aqui */

        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            list-style: none;
            font-family: var(--font-default);
            width: 100%;
            height: 100vh;
            display: flex;
            flex-direction: column;
            background-color: #1E1D67;
            color: #fff;
            align-items: center;
            justify-content: center;
        }

        /* Adicione outras propriedades específicas da sua página aqui */

        h1 {
            font-size: 4rem;
            margin-bottom: 20px;
        }

        p {
            font-size: 2rem;
            margin-bottom: 30px;
        }


    </style>
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
                <li><a href="Login-MeusDados.jsp">Meus Dados</a></li>
                <li><a href="Login-MeusPets.jsp">Meus Pets</a></li>
                <li><a href="Login-MeusAgendamentos.jsp">Agendamentos</a></li>
                <li><a href="Login-MeuPlano.jsp">Meu Plano</a></li>
                <c:if test="${sessionScope.loggedUser != null}">
                    <li><a href="/logout">Sair</a></li>
                </c:if>
            </ul>
        </div>
        <div>
            <h1>Minha Conta</h1>

            <div class="plano-atual">
                <h2>Plano Atual</h2>
                <p>${plano.nome}</p>
                <p>${plano.nome}</p>
                <p>${plano.nome}</p>
                <p>${plano.preco}</p>
            </div>

            <div class="opcoes">
                <a href="#" class="botao-vermelho">Cancelar Assinatura</a>
                <a href="#" class="botao-mudar">Mudar Plano</a>
            </div>
        </div>
    </body>
</html>