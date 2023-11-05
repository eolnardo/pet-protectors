<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/assets/icons/icon-pegada-preta.ico" type="image/x-icon">
    <title>Pet Protectors</title>
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/styles-login.css" />
</head>

<body>
    <div class="navbar">
        <a href="#" class="navbar-brand">Pet Protectors</a>
    </div>

    <div class="sidebar">
        <div class="user-info">
            <img src="assets/images/user.png" alt="User Image">
            <p>Nome do Usuário</p>
        </div>
        <div class="menu-options">
            <ul>
                <li><a href="Login-MeusDados.jsp">Meus Dados</a></li>
                <li><a href="Login-MeusPets.jsp">Meus Pets</a></li>
                <li><a href="Login-Agendamentos.html">Agendamentos</a></li>
                <li><a href="">Meu Plano</a></li>
                <li><a href="index.jsp">Sair</a></li>
            </ul>
        </div>
    </div>
    <div class="content">
        <ul>
            <li>
                <div class="pet-card">
                    <div class="pet-image">
                        <img src="assets/images/pata.png" alt="Pet Image">
                    </div>
                    <div class="pet-info">
                        <h2>Nome do Pet</h2>
                        <div class="info-line">
                            <div class="pet-data">
                                <p>Nascimento:</p>
                                <input type="text">
                                <p>Sexo:</p>
                                <input type="text">
                            </div>
                        </div>
                        <div class="info-line">
                            <div class="pet-data">
                                <p>Espécie:</p>
                                <input type="text">
                                <p>Raça:</p>
                                <input type="text">
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="pet-card">
                    <div class="pet-image">
                        <img src="assets/images/pata.png" alt="Pet Image">
                    </div>
                    <div class="pet-info">
                        <h2>Nome do Pet</h2>
                        <div class="info-line">
                            <div class="pet-data">
                                <p>Nascimento:</p>
                                <input type="text">
                            </div>
                            <div class="pet-data">
                                <p>Sexo:</p>
                                <input type="text">
                            </div>
                        </div>
                        <div class="info-line">
                            <div class="pet-data">
                                <p>Espécie:</p>
                                <input type="text">
                            </div>
                            <div class="pet-data">
                                <p>Raça:</p>
                                <input type="text">
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div>
                    <a href="" class="botao cinza">Excluir</a>
                    <a href="" class="botao verde">Adicionar Pet</a>
                </div>
            </li>
        </ul>

    </div>
</body>

</html>