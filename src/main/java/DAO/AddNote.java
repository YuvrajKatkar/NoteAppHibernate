package DAO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DTO.Admin;
import DTO.Note;
@WebServlet("/note2")
public class AddNote extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("servlet called");
		
		String title = req.getParameter("noteTitle");
		String desc = req.getParameter("noteDesc");
		
		Note note = new Note(title, desc);
		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("user");
		List<Note> notes=admin.getListOfNotes();
		if(admin.getListOfNotes()==null) {
			notes = new ArrayList<Note>();
		}
		notes.add(note);
		admin.setListOfNotes(notes);
		EntityManager entityManager = ProvideEntityManager.provideEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		//for(Note note2 :admin.getListOfNotes()) {
			//entityManager.merge(note);
		//}
		entityTransaction.begin();
		entityManager.merge(admin);
		entityTransaction.commit();
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("add.jsp");
		requestDispatcher.forward(req, resp);
	}
		
}
