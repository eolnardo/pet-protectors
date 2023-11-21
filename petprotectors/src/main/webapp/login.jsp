<%--
  Created by IntelliJ IDEA.
  User: eolna
  Date: 18/11/2023
  Time: 00:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            list-style: none;
        }

        :root {
            font-size: 62.5%;
            --font-default: 'Montserrat', sans-serif;
            --font-heading: 'Poppins', sans-serif;
            --color-default: #fff;
            --color-secundary: #4DFF3E;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: var(--font-default);
            width: 100%;
            height: 100vh;
            display: flex;
            flex-direction: column;
            background-color: #3498db; /* Cor de fundo azul */
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .cadastro {
            background-color: #fff; /* Cor de fundo branca para o formulário */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-line {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        .botao {
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .verde {
            background-color: #2ecc71; /* Cor de fundo verde para o botão */
            color: #fff; /* Cor do texto branco para o botão */
        }
    </style>
</head>
    <body>
        <form id="login" action="login" method="post" class="cadastro">
            <div class="cadastro-cliente">



                <span>${requestScope.message}</span>

                <div class="form-line">
                    <label for="email">Usuário</label>
                    <input type="email" id="email" name="email" value="${param.email}">
                </div>
                <div class="form-line">
                    <label for="senha">Senha</label>
                    <input type="password" id="senha" name="senha" value="${param.senha}">
                </div>



                <button type="submit" class="botao verde">Entrar</button>
            </div>
        </form>
    </body>
</html>
