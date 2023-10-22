package br.com.petprotectors.dao;

import br.com.petprotectors.model.Pet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class PetDao {

    public void criarPet (Pet pet){
        String SQL = "INSERT INTO PET (NAME, TUTOR, NASCIMENTO, IDADE, SEXO, ESPECIE, RACA) VALUES (?,?,?,?,?,?,?)";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/petprotectors", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, pet.getNome());
            preparedStatement.setString(2, pet.getTutor());
            preparedStatement.setDate(3, new java.sql.Date(pet.getDataNascimento().getTime()));
            preparedStatement.setString(4, pet.getIdade());
            preparedStatement.setString(5, pet.getSexo());
            preparedStatement.setString(6, pet.getEspecie());
            preparedStatement.setString(7, pet.getRaca());
            preparedStatement.execute();


        } catch (Exception e){

            System.out.println("fail in database connection");

        }
    }
}
