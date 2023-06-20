package DAO;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Note;
@WebServlet("/note2")
public class AddNote extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("servlet called");
		
		String title = req.getParameter("noteTitle");
		String desc = req.getParameter("noteDesc");
		
		Note note = new Note(title, desc);
		EntityManager entityManager = Persistence.createEntityManagerFactory("yuvraj").createEntityManager() ;
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(note);
		entityTransaction.commit();
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("add.jsp");
		requestDispatcher.forward(req, resp);
	}
		
}
