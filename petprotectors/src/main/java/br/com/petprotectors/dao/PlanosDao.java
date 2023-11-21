package br.com.petprotectors.dao;

import br.com.petprotectors.model.Cliente;
import br.com.petprotectors.model.Pet;
import br.com.petprotectors.model.Planos;
import br.com.petprotectors.servlet.ListClienteServlet;
import br.com.petprotectors.servlet.PlanoServlet;
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
                String descricao = resultSet.getString("descricao");

                descricao.replace("\n", " + '\n' + ");

                Planos plano = new Planos(planoId, nome, preco, descricao);

                planos.add(plano);

                if (planoId == id) {
                    planoAtual = plano;
                    break;
                }
            }

            String SQL2 = "UPDATE CLIENTE SET PLANO = ? WHERE CLIENTEID = ?";

            try {

                int planoId = PlanoServlet.getPlanoId();

                PreparedStatement preparedStatementCliente = connection.prepareStatement(SQL2);

                preparedStatementCliente.setInt(1, planoId);
                preparedStatementCliente.setString(2, ListClienteServlet.getId());

                preparedStatementCliente.execute();

                preparedStatementCliente.executeUpdate();

                Cliente cliente = new Cliente(planoId);

                System.out.println(cliente + ListClienteServlet.getId());

            } catch (Exception e){
                throw new RuntimeException(e);
            }

            return planoAtual;

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
