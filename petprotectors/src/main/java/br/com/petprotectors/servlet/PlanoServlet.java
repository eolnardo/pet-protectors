package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.PetDao;
import br.com.petprotectors.dao.PlanosDao;
import br.com.petprotectors.model.Pet;
import br.com.petprotectors.model.Planos;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/show-subscription")
public class PlanoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PlanosDao planoDao = new PlanosDao();

        int id = Integer.parseInt(req.getParameter("planoId"));

        Planos plano = planoDao.verPlanoAtual(id);

        System.out.println(plano.getNome());

        req.setAttribute("plano", plano);

        req.getRequestDispatcher("Login-MeuPlano.jsp").forward(req, resp);
    }
}
