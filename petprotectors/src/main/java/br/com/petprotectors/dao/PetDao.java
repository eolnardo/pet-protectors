package br.com.petprotectors.dao;

import br.com.petprotectors.model.Pet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

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

    public void deletePetByName(String petName){

        String SQL = "DELETE PET WHERE NAME = ?";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, petName);
            preparedStatement.execute();

            System.out.println("success on delete car with id: " + petName);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection");

        }
    }

    public List<Pet> findAllPets(){
        String SQL = "SELECT * FROM CAR";
        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Pet> pets = new ArrayList<>();

            while (resultSet.next()) {

                String petNome = resultSet.getString("name");
                String petTutor = resultSet.getString("tutor");
                String petIdade = resultSet.getString("idade");
                String petSexo = resultSet.getString("sexo");
                String petEspecie = resultSet.getString("especie");
                String petRaca = resultSet.getString("raca");

                Pet pet = new Pet(petNome, petTutor,petIdade, petSexo,petEspecie,petRaca);

                pets.add(pet);

            }

            System.out.println("success in select * pet");

            connection.close();

            return pets;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();
        }
    }


}
