<!DOCTYPE html>

<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet Protectors</title>
    <link rel="shortcut icon" href="assets/icons/icon-pegada.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div class="navbar">
        <img src="assets/images/pegada.png" alt="petprotectors-logo" style="height: 50px;">
        <a href="index.jsp" class="navbar-brand">Pet Protectors</a>
        <ul class="navbar-menu">
            <div class="hamburguer">
                <div class="linha"></div>
                <div class="linha"></div>
                <div class="linha"></div>
            </div>
        </ul>
    </div>

    <nav class="menu">
        <ul>
            <form action="login" method="post">
                <li>
                    <span class="login">Usuário</span>
                </li>
                <li>
                    <input class="login" type="email" id="email" name="email" value="${param.email}">
                </li>
                <li>
                    <span class="login">Senha</span>
                </li>
                <li>
                    <input class="login" type="password" id="senha" name="senha" value="${param.senha}">
                </li>
                <li>
                    <span> </span>
                </li>
                <button type="submit" class="botao verde" style="width: 25rem">Entrar</button>
            </form>
            <a href="TelaCadastroCliente.jsp" style="font-size: 2.5rem; color: white;">Cadastre-se</a>
        </ul>
    </nav>

    <header>
        <div class="parent">
            <div class="card-apresentacao1">
                <h1>Pet Protectors</h1>
                <span>O serviço de cuidados que traz para o seu animal de estimação uma vida longa e saudável</span>
                <a href="#secao-planos" class="botao verde">Conheça os planos!</a>
            </div>
            <div class="card-apresentacao2">
                <h1>Pet Protectors</h1>
            </div>
            <div class="card-apresentacao3">
                <h1>Pet Protectors</h1>
            </div>
        </div>
    </header>

    <section id="planos">
        <div id="secao-planos">
            <ul>
                <li>
                    <div class="card">
                        <div class="card-image">
                            <img class="medium" src="assets/images/2-hamster.png">
                            <img class="big" src="assets/images/1-dog.png">
                            <img class="medium" src="assets/images/3-turtle.png">
                        </div>
                        <div class="card-info">
                            <h3>Plano Basic</h3>
                            <p>Consultas das 06h as 20h</p>
                            <p>Cobertura de vacinas</p>
                            <p>Atendimento à domicílio</p>
                        </div>
                        <h4>R$ 34,99</h4>
                        <a href="" class="botao verde">Assinar</a>
                    </div>
                </li>
                <li>
                    <div class="card">
                        <div class="card-image">
                            <img class="medium" src="assets/images/2-porquinho.png">
                            <img class="big" src="assets/images/1-calopsita.png">
                            <img class="medium" src="assets/images/3-furao.png">
                        </div>
                        <div class="card-info">
                            <h3>Plano Mid</h3>
                            <p>Consultas das 06h as 20h</p>
                            <p>Cobertura de vacinas</p>
                            <p>Atendimento à domicílio</p>
                            <p>Exames básicos e de imagem</p>
                        </div>
                        <h4>R$ 69,99</h4>
                        <a href="" class="botao verde">Assinar</a>
                    </div>
                </li>
                <li>
                    <div class="card">
                        <div class="card-image">
                            <img class="medium" src="assets/images/2-iguana.png">
                            <img class="big" src="assets/images/1-cat.png">
                            <img class="medium" src="assets/images/3-arara.png">
                        </div>
                        <div class="card-info">
                            <h3>Plano Premium</h3>
                            <p>Consultas das 06h as 20h</p>
                            <p>Cobertura de vacinas</p>
                            <p>Atendimento à domicílio</p>
                            <p>Exames complexos</p>
                            <p>Internação</p>
                            <p>Processos cirúrgicos</p>
                        </div>
                        <h4>R$ 99,99</h4>
                        <a href="" class="botao verde">Assinar</a>
                    </div>
                </li>
            </ul>
        </div>
    </section>

    <script src="assets/js/menu.js"></script>
</body>

</html>