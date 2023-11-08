package br.com.petprotectors.dao;

import br.com.petprotectors.model.Cliente;
import br.com.petprotectors.model.Pet;
import br.com.petprotectors.servlet.ListClienteServlet;
import br.com.petprotectors.servlet.config.ConnectionPoolConfig;

import java.sql.*;

public class ClienteDao {

    public void criarCliente(Cliente cliente) {
        String SQL = "INSERT INTO CLIENTE (NOME, CPF, GENERO, PETS, EMAIL, SENHA, ENDERECO, TELEFONE) VALUES (?,?,?,?,?,?,?,?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet rs = preparedStatement.getGeneratedKeys();

            preparedStatement.setString(1, cliente.getNome());
            preparedStatement.setString(2, cliente.getCpf());
            preparedStatement.setString(3, cliente.getGenero());
            ;
            preparedStatement.setString(4, cliente.getPets());
            ;
            preparedStatement.setString(5, cliente.getEmail());
            preparedStatement.setString(6, cliente.getSenha());
            preparedStatement.setString(7, cliente.getEndereco());
            preparedStatement.setString(8, cliente.getTelefone());


            preparedStatement.execute();


        } catch (Exception e) {

            System.out.println("fail in database connection 1");

        }
    }

    public Cliente exibirCliente(String id) {
        String SQL = "SELECT * FROM CLIENTE WHERE CLIENTEID = ?";
        Cliente cliente = null;

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            System.out.println("Sucesso na conexão com o banco de dados");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, id);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                String clienteNome = resultSet.getString("nome");
                String clienteCpf = resultSet.getString("cpf");
                String clienteGenero = resultSet.getString("genero");
                String clientePets = resultSet.getString("pets");
                String clienteEmail = resultSet.getString("email");
                String clienteSenha = resultSet.getString("senha");
                String clienteEndereco = resultSet.getString("endereco");
                String clienteTelefone = resultSet.getString("telefone");
                String clienteId = resultSet.getString("clienteId");

                cliente = new Cliente(clienteNome, clienteCpf, clienteGenero, clientePets, clienteEmail, clienteSenha, clienteEndereco, clienteTelefone, clienteId);
            }

            System.out.println("Sucesso na consulta ao cliente");

        } catch (SQLException e) {
            System.err.println("Erro na conexão com o banco de dados: " + e.getMessage());
        }
        if (cliente == null) {
            cliente = new Cliente(); // Cliente vazio em caso de falha na consulta
        }

        return cliente;
    }

    public boolean verifyCredentials(Cliente cliente) {

        String SQL = "SELECT * FROM CLIENTE WHERE EMAIL = ?";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, cliente.getEmail());

            ResultSet resultSet = preparedStatement.executeQuery();

            resultSet.next();

            String id = resultSet.getString(1);

            System.out.println("success in select email");

            String senha = resultSet.getString("senha");

            if (senha.equals(cliente.getSenha())) {

                ListClienteServlet.setId(id);

                return true;

            }

            while (resultSet.next()) {

                //String senha = resultSet.getString("senha");

                if (senha.equals(cliente.getSenha())) {


                    return true;

                }

            }

            connection.close();

            return false;

        } catch (Exception e) {

            System.out.println("Error: " + e.getMessage());

            return false;

        }
}

    public void atualizarCliente(Cliente cliente) {

        String SQL = "UPDATE CLIENTE SET NOME = ?, ENDERECO = ?, TELEFONE = ?, EMAIL = ?, SENHA = ? WHERE CLIENTEID = ?";

        try {


            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, cliente.getNome());
            preparedStatement.setString(2, cliente.getEndereco());
            preparedStatement.setString(3, cliente.getTelefone());
            preparedStatement.setString(4, cliente.getEmail());
            preparedStatement.setString(5, cliente.getSenha());
            preparedStatement.setString(6, cliente.getClienteId());
            preparedStatement.execute();

            System.out.println("success in update cliente");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection 6");
            System.out.println("Error: " + e.getMessage());

        }

    }

}
