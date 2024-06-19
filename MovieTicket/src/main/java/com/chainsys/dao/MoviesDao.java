package com.chainsys.dao;

import java.sql.SQLException;
import java.util.List;

import com.chainsys.model.Movie;

public interface MoviesDao {
	public void Signupsevlet(Movie add1) throws ClassNotFoundException, SQLException ;
	public List<Movie> retriveDetails() throws ClassNotFoundException, SQLException;
    public void DeleteEmployee()throws ClassNotFoundException, SQLException;
    public void Update()throws ClassNotFoundException, SQLException;


}
