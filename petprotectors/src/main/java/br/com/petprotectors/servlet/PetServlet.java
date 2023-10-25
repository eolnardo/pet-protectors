package br.com.petprotectors.servlet;

import br.com.petprotectors.dao.PetDao;
import br.com.petprotectors.model.Pet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/create-pet")
public class PetServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        String petNome = req.getParameter("nome");
        String petTutor = req.getParameter("tutor");
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        try {
            Date petNascimento = formatter.parse(req.getParameter("nascimento"));
        } catch (ParseException e) {
            System.out.println("Data inválida");
        }
        String petIdade = req.getParameter("idade");
        String petSexo = req.getParameter("sexo");
        String petEspecie = req.getParameter("especie");
        String petRaca = req.getParameter("raca");

        PetDao petDao = new PetDao();
        Pet pet = new Pet(petNome, petTutor,petIdade, petSexo,petEspecie,petRaca);

        petDao.criarPet(pet);

        resp.sendRedirect("/find-all-pets");
    }
}
