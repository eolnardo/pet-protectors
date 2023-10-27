<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
            </li>
            <li>
                <textarea></textarea>
            </li>
            <li>
                <span class="login">Senha</span>
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
        <form action="/create-usuario" method="post">
            <div class="cadastro-cliente">
                <div id="titulo">
                    <p>Cadastro Cliente</p>
                </div>
                <div class="form-line">
                    <input type="hidden" id="clienteId" name="clienteId" value="${param.clienteId}">
                    <label for="nome">Nome:</label>
                    <input type="text" id="nome" name="nome" value="${param.nome}"><br><br>
                    <label for="cpf">CPF:</label>
                    <input type="text" id="cpf" name="cpf" value="${param.cpf}"><br><br>
                </div>
                <div class="form-line">
                    <label for="endereco">Endereço:</label>
                    <input type="text" id="endereco" name="endereco"value="${param.endereco}"><br><br>
                    
                </div>
                <div class="form-line">
                    <label for="telefone">Tel/Celular:</label>
                    <input type="text" id="telefone" name="telefone"value="${param.telefone}"><br><br>
                </div>

                <div class="form-line">
                    <label for="genero">Genero:</label>
                    <input type="text" id="genero" name="genero" value="${param.genero}"><br><br>
                </div>
                <div class="form-line" id="login">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" value="${param.email}"><br><br>
                    <label for="senha">Senha:</label>
                    <input type="text" id="senha" name="senha" value="${param.senha}"><br><br>
                </div>
                <div>
                    <a href="index.jsp" class="botao cinza">Voltar</a>
                    <button type="submit" href="" class="botao verde">Cadastrar</button>
                </div>
            </div>
        </form>

    </section>

    <script src="assets/js/menu.js"></script>
</body>

</html>