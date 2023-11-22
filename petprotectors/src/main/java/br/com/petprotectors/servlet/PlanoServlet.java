package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.AgendamentoDao;
import br.com.petprotectors.dao.PetDao;
import br.com.petprotectors.dao.PlanosDao;
import br.com.petprotectors.model.Agendamento;
import br.com.petprotectors.model.Pet;
import br.com.petprotectors.model.Planos;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/show-subscription")
public class PlanoServlet extends HttpServlet {

    private static int planoId = 0;

    public static int getPlanoId() {
        return planoId;
    }

    public static void setPlanoId(int planoId) {
        PlanoServlet.planoId = planoId;
    }

    public boolean isEmpty(){
        return planoId == 0;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PlanosDao planodao = new PlanosDao();

        Planos plano = planodao.verPlanoAtual(getPlanoId());

        req.setAttribute("plano", plano);

        req.getRequestDispatcher("Login-MeuPlano.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


            PlanosDao planodao = new PlanosDao();

            Planos plano = planodao.alterarPlanoAtual(Integer.parseInt(req.getParameter("planoId")));

            System.out.println(plano.toString());

            req.setAttribute("plano", plano);

            req.getRequestDispatcher("Login-MeuPlano.jsp").forward(req, resp);


    }
}
