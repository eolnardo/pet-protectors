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

<div class="sidebar">
    <div class="username">
        <img src="assets/images/user.png" alt="User Image">
        <p>${cliente.nome}</p>

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
                                <label for="nascimento">Nascimento</label>
                                <input id="nascimento" type="text" name="nascimento" placeholder="  /  /    "
                                       inputmode="numeric" pattern="\d{2}/\d{2}/\d{4}" maxlength="10"
                                       value="${cliente.nascimento}" required>
                                <script>
                                    const nascimentoInput = document.getElementById('nascimento');

                                    nascimentoInput.addEventListener('input', () => {
                                        let value = nascimentoInput.value.replace(/\D/g, '');
                                        let formattedValue = '';

                                        for (let i = 0; i < value.length; i++) {
                                            if (i === 2 || i === 4) {
                                                formattedValue += '/';
                                            }
                                            formattedValue += value[i];
                                        }

                                        nascimentoInput.value = formattedValue;
                                    });
                                </script>

                            </div>
                            <div class="input-box">
                                <label for="endereco">Endereço</label>
                                <input id="endereco" type="text" name="endereco" placeholder="Digite o endereço"
                                       value="${cliente.endereco}" required>
                            </div>
                            <div class="input-box">
                                <label for="telefone">Tel / Cel</label>
                                <input id="telefone" type="text" name="telefone" placeholder="(__)_____-____"
                                       inputmode="numeric" pattern="\([0-9]{2}\)[0-9]{5}-[0-9]{4}" maxlength="14"
                                       value="${cliente.telefone}" required>
                                <script>
                                    const telefoneInput = document.getElementById('telefone');

                                    telefoneInput.addEventListener('input', () => {
                                        let value = telefoneInput.value.replace(/\D/g, '');
                                        let formattedValue = '';

                                        for (let i = 0; i < value.length; i++) {
                                            if (i === 0) {
                                                formattedValue += '(';
                                            } else if (i === 2) {
                                                formattedValue += ')';
                                            } else if (i === 7) {
                                                formattedValue += '-';
                                            }
                                            formattedValue += value[i];
                                        }

                                        telefoneInput.value = formattedValue;
                                    });
                                </script>
                            </div>
                            <div class="input-box">
                                <label for="email">E-mail</label>
                                <input id="email" type="email" name="email" placeholder="Digite seu e-mail"
                                       value="${cliente.email}" required>
                            </div>
                            <div class="input-box">
                                <label for="senha">Senha</label>
                                <input id="senha" type="password" name="senha" placeholder="Digite sua senha"
                                       value="${cliente.senha}" required>
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

                        <script>
                            function getRadioValue() {
                                var genderRadioButtons = document.getElementsByName("gender");

                                for (var i = 0; i < genderRadioButtons.length; i++) {
                                    if (genderRadioButtons[i].checked) {
                                        var selectedGender = genderRadioButtons[i].value;
                                        alert("O gênero selecionado é: " + selectedGender);
                                        return;
                                    }
                                }

                                alert("Selecione um gênero");
                            }
                        </script>



                        <div class="cadastrar-button">
                            <button class="botao cinza"><a href="show-cliente">Voltar</a></button>

                            <button type="submit" class="botao verde" style="padding: 10px;">Atualizar</button>
                        </div>
                    </form>
                </div>
            </div>

</body>

</html>