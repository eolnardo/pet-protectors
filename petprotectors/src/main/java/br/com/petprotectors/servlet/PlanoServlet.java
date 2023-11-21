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

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        PlanosDao planoDao = new PlanosDao();

        if (getPlanoId() == 0) setPlanoId(Integer.parseInt(req.getParameter("planoId")));
        else setPlanoId(getPlanoId());

        Planos plano = planoDao.verPlanoAtual(getPlanoId());

        System.out.println(plano.getNome());

        System.out.println(getPlanoId());

        req.setAttribute("plano", plano);

        req.getRequestDispatcher("Login-MeuPlano.jsp").forward(req, resp);
    }
}
