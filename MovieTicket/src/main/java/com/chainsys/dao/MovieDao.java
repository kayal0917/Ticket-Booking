package com.chainsys.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.chainsys.model.Book;
import com.chainsys.model.Movie;
import com.chainsys.model.Theater;
import com.chainsys.util.MovieConnection;


public class MovieDao implements MoviesDao {

	public void Signupsevlet(Movie add1) throws ClassNotFoundException, SQLException {

		System.out.println(add1.getUsername());
		Connection con = MovieConnection.getConnection();
		String add = "insert into users(user_name,email,password,location)values(?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(add);
		ps.setString(1, add1.getUsername());
		ps.setString(2, add1.getEmail());

		ps.setString(3, add1.getPassword());
		ps.setString(4, add1.getLocation());

		int rows = ps.executeUpdate();
		System.out.println(rows + " rows inserted");
	}

	public static String checkPassword(String username) throws ClassNotFoundException, SQLException {
		String password = null;
		Connection connection = MovieConnection.getConnection();
		String select = "select password from users where user_name=?";
		PreparedStatement prepareStatement = connection.prepareStatement(select);
		prepareStatement.setString(1, username);
		ResultSet resultSet = prepareStatement.executeQuery();
		while (resultSet.next()) {
			password = resultSet.getString(1);
		}
		System.out.println(resultSet + " retrieved");
		return password;
	}
	public List<Movie> retriveDetails() throws ClassNotFoundException, SQLException 
    {
        ArrayList<Movie> list=new ArrayList<>();
        Connection connection=MovieConnection.getConnection();
        String select="select user_name,email,password,location from users";
        PreparedStatement prepareStatement=connection.prepareStatement(select);
        ResultSet resultSet=prepareStatement.executeQuery();
        while(resultSet.next())
        {
            String username=resultSet.getString(1);
            String email=resultSet.getString(2);
            String password=resultSet.getString(3);
            String location=resultSet.getString(3);

            Movie details=new Movie();
            details.setUsername(username);
            details.setEmail(email);
            details.setPassword(password);

            list.add(details);
        }
        connection.close();
        return list;
    }

	
	public void DeleteEmployee(String username) throws ClassNotFoundException, SQLException {
	    Connection connection =  MovieConnection.getConnection();
	    System.out.println(username);
	    String delete="delete from users where user_name=?";
	    PreparedStatement preparedStatement = connection.prepareStatement(delete);
	    preparedStatement.setString(1,username);
	    int rows = preparedStatement.executeUpdate();
	    System.out.println(rows+" deleted");

	}
	@Override
	public void DeleteEmployee() throws ClassNotFoundException, SQLException {

		
	}
	public void Update(String username,String email) throws ClassNotFoundException, SQLException {
	    
	    Connection connection = MovieConnection.getConnection();
	    String save="UPDATE users SET email=? WHERE user_name=?";
	    PreparedStatement prepareStatement = connection.prepareStatement(save);
	    prepareStatement.setString(1, email);
	    prepareStatement.setString(2, username);
	    int rows = prepareStatement.executeUpdate();
	    System.out.println(rows+" updated");

	}
	public void booking(Book add1) throws ClassNotFoundException, SQLException {

		Connection con = MovieConnection.getConnection();
		String add = "insert into bookings(user_name,seats,seat_count,screen,movie,booking_date,booking_time,theater)values(?,?,?,?,?,?,?,?)";
		System.out.println(add1.getScreen());
		System.out.println(add1.getSeat());
		PreparedStatement ps = con.prepareStatement(add);
		ps.setString(1, add1.getUsername());
		ps.setString(2, add1.getSeat());
		ps.setString(3, add1.getSeatcount());
		ps.setString(4, add1.getScreen());
		ps.setString(5, add1.getMovie());
		ps.setString(6, add1.getShowDate());
		ps.setString(7, add1.getShowtime());
		ps.setString(8, add1.getTheater());
		int rows = ps.executeUpdate();
		System.out.println(rows + " rows inserted");
	}
	@Override
	public void Update() throws ClassNotFoundException, SQLException {	
	}
//	public void update(String username,String password) throws ClassNotFoundException, SQLException {
//		Connection con = MovieConnection.getConnection();
//		String update = "UPDATE users SET password = ? WHERE user_name = ?";
//		PreparedStatement ps = con.prepareStatement(update);
//	    ps.setString(1, username);
//	   ps.setString(2, password);
//	    int rows = ps.executeUpdate();
//
//		System.out.println(rows + " rows updated");
//
//		ps.close();
//	}
	public void Signupsevlet(Theater theater) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Connection con = MovieConnection.getConnection();
		String add = "insert into theater(theater_id,theater_name,location)values(?,?,?)";
		PreparedStatement ps = con.prepareStatement(add);
		ps.setInt(1, theater.getTheaterid());
		ps.setString(2, theater.getTheatername());

		ps.setString(3, theater.getLocation());

		int rows = ps.executeUpdate();
		System.out.println(rows + " rows inserted");
	}

	public List<Theater> retriveTheater() throws ClassNotFoundException, SQLException 
    {
        List<Theater> list=new ArrayList<>();
        Connection connection=MovieConnection.getConnection();
        String select="select  theater_id,theater_name,location from theater";
        PreparedStatement prepareStatement=connection.prepareStatement(select);
        ResultSet resultSet=prepareStatement.executeQuery();
        while(resultSet.next())
        {
        	int theaterid=resultSet.getInt(1);
            String theatername=resultSet.getString(2);
            String location=resultSet.getString(3);
            Theater theater=new Theater();
            theater.setTheaterid(theaterid);
            theater.setTheatername(theatername);
            theater.setLocation(location);
            list.add(theater);
			       }
        return list;
    }
	public List<Theater> retrivetable() throws ClassNotFoundException, SQLException 
    {
        List<Theater> list=new ArrayList<>();
        Connection connection=MovieConnection.getConnection();
        String select="SELECT theater_name FROM theater WHERE location='Thoothukudi'";
        PreparedStatement prepareStatement=connection.prepareStatement(select);
        ResultSet resultSet=prepareStatement.executeQuery();
        while(resultSet.next())
        {
            String theatername=resultSet.getString(1);
            String location=resultSet.getString(2);
            Theater theater=new Theater();
            theater.setTheatername(theatername);
            theater.setLocation(location);
            list.add(theater);
			       }

        return list;
    }

	public List<Theater> search(Theater theater) throws ClassNotFoundException, SQLException {

        List<Theater> list=new ArrayList<>();
        Connection connection=MovieConnection.getConnection();
	        String select = "SELECT  theater_name FROM theater WHERE location=?";
	        	
	        PreparedStatement prepareStatement = connection.prepareStatement(select);
	        prepareStatement.setString(1, theater.getLocation());
	        ResultSet resultSet = prepareStatement.executeQuery();
	        while (resultSet.next()) {
	            String theatername = resultSet.getString(1);
	            

	            theater.setTheatername(theatername);
	           
	            list.add(theater);
	        }
	        connection.close();
	        return list;

	    
	
	}



}
