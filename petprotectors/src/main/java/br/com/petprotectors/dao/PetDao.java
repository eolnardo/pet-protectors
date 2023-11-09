package br.com.petprotectors.dao;

import br.com.petprotectors.model.Cliente;
import br.com.petprotectors.model.Pet;
import br.com.petprotectors.servlet.ListPetServlet;
import br.com.petprotectors.servlet.config.ConnectionPoolConfig;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PetDao {

    public void criarPet (Pet pet){
        String SQL = "INSERT INTO PETS (NOME, IDADE, SEXO, ESPECIE, RACA, TUTOR) VALUES (?,?,?,?,?,?)";

        try {

            Connection connection = ConnectionPoolConfig.getConnection();

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, pet.getNome());
            preparedStatement.setString(2, pet.getIdade());
            preparedStatement.setString(3, pet.getSexo());
            preparedStatement.setString(4, pet.getEspecie());
            preparedStatement.setString(5, pet.getRaca());
            preparedStatement.setString(6, pet.getTutor());
            preparedStatement.execute();


        } catch (SQLException e) {
            e.printStackTrace(); // Registre a exceção para diagnóstico.
            System.out.println("Falha ao criar o pet no banco de dados: " + e.getMessage());
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

            System.out.println("success on delete pet with id: " + petName);

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection 4");

        }
    }

    public List<Pet> exibirPets(String Id){
        String SQL = "SELECT * FROM PETS WHERE TUTOR = ?";
        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);
            preparedStatement.setString(1, Id);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Pet> pets = new ArrayList<>();
            List<String> IDs = new ArrayList<>();

            while (resultSet.next()) {

                String petNome = resultSet.getString("nome");
                String petTutor = resultSet.getString("tutor");
                String petIdade = resultSet.getString("idade");
                String petSexo = resultSet.getString("sexo");
                String petEspecie = resultSet.getString("especie");
                String petRaca = resultSet.getString("raca");
                String petId = resultSet.getString("petId");

                Pet pet = new Pet(petNome, petIdade, petSexo,petEspecie,petRaca, petId, petTutor);

                pets.add(pet);


            }

            for (int i = 0; i < pets.size(); i++){
                IDs.add(pets.get(i).getPetId());
            }

            ListPetServlet.setIDs(IDs);

            System.out.println("success in select * pet");

            connection.close();

            return pets;

        } catch (SQLException e) {
            e.printStackTrace(); // Registre a exceção para diagnóstico.
            System.out.println("Falha ao criar o pet no banco de dados: " + e.getMessage());
            return Collections.emptyList();
        }
    }

    public void atualizarPet(Pet pet, List IDs) {

        String SQL = "UPDATE PET SET NOME = ?, IDADE = ?,SEXO = ?, ESPECIE = ?, RACA = ? WHERE PETID = ?";

        try {


            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, pet.getNome());
            preparedStatement.setString(2, pet.getIdade());
            preparedStatement.setString(3, pet.getSexo());
            preparedStatement.setString(4, pet.getEspecie());
            preparedStatement.setString(5, pet.getRaca());
            preparedStatement.setString(6, IDs.get());
            preparedStatement.execute();

            System.out.println("success in update pet");

            connection.close();

        } catch (Exception e) {

            System.out.println("fail in database connection 6(pet)");
            System.out.println("Error: " + e.getMessage());

        }

    }


}
