<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/assets/icons/icon-pegada-preta.ico" type="image/x-icon">
    <title>Pet Protectors</title>
    <link rel="stylesheet" href="/assets/css/styles.css">
    <link rel="stylesheet" href="/assets/css/formcliente.css">
</head>

<body style="background-color: #b7bafd;">
    <div class="navbar">
        <img src="/assets/icons/icon-pegada.ico" alt="petprotectors-logo" style="height: 50px;">
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
            <form action="/login" method="post">
                <li>
                    <span class="login">Usuário</span>
                </li>
                <li>
                    <input class="login" type="email" id="email" name="email" value="">
                </li>
                <li>
                    <span class="login">Senha</span>
                </li>
                <li>
                    <input class="login" type="password" id="senha" name="senha" value="">
                </li>
                <li>
                    <span> </span>
                </li>
            </form>
            <button type="submit" class="botao verde" style="width: 25rem">Entrar</button>
            <a href="TelaCadastroCliente.jsp" style="font-size: 2.5rem; color: white;">Cadastre-se</a>
        </ul>
    </nav>

    <div class="container">
        <div class="form-image">
            <img src="assets/images/undraw_passing_by_0un9 (1).svg" alt="">
        </div>
        <div class="form">
            <form action="">
                <div class="form-header">
                    <div class="title">
                        <h1>Cadastre-se</h1>
                    </div>
                </div>
                <div class="input-group">
                    <div class="input-box">
                        <label for="nome">Nome</label>
                        <input id="nome" type="text" name="nome" placeholder="Digite seu nome" required>
                    </div>
                    <div class="input-box">
                        <label for="cpf">CPF</label>
                        <input id="cpf" type="text" name="cpf" placeholder="___.___.___-__" required>
                    </div>
                    <div class="input-box">
                        <label for="endereco">Endereço</label>
                        <input id="endereco" type="text" name="endereco" placeholder="Digite o endereço" required>
                    </div>
                    <div class="input-box">
                        <label for="telefone">Tel / Cel</label>
                        <input id="telefone" type="text" name="telefone" placeholder="(__)_____-____" required>
                    </div>
                    <div class="input-box">
                        <label for="email">E-mail</label>
                        <input id="email" type="email" name="email" placeholder="Digite seu e-mail" required>
                    </div>
                    <div class="input-box">
                        <label for="senha">Senha</label>
                        <input id="senha" type="password" name="senha" placeholder="Digite sua senha" required>
                    </div>
                </div>
                <div class="gender-inputs">
                    <div class="gender-title">
                        <h6>Gênero</h6>
                    </div>
                    <div class="gender-group">
                        <div class="gender-input">
                            <input type="radio" id="feminino" name="gender">
                            <label for="feminino">Feminino</label>
                        </div>
                        <div class="gender-input">
                            <input type="radio" id="masculino" name="gender">
                            <label for="masculino">Masculino</label>
                        </div>
                        <div class="gender-input">
                            <input type="radio" id="outros" name="gender">
                            <label for="outros">Outros</label>
                        </div>
                    </div>
                </div>

                <div class="cadastrar-button">
                    <button><a href="" class="botao">Cadastrar</a></button>
                </div>
            </form>
        </div>
    </div>

    <script src="assets/js/menu.js"></script>
</body>

</html>