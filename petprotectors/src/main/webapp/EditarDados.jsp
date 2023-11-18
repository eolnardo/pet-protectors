<!DOCTYPE html>
<html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <link rel="shortcut icon" href="/assets/icons/icon-pegada-preta.ico" type="image/x-icon">
    <title>Pet Protectors - Meus Dados</title>
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/styles-arealogada.css">
    <link rel="stylesheet" href="assets/css/formclientelogado.css">
</head>

<body>

<div class="navbar">
    <img src="assets/icons/icon-pegada.ico" alt="petprotectors-logo" style="height: 50px;">
    <a href="index.jsp" class="navbar-brand">Pet Protectors</a>
</div>

<div class="sidebar">
    <div class="username">
        <img src="assets/images/user.png" alt="User Image">
        <p>${cliente.nome}</p>
    </div>
    <ul>
        <form action="show-cliente" method="get">
            <li><button id="" href="Login-MeusDados.jsp">Meus Dados</button></li>
        </form>
        <form action="show-pets" method="get">
            <li>
                <input type="hidden" name="nome" value="${cliente.nome}">
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
    <div class="container">
        <div class="form-image">
            <img src="assets/images/undraw_passing_by_0un9 (1).svg" alt="">
        </div>
        <div class="form" style="background-color: #1E1D67;">
            <form action="update-usuario" method="post">
                <div class="input-group">
                    <div class="input-box">
                        <label for="nome">Nome</label>
                        <input id="nome" type="text" name="nome" value="${cliente.nome}">
                    </div>
                    <div class="input-box">
                        <label for="cpf">CPF</label>
                        <input id="cpf" type="text" name="cpf" value="${cliente.cpf}">
                    </div>
                    <div class="input-box">
                        <label for="endereco">Endereço</label>
                        <input id="endereco" type="text" name="endereco" value="${cliente.endereco}">
                    </div>
                    <div class="input-box">
                        <label for="telefone">Tel / Cel</label>
                        <input id="telefone" type="text" name="telefone" value="${cliente.telefone}">
                    </div>
                    <div class="input-box">
                        <label for="email">E-mail</label>
                        <input id="email" type="email" name="email" value="${cliente.email}">
                    </div>
                    <div class="input-box">
                        <label for="senha">Senha</label>
                        <input id="senha" type="password" name="senha" value="${cliente.senha}">
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
                    <button type="submit" class="botao verde" style="padding: 10px;">Atualizar</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>

</html>