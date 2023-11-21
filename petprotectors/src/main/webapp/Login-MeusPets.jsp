<!DOCTYPE html>
<html lang="pt-BR">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <meta http-equiv="Content-Type" content="text/html" charset=UTF-8>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <head>
            <meta charset='utf-8'>
            <meta http-equiv='X-UA-Compatible' content='IE=edge'>
            <link rel="shortcut icon" href="assets/icons/icon-pegada.ico" type="image/x-icon">
            <title>Pet Protectors - Meus Pets</title>
            <link rel="stylesheet" href="assets/css/styles-arealogada.css">
            <link rel="stylesheet" href="assets/css/styles.css">
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
            <div class="conteudo" style="overflow: auto;">
                <div class="centralizado t">
                    <ul>
                        <li>
                            <table style="overflow: auto;">
                                <tr>
                                    <a href="TelaCadastroPet.jsp" class="botao verde">Adicionar Pet</a>
                                    <c:forEach var="pet" items="${pets}">
                                        <form action="/deletarPet" method="post">
                                            <div class="pet-card">
                                                <img src="assets/images/pata.png" alt="Pet Image">
                                                <div class="card-info">
                                                    <h2>${pet.nome}</h2>
                                                    <div class="pet-info">
                                                        <input id="petId" type="hidden" name="petId" placeholder=""
                                                            value="${pet.petId}" readonly>
                                                        <div class="info-row">
                                                            <div class="pet-data">
                                                                <p>Idade:</p>
                                                                <input id="idade" type="text" name="idade"
                                                                    placeholder="" value="${pet.idade}" readonly>
                                                                <p>Sexo:</p>
                                                                <input id="sexo" type="text" name="sexo" placeholder=""
                                                                    value="${pet.sexo}" readonly>
                                                            </div>
                                                        </div>
                                                        <div class="info-row">
                                                            <div class="pet-data">
                                                                <p>Espécie:</p>
                                                                <input id="especie" type="text" name="especie"
                                                                    placeholder="" value="${pet.especie}" readonly>
                                                                <p>Raça:</p>
                                                                <input id="raca" type="text" name="raca" placeholder=""
                                                                    value="${pet.raca}" readonly>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="TelaEditarPet.jsp?petId=${pet.petId}&nome=${pet.nome}&idade=${pet.idade}&sexo=${pet.sexo}&raca=${pet.raca}&especie=${pet.especie}"
                                                class="botao azul">Editar</a>
                                            <button type="submit" class="botao vermelho">Excluir</button>

                                        </form>
                                    </c:forEach>
                                </tr>
                            </table>
                        </li>

                    </ul>
                </div>
            </div>

        </body>

</html>