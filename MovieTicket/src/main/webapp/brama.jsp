<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Madurai Movie Booking</title>
    <style>
        .container {
            width: 80%;
            margin: 20px auto;
        }
        .movie-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .movie-item img {
            width: 67%; /* Adjusted width */
            height: auto;
        }
        .theater {
            width: 60%;
            padding-left: 20px;
        }
        .showtime {
            margin-bottom: 10px;
        }
        .showtime-btn {
            background-color: black;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="seat.jsp" >
            <div class="movie-item">
                <a href="brama.jsp"><img class="movie-image" src="picture/brama1.jpg" alt="Brama" /></a>
                <div class="theater">
                    <h2>Madurai Theatre </h2>
                    <div class="showtime">
                        <h3>Vetri Cinemas Madurai</h3>
                        <p>Show Times: 
                            <button type="submit" name="showtime" value="10:00 AM" class="showtime-btn">10:00 AM</button>
                            <button type="submit" name="showtime" value="1:00 PM" class="showtime-btn">1:00 PM</button>
                            <button type="submit" name="showtime" value="4:00 PM" class="showtime-btn">4:00 PM</button>
                        </p>
                    </div>
                    <div class="showtime">
                        <h3>Gopuram</h3>
                        <p>Show Times: 
                            <button type="submit" name="showtime" value="11:00 AM" class="showtime-btn">11:00 AM</button>
                            <button type="submit" name="showtime" value="3:00 PM" class="showtime-btn">3:00 PM</button>
                            <button type="submit" name="showtime" value="7:00 PM" class="showtime-btn">7:00 PM</button>
                        </p>
                    </div>
                    <div class="showtime">
                        <h3>Inox</h3>
                        <p>Show Times: 
                            <button type="submit" name="showtime" value="10:00 AM" class="showtime-btn">10:00 AM</button>
                            <button type="submit" name="showtime" value="1:00 PM" class="showtime-btn">1:00 PM</button>
                            <button type="submit" name="showtime" value="4:00 PM" class="showtime-btn">4:00 PM</button>
                        </p>
                    </div>
                    <div class="showtime">
                        <h3>Solamalai Cinemas</h3>
                        <p>Show Times: 
                            <button type="submit" name="showtime" value="11:00 AM" class="showtime-btn">11:00 AM</button>
                            <button type="submit" name="showtime" value="3:00 PM" class="showtime-btn">3:00 PM</button>
                            <button type="submit" name="showtime" value="7:00 PM" class="showtime-btn">7:00 PM</button>
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Hidden fields to store selected movie and other data -->
            <input type="hidden" name="movie" value="Movie 1" />
            <input type="hidden" name="theater" value="Madurai Theatre 1" />
        </form>
    </div>
</body>
</html>
