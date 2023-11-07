<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <link rel="shortcut icon" href="assets/icons/icon-pegada.ico" type="image/x-icon">
    <title>Pet Protectors - Meus Pets</title>
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
            <ul>
                <li>
                    <div class="pet-card">
                        <img src="assets/images/pata.png" alt="Pet Image">
                        <div class="card-info">
                            <h2>Nome do Pet</h2>
                            <div class="pet-info">
                                <div class="info-row">
                                    <div class="pet-data">
                                        <p>Nascimento:</p>
                                        <input type="text" readonly>
                                        <p>Sexo:</p>
                                        <input type="text" readonly>
                                    </div>
                                </div>
                                <div class="info-row">
                                    <div class="pet-data">
                                        <p>Espécie:</p>
                                        <input type="text" readonly>
                                        <p>Raça:</p>
                                        <input type="text" readonly>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div>
                        <a href="" class="botao cinza">Excluir</a>
                        <a href="TelaCadastroPet.jsp" class="botao verde">Adicionar Pet</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>

</body>

</html>