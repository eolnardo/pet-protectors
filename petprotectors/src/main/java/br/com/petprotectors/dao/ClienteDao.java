package br.com.petprotectors.dao;

import br.com.petprotectors.model.Cliente;
import br.com.petprotectors.model.Pet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ClienteDao {

    public void criarCliente (Cliente cliente){
        String SQL = "INSERT INTO CLIENTE (NOME, CPF, GENERO, PETS, EMAIL, SENHA, ENDERECO, TELEFONE) VALUES (?,?,?,?,?,?,?,?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, cliente.getNome());
            preparedStatement.setString(2, cliente.getCpf());
            preparedStatement.setString(3, cliente.getGenero());;
            preparedStatement.setString(4, cliente.getPets());;
            preparedStatement.setString(5, cliente.getEmail());
            preparedStatement.setString(6, cliente.getSenha());
            preparedStatement.setString(7, cliente.getEndereco());
            preparedStatement.setString(8, cliente.getTelefone());

            preparedStatement.execute();


        } catch (Exception e){

            System.out.println("fail in database connection");

        }
    }
<<<<<<< Updated upstream

    public List<Cliente> findAllClientes(){
        String SQL = "SELECT * FROM CLIENTES";
=======
    public List<Cliente> findAllClientes() {

        String SQL = "SELECT * FROM CLIENTES";

>>>>>>> Stashed changes
        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Cliente> clientes = new ArrayList<>();

            while (resultSet.next()) {

<<<<<<< Updated upstream
                String clienteNome = resultSet.getString("nome");
=======
                String clienteNome = resultSet.getString("name");
>>>>>>> Stashed changes
                String clienteCpf = resultSet.getString("cpf");
                String clienteGenero = resultSet.getString("genero");
                String clientePets = resultSet.getString("pets");
                String clienteEmail = resultSet.getString("email");
                String clienteSenha = resultSet.getString("senha");
                String clienteEndereco = resultSet.getString("endereco");
<<<<<<< Updated upstream
                String clienteTelfone = resultSet.getString("telefone");
                String clienteId = resultSet.getString("idCliente");


                Cliente cliente = new Cliente(clienteNome,clienteCpf,clienteGenero,clientePets,clienteEmail,clienteSenha,clienteEndereco,clienteTelfone,clienteId);
=======
                String clienteTelefone = resultSet.getString("telefone");

                Cliente cliente = new Cliente(clienteNome, clienteCpf, clienteGenero,
                        clientePets, clienteEmail, clienteSenha, clienteEndereco,
                        clienteTelefone);
>>>>>>> Stashed changes

                clientes.add(cliente);

            }

<<<<<<< Updated upstream
            System.out.println("success in select * cliente");
=======
            System.out.println("success in select * car");
>>>>>>> Stashed changes

            connection.close();

            return clientes;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();
<<<<<<< Updated upstream
        }
=======

        }

>>>>>>> Stashed changes
    }

}
