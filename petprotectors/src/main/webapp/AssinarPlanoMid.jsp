<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmação de Assinatura</title>
    <style>
        /* Copie todas as propriedades CSS fornecidas aqui */

        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            list-style: none;
            font-family: var(--font-default);
            width: 100%;
            height: 100vh;
            display: flex;
            flex-direction: column;
            background-color: #1E1D67;
            color: #fff;
            align-items: center;
            justify-content: center;
        }

        /* Adicione outras propriedades específicas da sua página aqui */

        h1 {
            font-size: 4rem;
            margin-bottom: 20px;
        }

        p {
            font-size: 2rem;
            margin-bottom: 30px;
        }

        .botao {
            padding: 1.5rem 3rem;
            border-radius: 30px;
            font-size: 2rem;
            text-decoration: none;
            background: linear-gradient(90deg, #349c2b 0%, #4DFF3E 100%);
            color: #fff;
            transition: background 0.3s;
        }

        .botao:hover {
            background: linear-gradient(90deg, #184d13 0%, #34ad29 100%);
        }
    </style>
</head>
    <body>

        <div>
            <h1>Assinatura Confirmada!</h1>
            <p>Você selecionou o Plano Mid!<br><br>Você pode ver o seu plano na sessão Meu Plano:</p>
            <form action="show-subscription" method="post">
                <input id="planoId" type="hidden" name="planoId" value="2">
                <button type="submit" class="botao">Ver Meu Plano</button>
            </form>
        </div>

    </body>
</html>