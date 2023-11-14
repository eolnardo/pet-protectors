package br.com.petprotectors.dao;

import br.com.petprotectors.model.Pet;
import br.com.petprotectors.model.Planos;
import br.com.petprotectors.servlet.config.ConnectionPoolConfig;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PlanosDao {
    public Planos verPlanoAtual(int id){
        String SQL = "SELECT * FROM PLANOS";

        try {
            Connection connection = ConnectionPoolConfig.getConnection();

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Planos> planos = new ArrayList<>();

            Planos planoAtual = new Planos();

            while (resultSet.next()) {

                int planoId = resultSet.getInt("planoid");
                String nome = resultSet.getString("nome");
                Double preco = resultSet.getDouble("preco");

                Planos plano = new Planos(planoId, nome, preco);

                planos.add(plano);

                if (planoId == id) {
                    planoAtual = plano;
                    break; // Saia do loop se encontrar o plano desejado
                }
            }

            return planoAtual;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
