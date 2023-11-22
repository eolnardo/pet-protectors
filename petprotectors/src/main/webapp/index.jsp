<!DOCTYPE html>
<html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>

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
            <a href="index.jsp" class="navbar-brand" style="background-color: #1E1D67;">Pet Protectors</a>
            <ul class="navbar-menu">
                <div class="hamburguer">
                    <div class="linha"></div>
                    <div class="linha"></div>
                    <div class="linha"></div>
                </div>
            </ul>
        </div>

        <nav class="menu">

            <ul class="" id="autenticadoLogin" style="display: none;">
                <form id="" action="show-cliente" method="get">
                    <li>
                        <button type="submit" class="botao verde" style="width: 25rem">Ver Perfil!</button>
                    </li>
                </form>
            </ul>

            <ul id="naoautenticadoLogin" style="display: none;">
                <form id="login" action="login" method="post">
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
                        <button type="submit" class="botao verde" style="width: 25rem">Entrar</button>
                    </li>
                </form>
                <a href="TelaCadastroCliente.jsp" style="font-size: 2.5rem; color: white;">Cadastre-se</a>
            </ul>
        </nav>

        <header>
            <div class="parent">
                <div class="card-apresentacao1">
                    <li>
                        <h1 style="font-size: 5rem;">Pet Protectors</h1>
                        <span>O serviço de cuidados que traz para o seu animal de estimação uma vida longa e
                            saudável.</span>
                        <a href="#planos" class="botao verde">Veja mais!</a>
                    </li>
                </div>
                <div class="card-apresentacao2">
                    <li>
                        <h3 style="font-size: 2.7rem;">Atendimento Diversificado</h3>
                            <span>O Pet Protectors cuida das mais variadas espécies, assim você pode tratar mais do que
                                cães e gatos!</span>
                    </li>
                </div>
                <div class="card-apresentacao3">
                    <li>
                        <h3 style="font-size: 2.7rem;">Confiabilidade</h3>
                            <span>Seu pet estará seguro nas mãos dos nossos profissionais capacitados!</span>
                    </li>
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
                            <a id="autenticadobasic" style="display: none;" href="login.jsp" class="botao verde">Assinar</a>
                            <a id="naoautenticadobasic" style="display: none;" href="selecionar-plano.jsp" class="botao verde">Assinar</a>
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
                            <a id="autenticadomid" style="display: none;" href="login.jsp" class="botao verde">Assinar</a>
                            <a id="naoautenticadomid" style="display: none;" href="selecionar-plano.jsp" class="botao verde">Assinar</a>
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
                            <a id="autenticado" style="display: none;" href="login.jsp" class="botao verde">Assinar</a>
                            <a id="naoautenticado" style="display: none;"href="selecionar-plano.jsp" class="botao verde">Assinar</a>

                            <script>
                                var isUserAuthenticated = ${sessionScope.loggedUser == null};


                                if (isUserAuthenticated) {
                                    document.getElementById("autenticado").style.display = "block";
                                    document.getElementById("autenticadomid").style.display = "block";
                                    document.getElementById("autenticadobasic").style.display = "block";
                                    document.getElementById("naoautenticadoLogin").style.display = "block";
                                } else {
                                    document.getElementById("naoautenticado").style.display = "block";
                                    document.getElementById("naoautenticadomid").style.display = "block";
                                    document.getElementById("naoautenticadobasic").style.display = "block";
                                    document.getElementById("autenticadoLogin").style.display = "block";
                                }
                            </script>

                        </div>
                    </li>
                </ul>
            </div>
        </section>

        <script src="assets/js/menu.js"></script>
    </body>

</html>