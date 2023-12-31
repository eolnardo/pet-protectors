package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.ClienteDao;
import br.com.petprotectors.model.Cliente;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/create-usuario")
public class ClienteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String clienteNome = req.getParameter("nome");
        String clienteCpf = req.getParameter("cpf");
        String clienteGenero = req.getParameter("genero");
        String clientePets = req.getParameter("pets");
        String clienteEmail = req.getParameter("email");
        String clienteSenha = req.getParameter("senha");
        String clienteEndereco = req.getParameter("endereco");
        String clienteNascimento = req.getParameter("nascimento");
        String clienteTelfone = req.getParameter("telefone");
        String clienteId = req.getParameter("clienteId");
        int plano = 0;

        ClienteDao clienteDao = new ClienteDao();
        Cliente cliente = new Cliente(clienteNome, clienteCpf, clienteGenero, clienteNascimento, clienteEmail, clienteSenha, clienteEndereco, clienteTelfone, clienteId);
        PlanoServlet.setPlanoId(plano);

        if (clienteId == null || clienteId.isBlank()) {
            clienteDao.criarCliente(cliente);

            ListClienteServlet.setId(cliente.getClienteId());
        } else {
            clienteDao.atualizarCliente(cliente);
        }


        req.getRequestDispatcher("cadastrado.html").forward(req, resp);
    }
}
