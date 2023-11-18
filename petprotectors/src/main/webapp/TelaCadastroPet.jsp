<!DOCTYPE html>
<html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html" charset=UTF-8>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="assets/icons/icon-pegada.ico" type="image/x-icon">
    <title>Pet Protectors - Cadastro Pet</title>
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/formcliente.css">
</head>

<body style="background-color: #b7bafd;">
    <div class="navbar">
        <img src="assets/images/pegada.png" alt="petprotectors-logo" style="height: 50px;">
        <a href="index.jsp" class="navbar-brand">Pet Protectors</a>
        <ul class="navbar-menu"></ul>
    </div>

    <div class="container">
        <div class="form-image">
            <img src="assets/images/undraw_Dog_walking_re_l61p.png" alt="">
        </div>
        <div class="form">
            <form action="create-usuario" method="post">
                <div class="form-header">
                    <div class="title">
                        <h1>Cadastre seu Pet</h1>
                    </div>
                </div>
                <div class="input-group">
                    
                    <div class="input-box">
                        <label for="nome">Nome:</label>
                        <input type="text" id="nome" name="nome" value="${param.nome}" required><br><br>
                    </div>
                    <div class="input-box">
                        <label for="idade">Idade:</label>
                        <input type="text" id="idade" name="idade" value="${param.idade}" required><br><br>
                    </div>
                    <div class="input-box">
                        <label for="sexo">Sexo:</label>
                        <input type="text" id="sexo" name="sexo" value="${param.sexo}" required><br><br>
                    </div>
                    <div class="input-box">
                        <label for="especie">Espécie:</label>
                        <input type="text" id="especie" name="especie" value="${param.especie}" required><br><br>
                    </div>
                    <div class="input-box">
                        <label for="raca">Raça:</label>
                        <input type="raca" id="raca" name="raca" value="${param.raca}" required><br><br>
                    </div>
                    <div class="input-box">
                        <input type="hidden" id="petId" name="petId" value="${param.petId}">
                    </div>
                </div>

                <div class="cadastrar-button">
                    <div>
                        <button class="botao azul"><a href="index.jsp">Voltar</a></button>
                    </div>
                    <div>
                        <button type="submit" class="botao verde">Cadastrar</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script src="assets/js/menu.js"></script>
</body>

</html>