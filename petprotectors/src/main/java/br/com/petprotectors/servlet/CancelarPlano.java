package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.PetDao;
import br.com.petprotectors.dao.PlanosDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

    @WebServlet("/cancel-plano")
    public class CancelarPlano extends HttpServlet {

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

            int planoId = PlanoServlet.getPlanoId();

            new PlanosDao().verPlanoAtual(planoId);

            resp.sendRedirect("/show-subscription");

        }
}
