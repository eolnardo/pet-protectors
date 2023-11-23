package br.com.petprotectors.dao;

import br.com.petprotectors.model.Agendamento;
import br.com.petprotectors.model.Cliente;
import br.com.petprotectors.model.Pet;
import br.com.petprotectors.servlet.ListClienteServlet;
import br.com.petprotectors.servlet.config.ConnectionPoolConfig;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AgendamentoDao {
    public void criarAgendamento(Agendamento agendamento){
        String SQL = "INSERT INTO AGENDAMENTOS (DATA, CLIENTEID, PETID, LOCAL, ESPECIALIDADE) VALUES (?,?,?,?,?)";
        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet rs = preparedStatement.getGeneratedKeys();

            preparedStatement.setString(1, agendamento.getData().toString());
            preparedStatement.setString(2, agendamento.getCliente());
            preparedStatement.setString(3, agendamento.getPet());
            preparedStatement.setString(4, agendamento.getLocal());
            preparedStatement.setString(5, agendamento.getEspecialidade());
            //preparedStatement.setString(3, String.valueOf(agendamento.getHora()));




            preparedStatement.execute();


        } catch (SQLException e) {
            e.printStackTrace(); // Registre a exceção para diagnóstico.
            System.out.println("Falha ao criar o agendamento no banco de dados: " + e.getMessage());
        }
    }

    public List<Agendamento> exibirAgendamentos(String id) {
        String SQL = "SELECT * FROM AGENDAMENTOS WHERE CLIENTEID = ?";

        List<Agendamento> agendamentos = new ArrayList<>();

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            System.out.println("Sucesso na conexão com o banco de dados de agendamento");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, id);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {

                String nomecliente = resultSet.getString("nomeCliente");
                String nomePet = resultSet.getString("nomePet");
                Date dataHora = new Date(resultSet.getTimestamp("dataHora").getTime());
                String especialidade = resultSet.getString("especialidade");
                String local = resultSet.getString("local");
                String agendamentoId = resultSet.getString("idagendamento");
                String cliente = ListClienteServlet.getId();
                String pet = resultSet.getString("petId");


                Agendamento agenda = new Agendamento(agendamentoId, dataHora, cliente, pet, especialidade, local);
                agendamentos.add(agenda);  // Adiciona o agendamento à lista
            }
            System.out.println("Sucesso na consulta ao cliente");

            return agendamentos;

        } catch (SQLException e) {
            System.err.println("Erro na conexão com o banco de dados: " + e.getMessage());
        }

        return agendamentos;



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

        preparedStatement.setString(1, agendamento.getData().toString());
        preparedStatement.setString(2, String.valueOf(agendamento.getCliente()));
        preparedStatement.setString(3, String.valueOf(agendamento.getPet()));

        preparedStatement.execute();

        System.out.println("success in upStringcliente");

        connection.close();

    } catch (Exception e) {

        System.out.println("fail in database connection 6");
        System.out.println("Error: " + e.getMessage());

    }
}



}
