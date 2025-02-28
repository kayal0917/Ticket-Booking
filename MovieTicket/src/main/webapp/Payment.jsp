<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Ticket</title>
</head>
<body>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,500;0,700;0,800;1,400;1,600&display=swap");

        body{
   
            padding: 0;
    margin: 0;
}
.box{
   
    width: 100%;
    height: 90vh;
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: sans-serif;
    font-size: 12px;
    font-family: 'Poppins', sans-serif;
    background-color: black;
}

/* Main Ticket Style */
.ticketContainer{
    display: flex;
    flex-direction: column;
    align-items: center;
    transition: 0.5s all ease-in-out;
}
.ticket{
    animation: bouncingCard 0.6s ease-out infinite alternate;
    background-color: white;
    color: darkslategray;
    border-radius: 12px;
    height: auto;
}
.ticketShadow{
    animation: bouncingShadow 0.6s ease-out infinite alternate;
    margin-top: 4px;
    width: 95%;
    height: 12px;
    border-radius: 50%;
    background-color: black;
    filter: blur(12px);
}

/* Ticket Content */
.ticketTitle{
    font-size: 1.5rem;
    font-weight: 700;
    padding: 12px 16px 4px;
}
hr{
    width: 90%;
    border: 1px solid #efefef;
}
.ticketDetail{
    font-size: 1.1rem;
    font-weight: 500;
    padding: 4px 16px 12px 16px;
}
.ticketSubDetail{
    display: flex;
    justify-content: space-between;
    font-size: 1rem;
    padding: 12px 16px;
}
.ticketSubDetail .code{
    margin-right: 24px;
}

/* Ticket Ripper */
.ticketRip{
    display: flex;
    justify-content: space-between;
    align-items: center;
    text-align: center;
}
.circleLeft{
    width: 12px;
    height: 24px;
    background-color:#ec1c3e;
    border-radius: 0 12px 12px 0;
}
.ripLine{
    width: 100%;
    border-top: 3px solid #ec1c3e;
    border-top-style: dashed ;
}
.circleRight{
    width: 12px;
    height: 24px;
    background-color: #ec1c3e;
    border-radius: 12px 0 0 12px;
}
.ticketContainer:hover{
    transform: scale(1.2);
}
.qr-code {
    display: flex;
    justify-content: center;
    align-items: center;
}

    </style>
    <div class="box">
 <a onclick="window.print()">
    <div class="ticketContainer" >
        <div class="ticket">
          <div class="ticketTitle">Movie</div>
          <hr>
          <div class="ticketDetail">
            <div>Movie: Bramayugam</div>
            <div>Tickets: 5</div>
            <div>Time:   11:00</div>
      <!--     </div>
          <div class="ticketRip">
            <div class="circleLeft"></div>
            <div class="ripLine"></div>
            <div class="circleRight"></div>
          </div> -->
          
          <div class="qr-code">
            <img src="https://svgshare.com/i/t8x.svg" width="70" height="60">
        </div>
        
          <div class="ticketDetail">
            <div style="text-align: right;"> Amount :  rs. 1000</div>
          </div>
        </div>
        <div class="ticketShadow"></div>
      </div>
    </div>
</a>
 
   
    </div>
    
    </body>
</html>