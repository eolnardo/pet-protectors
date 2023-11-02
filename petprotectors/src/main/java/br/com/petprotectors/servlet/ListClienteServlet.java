package br.com.petprotectors.servlet;


import br.com.petprotectors.dao.ClienteDao;
import br.com.petprotectors.model.Cliente;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/show-cliente")
public class ListClienteServlet extends HttpServlet {
    private static Cliente cliente;

    public static Cliente getCliente() {
        return cliente;
    }

    public static void setCliente(Cliente cliente) {
        ListClienteServlet.cliente = cliente;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = getCliente().getClienteId();

        System.out.println(id);

        Cliente cliente = new ClienteDao().exibirCliente(id);

        System.out.println(cliente);

        req.setAttribute("cliente", cliente);

        req.getRequestDispatcher("Login-Meus-Dados.jsp").forward(req, resp);

    }
}


