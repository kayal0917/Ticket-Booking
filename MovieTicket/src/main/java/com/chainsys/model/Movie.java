package com.chainsys.model;

public class Movie {
String username;
String email;
String password;
String location;


public void MoviePojo(String username, String email, String password, String location) {
	
	this.username = username;
	this.email = email;
	this.password = password;
	this.location = location;
}
public void MoviePojo() {
	// TODO Auto-generated constructor stub
}
public String getLocation() {
	return location;
}
public void setLocation(String location) {
	this.location = location;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}


}
