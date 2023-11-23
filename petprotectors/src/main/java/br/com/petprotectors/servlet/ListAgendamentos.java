package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.AgendamentoDao;
import br.com.petprotectors.dao.PetDao;
import br.com.petprotectors.model.Agendamento;
import br.com.petprotectors.model.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/show-agendamentos")
public class ListAgendamentos extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Agendamento> agendamentos = new AgendamentoDao().exibirAgendamentos(ListClienteServlet.getId());

        req.setAttribute("agendamentos", agendamentos);

        System.out.println(agendamentos.toString());

        req.getRequestDispatcher("Login-MeusAgendamentos.jsp").forward(req, resp);

    }
}
