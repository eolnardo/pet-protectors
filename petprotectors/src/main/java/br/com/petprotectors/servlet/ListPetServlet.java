package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.PetDao;
import br.com.petprotectors.model.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/show-pets")
public class ListPetServlet extends HttpServlet {

    private static List<String> IDs = new ArrayList<>();

    public static List<String> getIDs() {
        return IDs;
    }

    public static void setIDs(List<String> IDs) {
        ListPetServlet.IDs = IDs;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Pet> pets = new PetDao().exibirPets(ListClienteServlet.getId());



        req.setAttribute("pets", pets);

        req.getRequestDispatcher("Login-MeusPets.jsp").forward(req, resp);

    }
}
