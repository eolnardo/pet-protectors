<!DOCTYPE html>
<html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/icons/icon-pegada.ico" type="image/x-icon">
    <title>Pet Protectors - Cadastre Pet</title>
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
<div class="navbar">
    <a href="index.jsp" class="navbar-brand">Pet Protectors</a>
    <ul class="navbar-menu">
        <div class="hamburguer">
            <div class="linha"></div>
            <div class="linha"></div>
            <div class="linha"></div>
        </div>
    </ul>
</div>

<section class="cadastro">
    <form action="/create-pet" method="post">
        <div class="cadastro-cliente">
            <div id="titulo">
                <p>Editar informações do Pet</p>
            </div>
            <div class="form-line">
                <input type="hidden" id="petId" name="petId" value="${param.petId}">
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
                <input type="raca" id="raca" name="raca" value="${param.raca}"><br><br>
            </div>
            <div>
                <a href="Login-MeusPets.jsp" class="botao cinza">Voltar</a>
                <button type="submit" class="botao verde">Editar</button>
            </div>
        </div>
    </form>
</section>

<script src="assets/js/menu.js"></script>
</body>

</html>