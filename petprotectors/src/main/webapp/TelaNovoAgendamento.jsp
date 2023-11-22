<!DOCTYPE html>
<html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="assets/icons/icon-pegada.ico" type="image/x-icon">
        <title>Pet Protectors - Cadastre-se</title>
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/formclientelogado.css">
    </head>

    <body style="background-color: #b7bafd;">
        <div class="navbar">
            <img src="assets/images/pegada.png" alt="petprotectors-logo" style="height: 50px;">
            <a href="index.jsp" class="navbar-brand" style="background-color: #1E1D67;">Pet Protectors</a>
            <ul class="navbar-menu"></ul>
        </div>

        <div class="container"style="margin-top: 10rem;">
            <div class="form-image" style="width:50%">
                <img src="assets/images/undraw_Schedule_re_2vro.png" style="width:100%" alt="">
            </div>
            <div class="form" style="width:50%; justify-content: space-between;">
                <div class="agendamento">
                    <form action="/agendamento" method="post">
                        <h2 style="color: #4DFF3E">Novo Agendamento</h2>

                        <div class="agendamento-info" style="margin-top: 5rem">
                            <label for="local">Pet:</label>
                            <select id="pet" class="inputLocal">
                                <option value="santoamaro">Selecionar Pet</option>
                            </select>
                        </div>

                        <div class="agendamento-info">
                            <label for="local">Local:</label>
                            <select id="unidades" class="inputLocal">
                                <option value="santoamaro">Santo Amaro</option>
                                <option value="brooklin">Brooklin</option>
                                <option value="belavista">Higienópolis</option>
                                <option value="belavista">Butantã</option>
                                <option value="belavista">Mooca</option>
                            </select>
                        </div>

                        <div class="agendamento-info">
                            <label for="data">Data:</label>
                            <input type="date" placeholder="__/__/____" input>
                        </div>

                        <div class="agendamento-info">
                            <label for="horario">Horário:</label>
                            <select id="horario" class="inputHorario">
                                <option value="06">06:00</option>
                                <option value="07">07:00</option>
                                <option value="08">08:00</option>
                                <option value="09">09:00</option>
                                <option value="10">10:00</option>
                                <option value="11">11:00</option>
                                <option value="12">12:00</option>
                                <option value="13">13:00</option>
                                <option value="14">14:00</option>
                                <option value="15">15:00</option>
                                <option value="16">16:00</option>
                                <option value="17">17:00</option>
                                <option value="18">18:00</option>
                                <option value="19">19:00</option>
                                <option value="20">20:00</option>
                                <option value="21">21:00</option>
                                <option value="22">22:00</option>
                            </select>
                        </div>

                        <div class="agendamento-info">
                            <label for="especialidade">Especialidade:</label>
                            <select id="unidades" class="inputLocal">
                                <option value="exame">Exame</option>
                                <option value="vacina">Vacina</option>
                                <option value="consulta">Consulta de Rotina</option>
                                <option value="internacao">Internação</option>
                            </select>
                        </div>

                        <div style="margin-top: 5rem">
                        <a class="botao cinza" href="Login-MeusAgendamentos.jsp">Voltar</a>
                            <!-- <button type="button" class="botao cinza" onclick="fecharReserva()">Voltar</button>-->
                            <button type="submit" class="botao verde">Confirmar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script src="assets/js/menu.js"></script>
    </body>

</html>