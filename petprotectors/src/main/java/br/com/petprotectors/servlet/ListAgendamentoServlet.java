package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.AgendamentoDao;
import br.com.petprotectors.model.Agendamento;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/list-agendamentos")
public class ListAgendamentoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String clienteId = "";



        List<Agendamento> agendamentos = new AgendamentoDao().exibirAgendamentos(clienteId);


        req.setAttribute("agendamentos", agendamentos);


        req.getRequestDispatcher("Login-MeusAgendamentos.jsp").forward(req, resp);
    }
}

