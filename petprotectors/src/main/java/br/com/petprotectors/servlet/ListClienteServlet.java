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
    private static String id = "";

    public static String getId() {
        return id;
    }

    public static void setId(String id) {
        ListClienteServlet.id = id;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Cliente cliente = new ClienteDao().exibirCliente(getId());

        System.out.println(cliente);

        req.setAttribute("cliente", cliente);

        System.out.println(req.toString());

        if(req.equals("login.jsp")){
            req.getRequestDispatcher("selecionar-plano.jsp").forward(req, resp);
        }

        req.getRequestDispatcher("Login-MeusDados.jsp").forward(req, resp);

    }
}


