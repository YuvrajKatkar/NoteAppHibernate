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

import DTO.Admin;
@WebServlet("/addAdmin")
public class AddAdmin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Servlet called");
		String name = req.getParameter("adminName");
		String email = req.getParameter("adminEmail");
		String password = req.getParameter("adminPassword");
		System.out.println(name);
		Admin admin = new Admin(name, email, password);
		EntityManager entityManager = ProvideEntityManager.provideEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(admin);
		entityTransaction.commit();
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("Login.jsp");
		requestDispatcher.forward(req, resp);
	}
}
