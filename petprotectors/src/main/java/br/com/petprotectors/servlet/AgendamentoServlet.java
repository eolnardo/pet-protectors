package br.com.petprotectors.servlet;

import br.com.petprotectors.model.Agendamento;
import br.com.petprotectors.dao.AgendamentoDao;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@WebServlet("/create-agendamento")
public class AgendamentoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

        String clienteId = req.getParameter("clienteId");
        String petId = req.getParameter("petId");
        String dataHoraString = req.getParameter("dataHora");


        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date dataHora = null;
        try {
            dataHora = (Date) dateFormat.parse(dataHoraString);
        } catch (ParseException e) {
            e.printStackTrace();
        }


        Agendamento agendamento = new Agendamento(dataHora, clienteId, petId);

        // Chame o método correspondente na classe DAO para criar ou atualizar o agendamento
        AgendamentoDao agendamentoDAO = new AgendamentoDao();

        if (agendamento.getId() == null || agendamento.isEmpty()) {

            agendamentoDAO.criarAgendamento(agendamento);
        } else {
            agendamentoDAO.atualizarAgendamento(agendamento);
        }

        // Encaminhe para a página de confirmação
        req.getRequestDispatcher("cadastrado.html").forward(req, resp);
    }
}

