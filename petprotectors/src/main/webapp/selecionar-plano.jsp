<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="pt-BR">
    
    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Seleção de Plano</title>
        <link rel="shortcut icon" href="assets/icons/icon-pegada.ico" type="image/x-icon">
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/styles-arealogada.css">
    </head>
<body>
    <div class="navbar">
        <img src="assets/images/pegada.png" alt="petprotectors-logo" style="height: 50px;">
        <a href="index.jsp" class="navbar-brand" style="background-color: #1E1D67;">Pet Protectors</a>
    </div>

<section id="planos" style="height: 93vh; margin-top: 7vh;">
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
                    <a href="AssinarPlanoBasico.jsp" class="botao verde">Selecionar</a>
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
                    <a href="AssinarPlanoMid.jsp" class="botao verde">Selecionar</a>
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
                    <a href="AssinarPlanoPremium.jsp" class="botao verde">Selecionar</a>
                </div>
            </li>
        </ul>
    </div>
</section>
</body>
</html>
