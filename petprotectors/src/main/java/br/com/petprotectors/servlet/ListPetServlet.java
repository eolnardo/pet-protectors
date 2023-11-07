package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.PetDao;
import br.com.petprotectors.model.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/find-all-pets")
public class ListPetServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Pet> pets = new PetDao().exibirPets();

        req.setAttribute("pets", pets);

        req.getRequestDispatcher("dashboard.jsp").forward(req, resp);

    }
}
