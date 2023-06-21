package DAO;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DTO.Admin;
@WebServlet("/loginValidation")
public class LoginValidation extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("login servlet called");
		EntityManager entityManager = ProvideEntityManager.provideEntityManager();		//EntityTransaction entityTransaction = entityManager.getTransaction();
		//Admin admin = entityManager.find(Admin.class, entityManager)
		Query query = entityManager.createQuery("select a from Admin a where a.email =?1 and a.password=?2 ");
		query.setParameter(1, req.getParameter("exampleInputEmail1"));
		query.setParameter(2, req.getParameter("exampleInputPassword1"));
		try {
			Admin admin = (Admin) query.getSingleResult();
			
				HttpSession session = req.getSession();
				session.setAttribute("user", admin);
				System.out.println("Login successfull");
				RequestDispatcher requestDispatcher = req.getRequestDispatcher("add.jsp");
				requestDispatcher.forward(req, resp);
			
		} catch (Exception e) {
			// TODO: handle exception
			HttpSession session = req.getSession();
			session.setAttribute("Invalid", "Invalid Credentials please login again");
			System.out.println("Invalid Credentials");
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("Login.jsp");
			requestDispatcher.forward(req, resp);
			//System.out.println("Invalid password");
		}
		
	}
}
