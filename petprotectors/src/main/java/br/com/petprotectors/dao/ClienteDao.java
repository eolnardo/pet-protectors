package br.com.petprotectors.dao;

import br.com.petprotectors.model.Cliente;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ClienteDao {

    public void criarCliente (Cliente cliente){
        String SQL = "INSERT INTO CLIENTE (NOME, CPF, GENERO, PETS, NASCIMENTO, EMAIL, SENHA, ENDERECO, TELEFONE) VALUES (?,?,?,?,?,?,?,?,?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, cliente.getNome());
            preparedStatement.setString(2, cliente.getCpf());
            preparedStatement.setString(3, cliente.getGenero());;
            preparedStatement.setString(4, cliente.getPets());;
            preparedStatement.setDate(5, new java.sql.Date(cliente.getNascimento().getTime()));
            preparedStatement.setString(6, cliente.getEmail());
            preparedStatement.setString(7, cliente.getSenha());
            preparedStatement.setString(8, cliente.getEndereco());
            preparedStatement.setString(9, cliente.getTelefone());

            preparedStatement.execute();


        } catch (Exception e){

            System.out.println("fail in database connection");

        }
    }
}
