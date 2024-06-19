package com.chainsys.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.dao.MovieDao;
import com.chainsys.model.Movie;

/**
 * Servlet implementation class Signinservlet
 */
@WebServlet("/SigninServlet")
public class Signinservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private List<Movie> list = new ArrayList<>();
	    Movie details = new Movie();
	    MovieDao imp=new MovieDao();
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		    String username = request.getParameter("username");
		    String password = request.getParameter("password");
		    String location = request.getParameter("location");


		    try {
		        String storedPassword = MovieDao.checkPassword(username);

		        if (password.equals(storedPassword)) {
		            HttpSession session = request.getSession(false);

		            session.setAttribute("username", username);
		            session.setAttribute("location", location);


		            response.sendRedirect("index1.jsp");
		            System.out.println(username);
		        } else {
		            response.sendRedirect("signinmovie.jsp");
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
 
		  }
		

	}

}
