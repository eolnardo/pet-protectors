package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.PetDao;
import br.com.petprotectors.model.Agendamento;
import br.com.petprotectors.dao.AgendamentoDao;
import br.com.petprotectors.model.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet("/create-agendamento")
public class AgendamentoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Pet> pets = new PetDao().exibirPets(ListClienteServlet.getId());

        System.out.println(pets.toString());

        req.setAttribute("pets", pets);

        req.getRequestDispatcher("TelaNovoAgendamento.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Servlet AgendamentoServlet acionado!");

        List<Pet> pets = new PetDao().exibirPets(ListClienteServlet.getId());

        String clienteId = req.getParameter(ListClienteServlet.getId());
        String petId = req.getParameter("petId");
        String dataString = req.getParameter("data");
        String local = req.getParameter("local");
        String especialidade = req.getParameter("especialidade");
        String hora = req.getParameter("horario");

        hora = hora + ":00";

        dataString = dataString + " ";

        System.out.println(local);

        System.out.println("data: "+ dataString);

        for(int i = 0; i<pets.size(); i++){
            if(i == Integer.parseInt(pets.get(i).getPetId())){
                petId = pets.get(i).getPetId();
                break;
            }
        }


        try {

            if (dataString != null && !dataString.isEmpty()) {
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date dataHora = new Date(dateFormat.parse(dataString).getTime());




            AgendamentoDao agendamentoDAO = new AgendamentoDao();
            Agendamento agendamento = new Agendamento(dataHora, clienteId, petId, especialidade, local);

                System.out.println(agendamento);

            if (agendamento.getId() == null || agendamento.isEmpty()) {
                agendamentoDAO.criarAgendamento(agendamento);
            } else {
                agendamentoDAO.atualizarAgendamento(agendamento);
            }


            // Encaminhar para a página de confirmação
            req.setAttribute("mensagem", "Agendamento Realizado com sucesso!");
            req.getRequestDispatcher("Login-MeusAgendamentos.jsp").forward(req, resp);

        }
    } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }}


