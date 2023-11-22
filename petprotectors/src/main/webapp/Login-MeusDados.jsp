    <!DOCTYPE html>
    <html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
            <img src="assets/images/pegada.png" alt="petprotectors-logo" style="height: 50px;">
            <a href="index.jsp" class="navbar-brand" style="background-color: #1E1D67;">Pet Protectors</a>
        </div>
        <form>
            <div class="sidebar">
                <div class="username">
                    <img src="assets/images/user.png" alt="User Image">
                    <p>${cliente.nome}</p>
                </div>
                <ul>
                    <form action="show-cliente" method="get">
                        <li>
                            <button type="submit">Meus Dados</button>
                        </li>
                    </form>
                    <form action="show-pets" method="get">
                        <li>
                            <button type="submit">Meus Pets</button>
                        </li>
                    </form>
                    <li><a href="Login-MeusAgendamentos.jsp">Agendamentos</a></li>
                    <form action="show-subscription" method="get">
                        <li>
                            <button type="submit">Meu Plano</button>
                        </li>
                    </form>
                    <c:if test="${sessionScope.loggedUser != null}">
                        <li><a href="/logout">Sair</a></li>
                    </c:if>
                </ul>
            </div>
        </form>
        <div class="conteudo">
            <div class="container">
                <div class="form-image">
                    <img src="assets/images/undraw_Experience_design_re_dmqq.png" alt="">
                </div>
                <div class="form">
                    <form action="update-usuario" method="get">
                        <div class="form-header">
                            <div class="title">
                                <h1>Meus Dados</h1>
                            </div>
                        </div>
                        <div class="input-group">
                            <input type="hidden" id="clienteId" name="clienteId" value="${cliente.clienteId}">
                            <div class="input-box">
                                <label for="nome">Nome</label>
                                <input type="text" id="nome" name="nome" inputmode="text" placeholder="Digite seu nome"  value="${cliente.nome}" readonly>
        
                            </div>
                            <div class="input-box">
                                <label for="cpf">CPF</label>
                                <input id="cpf" type="text" name="cpf" placeholder="___.___.___-__" inputmode="numeric" pattern="\[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}" maxlength="14" value="${cliente.cpf}" readonly>
                            </div>
                            <div class="input-box">
                                <label for="nascimento">Nascimento</label>
                                <input id="nascimento" type="text" name="nascimento" placeholder="  /  /    " inputmode="numeric" pattern="\d{2}/\d{2}/\d{4}" maxlength="10" value="${cliente.nascimento}" readonly>
                            </div>
                            <div class="input-box">
                                <label for="endereco">Endereço</label>
                                <input id="endereco" type="text" name="endereco" placeholder="Digite o endereço" value="${cliente.endereco}" readonly>
                            </div>
                            <div class="input-box">
                                <label for="telefone">Tel / Cel</label>
                                <input id="telefone" type="text" name="telefone" placeholder="(__)_____-____" inputmode="numeric" pattern="\([0-9]{2}\)[0-9]{5}-[0-9]{4}" maxlength="14" value="${cliente.telefone}" readonly>
                            </div>
                            <div class="input-box">
                                <label for="email">E-mail</label>
                                <input id="email" type="email" name="email" placeholder="Digite seu e-mail" value="${cliente.email}" readonly>
                            </div>
                            <div class="input-box">
                                <label for="senha">Senha</label>
                                <input id="senha" type="password" name="senha" placeholder="Digite sua senha" value="${cliente.senha}" readonly>
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
                                <button type="submit" class="botao verde">Editar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>

    </html>