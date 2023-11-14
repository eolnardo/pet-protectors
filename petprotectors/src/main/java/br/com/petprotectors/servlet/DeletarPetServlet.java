package br.com.petprotectors.servlet;


import br.com.petprotectors.dao.PetDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deletarPet")
public class DeletarPetServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String petId = req.getParameter("petId");

        new PetDao().deletePetByName(petId);

        resp.sendRedirect("/show-pets");

    }
}
