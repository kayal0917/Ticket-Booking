package com.chainsys.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class SignupSevlet
 */
@WebServlet("/SignupSevlet")
public class Signupservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private List<Movie> list = new ArrayList<>();
	    Movie details = new Movie();
	    MovieDao imp=new MovieDao();
       
    /**
     * @see HttpServlet#HttpServlet(
     */
    public Signupservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		System.out.println(session);
		if(session != null)
		{
        String username = request.getParameter("userName");
        details.setUsername(username);   
        System.out.println(details.getUsername());
        String email = request.getParameter("email");
        details.setEmail(email);
        String password=request.getParameter("password");
        details.setPassword(password);
        String location=request.getParameter("location");
        details.setLocation(location);
        try {
        	imp.Signupsevlet(details);
        	response.sendRedirect("signinmovie.jsp");
        }catch (Exception e) {
			// TODO: handle exception
        	e.printStackTrace();
		}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  
	}
}
    
