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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String clienteId = req.getParameter("clienteId");
        String petId = req.getParameter("petId");
        String dataHoraString = req.getParameter("dataHora");
        String local = req.getParameter("local");
        String especialidade = req.getParameter("especialidade");



        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
            Date dataHora = new Date(dateFormat.parse(dataHoraString).getTime());

            Agendamento agendamento = new Agendamento(dataHora, clienteId, petId, especialidade, local);

            // Chamar o método correspondente na classe DAO para criar ou atualizar o agendamento
            AgendamentoDao agendamentoDAO = new AgendamentoDao();

            if (agendamento.getId() == null || agendamento.isEmpty()) {
                agendamentoDAO.criarAgendamento(agendamento);
            } else {
                agendamentoDAO.atualizarAgendamento(agendamento);
            }

            // Encaminhar para a página de confirmação
            req.getRequestDispatcher("cadastrado.html").forward(req, resp);

        } catch (ParseException e) {
            // Lógica de tratamento para dataHoraString mal formatada
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Formato de data/hora inválido");
        }
    }
}

