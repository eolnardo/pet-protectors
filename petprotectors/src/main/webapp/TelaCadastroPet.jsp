<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet Protectors</title>
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div class="navbar">
        <a href="#" class="navbar-brand">Pet Protectors</a>
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
            <li>
                <span class="login">Usuário</span>
                <input type="email" id="email" name="email" value="${cliente.email}">
            </li>
            <li>
                <textarea></textarea>
            </li>
            <li>
                <span class="login">Senha</span>
                <input type="password" id="senha" name="senha" value="${cliente.senha}">
            </li>
            <li>
                <textarea></textarea>
            </li>
            <span> </span>
            <a href="" class="botao verde" style="width: 25rem">Entrar</a>
            <a href="" style="font-size: 2.5rem; color: white;">Cadastre-se</a>
        </ul>
    </nav>

    <section class="cadastro">
        <form action="/create-pet" method="post">
            <div class="cadastro-cliente">
                <div id="titulo">
                    <p>Cadastro Pet</p>
                </div>
                <div class="form-line">
                    <input type="hidden" id="idPet" name="idPet" value="${param.idPet}">
                    <label for="nome">Nome:</label>
                    <input type="text" id="nome" name="nome" value="${param.nome}"><br><br>
                </div>
                <div class="form-line">
                    <label for="idade">Idade:</label>
                    <input type="text" id="idade" name="idade" value="${param.idade}"><br><br>
                    <label for="sexo">Sexo:</label>
                    <input type="text" id="sexo" name="sexo" value="${param.sexo}"><br><br>
                    <
                </div>
                <div class="form-line" id="login">
                    <label for="especie">Espécie:</label>
                    <input type="text" id="especie" name="especie" value="${param.especie}"><br><br>
                    <label for="raca">Raça:</label>
                    <input type="email" id="raca" name="raca" value="${param.raca}"><br><br>
                </div>
                <div>
                    <a href="" class="botao cinza">Voltar</a>
                    <a href="Login-MeusPets.jsp" class="botao verde">Cadastrar</a>
                </div>
            </div>
        </form>

    </section>

    <script src="assets/js/menu.js"></script>
</body>

</html>