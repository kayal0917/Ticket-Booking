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
import com.chainsys.model.Book;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<Book> list = new ArrayList<>();

    Book booked = new Book();
    MovieDao imp = new MovieDao();


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        
    	String selectedSeats = request.getParameter("selectedSeats");
        int selectedSeatsCount = Integer.parseInt(request.getParameter("selectedSeatsCount"));
    	
    	HttpSession session = request.getSession();
        if (session != null) {
            String movie;
            String showdate;
            String showtime;
            String theater;
            String screen;
            String seat;
        	String seatcount;

            String username = (String) session.getAttribute("username");
            booked.setUsername(username);
            seat = request.getParameter("seat");
            booked.setSeat(seat);
            seatcount = request.getParameter("seatCount");

            booked.setSeatcount(seatcount);
            screen = request.getParameter("screen");
            booked.setScreen(screen);
            movie = request.getParameter("movie");
            booked.setMovie(movie);
            showdate = request.getParameter("showDate");
            booked.setShowDate(showdate);
            showtime = request.getParameter("showtime");
            booked.setShowtime(showtime);
            theater = request.getParameter("theater");
            booked.setTheater(theater);
            
            request.setAttribute("selectedSeats", selectedSeats);
            request.setAttribute("selectedSeatsCount", selectedSeatsCount);
            
            try {
                imp.booking(booked);
                response.sendRedirect("Payment.jsp");
            } catch (Exception e) {
                e.printStackTrace();
               
            }
        } else {
            response.sendRedirect("seat.jsp");
        }
        request.getRequestDispatcher("book.jsp").forward(request, response);
    }
    
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
