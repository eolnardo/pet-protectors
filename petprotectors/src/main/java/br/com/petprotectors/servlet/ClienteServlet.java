package br.com.petprotectors.servlet;

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
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        try {
            Date clienteNascimento = formatter.parse(req.getParameter("nascimento"));
        } catch (ParseException e) {
            System.out.println("Data inválida");
        }
        String clienteEmail = req.getParameter("email");
        String clienteSenha = req.getParameter("senha");
        String clienteEndereco = req.getParameter("endereco");
        String clienteTelfone = req.getParameter("telefone");

        System.out.println(clienteNome);

        req.getRequestDispatcher("teste.jsp").forward(req, resp);
    }
}