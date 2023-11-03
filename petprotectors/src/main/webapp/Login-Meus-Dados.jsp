<!DOCTYPE html>
<html lang="pt-BR">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/assets/icons/icon-pegada-preta.ico" type="image/x-icon">
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
    <div class="navbar">
            <a href="#" class="navbar-brand">Pet Protectors</a>
        </div>

        <div class="sidebar">
            <div class="user-info">
                <img src="assets/images/user.png" alt="User Image">
                <p>Nome do Usuário</p>
            </div>
            <div class="menu-options">
                <a href="#">Meus Dados</a>
                <a href="#">Meus Pets</a>
                <a href="#">Meus Agendamentos</a>
                <a href="#">Meu Plano</a>
                <a href="#">Sair</a>
            </div>
        </div>
        <div class="content">
        </div>
</nav>

<section class="cadastro">
    <form action="/show-cliente" method="get">
        <div class="cadastro-cliente">
            <div id="titulo">
                <p>Meus Dados</p>
            </div>
            <div class="form-line">
                <input type="hidden" id="clienteId" name="clienteId" value="${cliente.clienteId}">
                <label for="nome">Nome:</label>
                <input type="text" id="nome" name="nome" value="${cliente.nome}" disabled><br><br>
                <label for="cpf">CPF:</label>
                <input type="text" id="cpf" name="cpf" value="${cliente.cpf}" disabled><br><br>
            </div>
            <div class="form-line">
                <label for="endereco">Endereço:</label>
                <input type="text" id="endereco" name="endereco" value="${cliente.endereco}" disabled><br><br>
            </div>
            <div class="form-line">
                <label for="telefone">Tel/Celular:</label>
                <input type="text" id="telefone" name="telefone" value="${cliente.telefone}" disabled><br><br>
            </div>
            <div class="form-line">
                <label for="genero">Genero:</label>
                <input type="text" id="genero" name="genero" value="${cliente.genero}" disabled><br><br>
            </div>
            <div class="form-line" id="login">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${cliente.email}" disabled><br><br>
                <label for="senha">Senha:</label>
                <input type="text" id="senha" name="senha" value="${cliente.senha}"><br><br>
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