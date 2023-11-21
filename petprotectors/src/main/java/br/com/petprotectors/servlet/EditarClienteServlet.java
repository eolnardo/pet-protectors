package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.ClienteDao;
import br.com.petprotectors.model.Cliente;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update-usuario")
public class EditarClienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Cliente cliente = new ClienteDao().exibirCliente(ListClienteServlet.getId());

        System.out.println(cliente);

        req.setAttribute("cliente", cliente);

        req.getRequestDispatcher("EditarDados.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Cliente cliente = new ClienteDao().exibirCliente(ListClienteServlet.getId());

        ClienteDao clienteDao = new ClienteDao();

        System.out.println(cliente);

        req.setAttribute("cliente", cliente);

        String clienteNome = req.getParameter("nome");
        String clienteCpf = req.getParameter("cpf");
        String clienteGenero = req.getParameter("genero");
        String clienteNascimento = req.getParameter("nascimento");
        String clienteEmail = req.getParameter("email");
        String clienteSenha = req.getParameter("senha");
        String clienteEndereco = req.getParameter("endereco");
        String clienteTelfone = req.getParameter("telefone");
        String clienteId = cliente.getClienteId();

        Cliente novoCliente = new Cliente(clienteNome, clienteCpf, clienteGenero, clienteNascimento, clienteEmail, clienteSenha, clienteEndereco, clienteTelfone, clienteId);

        if (!clienteId.isBlank()) {
            System.out.println(novoCliente);
            clienteDao.atualizarCliente(novoCliente);
            System.out.println(novoCliente);
        }

        resp.sendRedirect("show-cliente");
    }
}
