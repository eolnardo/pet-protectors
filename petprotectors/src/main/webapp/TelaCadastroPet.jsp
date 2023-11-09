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
                    <p>Cadastro Pet</p>
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
                    <button type="submit" class="botao verde">Cadastrar</button>
                </div>
            </div>
        </form>

        <!--
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
                            <label for="nome">Nome</label>
                            <input type="text" id="nome" name="nome" inputmode="text" placeholder="Digite seu nome"  value="${nome}"required>
                        </div>
                        <div class="input-box">
                            <label for="pets">Número de Pets</label>
                            <input id="pets" type="text" name="pets" placeholder="Número de Pets:" inputmode="numeric" pattern="\[0-9]*" maxlength="20" value="${pets}" required>
                        </div>
                        <div class="input-box">
                            <label for="endereco">Endereço</label>
                            <input id="endereco" type="text" name="endereco" placeholder="Digite o endereço" value="${endereco}" required>
                        </div>
                        <div class="input-box">
                            <label for="email">E-mail</label>
                            <input id="email" type="email" name="email" placeholder="Digite seu e-mail" value="${email}" required>
                        </div>
                        <div class="input-box">
                            <label for="senha">Senha</label>
                            <input id="senha" type="password" name="senha" placeholder="Digite sua senha" value="${senha}" required>
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
                        <button type="submit" class="botao">Cadastrar</button>
                    </div>
                </form>
            </div>
        </div>
        -->

    </section>

    <script src="assets/js/menu.js"></script>
</body>

</html>