<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Confirmation</title>
</head>
<style>
body {
	background-image: url("picture/signin.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.booking-form {
	margin-left: 64px;
	width: 300px;
	padding: 4px 48px;
	background-color: rgba(79, 74, 74, 0.5);
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	border-radius: 10px;
	color: white;
}

.booking-form h3 {
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 15px;
}

.form-control {
	width: 100%;
	padding: 8px;
	border: 1px solid #ced4da;
	border-radius: 4px;
}

.btn {
	background-color: black;
	color: white;
	border: none;
	padding: 10px 20px;
	border-radius: 4px;
	cursor: pointer;
}

.btn:hover {
	background-color: #c82333;
}
a {
    display: block;
    width: 100px;
    margin: 20px auto;
    padding: 10px;
    text-align: center;
    background: #dc3545;
    color: white;
    border-radius: 5px;
    text-decoration: none;
    font-size: 16px;
}

a:hover {
    background: #c82333;
}
</style>
<body>
	<div class="booking-form">
		<h3 id="book">Book Your Ticket</h3>
		 <p>Selected Seats: <%= request.getAttribute("selectedSeats") %></p>
        <p>Seat Count: <%= request.getAttribute("selectedSeatsCount") %></p>
		
		<%
		// Retrieving selected seat IDs and count from request parameters
		String selectedSeats = request.getParameter("selectedSeats");
		int selectedSeatsCount = Integer.parseInt(request.getParameter("selectedSeatsCount"));

		// Processing selected seats
		if (selectedSeats != null && !selectedSeats.isEmpty()) {
			String[] seatIds = selectedSeats.split(",");
			out.println("<p>You have selected " + selectedSeatsCount + " seat(s):</p>");
			out.println("<ul>");
			for (String seatId : seatIds) {
				out.println("<li>" + seatId + "</li>");
			}
			out.println("</ul>");
		} else {
			out.println("<p>No seats were selected.</p>");
		}
		%>
		<form action="BookingServlet" method="get">
			<div class="form-group">
				<label for="seat"> seats:</label> <input type="seat" id="seat"
					name="selectedSeats" class="form-control" value="<%=selectedSeats%>" />
			</div>
			<div class="form-group">
				<label for="seat"> seat count:</label> <input type="seatcount"
					id="seatCount" name="selectedSeatsCount" class="form-control"
					value="<%=selectedSeatsCount%>" />
			</div>
			<!--   <div class="form-group">
      <label for="seat"> seats:</label>
      
      <input type="seat" id="seat" name="seat" class="form-control" required />
    </div> -->
			<!--  <div class="form-group">
      <label for="screen">Screen:</label>
      <select id="screen" name="screen" class="form-control" required>
              <option value="">Screen</option>
        <option value=" screen-1">screen-1</option>
        <option value="screen-2">screen-2</option>
        <option value="screen-3">screen-3</option>
      </select> -->
			<!-- <div class="form-group">
      <label for="movie">Movie:</label>
      <select id="movie" name="movie" class="form-control" required>
        <option value="">Select Movie</option>
        <option value=" bramayugam">Bramayugam</option>
        <option value="minusone">Minus one</option>
        <option value="oppenheimer">Oppenheimer</option>
      </select>
    </div> -->
			<!-- <!--   <div class="form-group">
      <label for="ticket">No of Tickets:</label>
      <input type="number" id="ticket" name="ticketno" class="form-control" min="1" max="6" placeholder="No of tickets" required />
    </div> -->
			<div class="form-group">
				<label for="showDate">Date:</label> <input type="date" id="date"
					name="showDate" class="form-control" min="2024-06-01"
					max="2024-06-31" required />
			</div>
			 <div class="form-group">
            <label for="amount">Total Amount:</label>
            <input type="text" id="amount" name="totalAmount" class="form-control"  />
        </div>
			<!--   <div class="form-group text-right">
            <a href="Payment.jsp" class="btn" onclick="calculateAmount()">Book Ticket</a>
        </div> -->
			<!-- <div class="form-group">
				<label for="time">Time:</label> <select id="time" name="showtime"
					class="form-control" required>
					<option value="">Select Time</option>
					<option value="10 am">10:00 AM</option>
					<option value="1 pm">01:00 PM</option>
					<option value="6 pm">06:00 PM</option>
				</select>
			</div> -->
			<!--    <div class="form-group">
      <label for="theater">Theater:</label>
      <select id="theater" name="theater" class="form-control" required>
        <option value="">Select Theater</option>
        <option value="Cinepriya">Cinepriya cinemas</option>
        <option value="Tamil Theatres">Tamil Theatre</option>
        <option value="Cineplex">
        </select>
    </div> -->
			<div class="form-group text-right">
				<!-- <input type="submit" value="Book Ticket" class="btn" /> -->
			<a href="Payment.jsp">Book Ticket</a>
 	</form>
	</div>
	</form>
	</div>
</body>
<script>
	// JavaScript to populate the seat input field and set the seat count
	window.onload = function() {
		const seatInput = document.getElementById('seat');
		const seatCountInput = document.getElementById('seatCount');

		// Get selected seat IDs and count from hidden inputs
		const selectedSeats = seatInput.value;
		const selectedSeatsCount = seatCountInput.value;
		if (selectedSeats) {
			seatInput.value = selectedSeats;
			seatCountInput.value = selectedSeatsCount;
		}
	};
</script>
<script>
    // Function to calculate total amount
    function calculateAmount() {
        const seatCount = parseInt(document.getElementById('seatCount').value);
        const pricePerTicket = 100; // Replace with your actual price per ticket
        
        // Calculate total amount
        const totalAmount = pricePerTicket * seatCount;

        // Display the total amount
        document.getElementById('amount').value = totalAmount;
    }

    // Call calculateAmount() when the page loads
    window.onload = function() {
        calculateAmount();
    };
</script>



</html>
