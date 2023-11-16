package br.com.petprotectors.dao;

import br.com.petprotectors.model.Agendamento;
import br.com.petprotectors.model.Cliente;
import br.com.petprotectors.model.Pet;
import br.com.petprotectors.servlet.config.ConnectionPoolConfig;

import java.sql.*;

public class AgendamentoDao {
    public void criarAgendamento(Agendamento agendamento){
        String SQL = "INSERT INTO AGENDA (DATA, CLIENTEID, PETID) VALUES (?,?,?)";
        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet rs = preparedStatement.getGeneratedKeys();

            preparedStatement.setTimestamp(1, new java.sql.Timestamp(agendamento.getDataHora().getTime()));
            preparedStatement.setString(2, String.valueOf(agendamento.getCliente()));
            preparedStatement.setString(3, String.valueOf(agendamento.getPet()));



            preparedStatement.execute();


        } catch (Exception e) {

            System.out.println("fail in database connection 1");

        }
    }

    public Agendamento exibirAgendamento(String id) {
        String SQL = "SELECT A.dataHora, C.nome as nomeCliente, P.nome as nomePet " +
                "FROM AGENDAMENTO A " +
                "JOIN CLIENTE C ON A.clienteId = C.clienteId " +
                "JOIN PET P ON A.petId = P.petId " +
                "WHERE C.clienteId = ?";

        Agendamento agenda = null;

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            System.out.println("Sucesso na conexão com o banco de dados");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, id);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                String nomecliente = resultSet.getString("nomeCliente");
                String nomePet = resultSet.getString("nomePet");
                Date dataHora = new Date(resultSet.getTimestamp("dataHora").getTime());

                Cliente cliente = new Cliente();
                Pet pet = new Pet();
                agenda = new Agendamento(dataHora, cliente, pet );

            }
            System.out.println("Sucesso na consulta ao cliente");

        } catch (SQLException e) {
            System.err.println("Erro na conexão com o banco de dados: " + e.getMessage());
        }
        if (agenda == null) {
            agenda = new Agendamento();
        }
        return agenda;



    }

public void atualizarAgendamento(Agendamento agendamento){
        String SQL = "SELECT A.dataHora, C.nome as nomeCliente, P.nome as nomePet " +
            "FROM AGENDAMENTO A " +
            "JOIN CLIENTE C ON A.clienteId = C.clienteId " +
            "JOIN PET P ON A.petId = P.petId " +
            "WHERE C.clienteId = ?";
    try {


        Connection connection = ConnectionPoolConfig.getConnection();

        PreparedStatement preparedStatement = connection.prepareStatement(SQL);

        preparedStatement.setString(1, agendamento.getDataHora().toString());
        preparedStatement.setString(2, String.valueOf(agendamento.getCliente()));
        preparedStatement.setString(3, String.valueOf(agendamento.getPet()));

        preparedStatement.execute();

        System.out.println("success in update cliente");

        connection.close();

    } catch (Exception e) {

        System.out.println("fail in database connection 6");
        System.out.println("Error: " + e.getMessage());

    }
}



}
