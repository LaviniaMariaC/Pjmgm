<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produse.aspx.cs" Inherits="Licenta2.Produse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Catalog</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="css/animate.css">
    <style>
        .start-today{
	background-color: #222222;
}

.start-today .content{
	-webkit-display: flex;
	display: flex;
	align-items: center;
}

.start-today .content .box{
	flex:0 0 50%;
	max-width: 50%;
	padding:0px 15px;
}

.start-today .content .img img{
	width: 100%;
	display: block;
}

.start-today .content .text h2{
	font-size: 30px;
    font-weight: 500;
    color: #ffffff;
    padding: 0px 0px 20px;
}

.start-today .content .text p{
	font-size: 15px;
    line-height: 20px;
    color: #ffffff;
    margin: 0;
    padding: 0px 0px 20px;
    font-family: 'Open Sans', sans-serif;
}

.start-today .content .text .btn{
	padding: 10px 30px;
    background-color: #8a2be2;
    color: #ffffff;
    text-decoration: none;
    display: inline-block;
    border: 1px solid transparent;
    cursor: pointer;
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
}

.start-today .content .text .btn:hover{
	color:#ffffff;
	border-color: #ffffff;
	background-color: transparent;
}


.price-package{
	padding: 80px 0px;
	background-color: #ffffff;
}
.price-package h2{
	font-size: 30px;
	font-weight: 500;
	color:#000000;
	padding: 0px 0px 20px;
	text-align: center;
}

.price-package .title-p{
 font-size: 15px;
 line-height: 20px;
 color:#222222;
 margin:0;
 text-align: center;
 padding:0 20% 50px;
 font-family: 'Open-sans', sans-serif;
}

.price-package .content{
	-webkit-display: flex;
	display: flex;
}
.price-package .content .box{
	flex:0 0 33.33%;
	max-width: 33.33%;
	padding: 12px;
}
.price-package .content .box .inner{
	background-color: #f0f0f0;
}
.price-package .content .box .inner .price-tag{
	padding: 10px;
	font-size: 15px;
	background-color: #8a2be2;
	color:#ffffff;
	text-align: center;
	font-weight: 700;
}
.price-package .content .box .inner .text{
	padding:30px 15px;
	text-align: center;
}
.price-package .content .box .inner .text h3{
	font-size: 14px;
	color:#222222;
	margin:0;
	padding:0px 0px 20px;
	font-weight: 700;
}
.price-package .content .box .inner .text p{
 font-size: 12px;
 line-height: 20px;
 color:#222222;
 margin:0;
 text-align: center;
 padding:0 0 5px;
 font-family: 'Open-sans', sans-serif;	
}
.price-package .content .box .inner .text .btn{
    padding: 8px 30px;
    background-color: #8a2be2;
    color: #ffffff;
    text-decoration: none;
    display: inline-block;
    border: 1px solid transparent;
    cursor: pointer;
    -webkit-transition: all .5s ease;
    transition: all .5s ease;
    margin-top: 10px;
}
.price-package .content .box .inner .text .btn:hover{
	border-color:#222222;
	color:#222222;
	background-color: transparent;
}
.price-package .content .box .inner .img img{
	width: 60%;
    height:250px;
}
        @media(max-width: 991px) {
        .price-package .content{
	flex-wrap: wrap;
}
.price-package .content .box {
    flex: 0 0 100%;
    max-width: 100%;
}
.start-today .content{
	flex-wrap: wrap;
}
.start-today .content .box {
    flex: 0 0 100%;
    max-width: 100%;
  }
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div>

           
            <link href="css/Acasa.css" rel="stylesheet"/>
          <link href="css/Sfaturi.css" rel="stylesheet"/>
                      <link href="css/navbar.css" rel="stylesheet"/>
  
   
     <!--Pentru fonturi-->

  <link href="https://fonts.googleapis.com/css?family=Schoolbell&v1" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400;500;600;700&family=Condiment&family=Oooh+Baby&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Vujahday+Script&display=swap" rel="stylesheet">

 
<!--Pentru buton-->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
   </head>
    <!--buton back on top--> <script src="btback.js"> </script>
<a id="back-to-top" href="#" class="btn btn-light btn-lg back_to_top" role="button"><i class="fas fa-chevron-up"> </i></a>


<ul class="topnav">
    
            <li><a href="index.aspx"><img class="img-circle" alt="Logo" src="images/logo.jpg" height="50" /> </a></li>
    
  <li><a  href="Acasa.aspx" style="  font-family: 'Roboto Mono', monospace;
    font-size: 1.25rem;
    font-weight: 800;
    line-height: 2;"><h2>Acasă</h2></a></li>
  <li><a class="active"  href="Produse.aspx" style="font-family: 'Roboto Mono', monospace;"><h2>Catalog</h2></a></li>
  <li><a  href="Asistenti.aspx"><h2>Asistenți & Sfaturi</h2></a></li>
      <li><a  href=Contact.aspx><h2>Contact</h2></a></li>
  <li class="right"><a href="Inregistrare.aspx"><h2>Înregistrare</h2></a></li>
    <li class="right"><a href="Autentificare.aspx"><h2>Autentificare</h2></a></li>
</ul> 
  

        </div>
       
    </form>
     <br />
    <br />
 <!-- Start Today -->
 <section class="start-today">
    
 	<div class="container">
 		 <div class="content"><style>
                        title-p{
                            
                        }
                    </style>
 		 	  <div class="box text wow slideInLeft">
                    
 		 	  	 <h2>Programează-te rapid la noi!</h2>
           <p class="title-p" style="text-align:left">Fii cu ochii pe noi, în fiecare zi actualizăm atât modelele cât și părerile clienților noștrii.</p>
           <p class="title-p">Asistenții noștrii sunt alături de tine pentru a te ajuta să ajungi la rezultatul mult dorit.</p>
                 <h2>De reținut!</h2> <p class="title-p"> Nu te poți programa fără a-ți crea cont, sau a te autentifica.</p>

                <!--    <a class="btn" href="Servicii.aspx" role="button"><h3>Vreau să mă programez și să îmi creez cont!</h3></a>
 		 	-->  </div>
 		 	  <div class="box img wow slideInRight">
 		 	  	 <img    src="images/1.1.png"    />
 		 	  </div>

 		 </div>
 	</div>
 </section>
<!-- End Start Today -->
     <div class="container" >
         <style>
             content{opacity: 0.5; };
         </style>
           <style>

/* Style the Image Used to Trigger the Modal */
#myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (Image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image (Image Text) - Same Width as the Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation - Zoom in the Modal */
.modal-content, #caption {
  animation-name: zoom;
  animation-duration: 0.6s;
}

@keyframes zoom {
  from {transform:scale(0)}
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}
         </style>
    <!-- Start Price -->
  <section class="price-package" id="price">
  	 <div class="container">
  	 	 
  	 	  <div class="content">
                   	 	    <div class="box wow bounceInUp">
  	 	  	  	  <div class="inner">
  	 	  	  	  	   <div class="price-tag">
  	 	  	  	  	   	    	 	  	  	  	   	  Machiaj

  	 	  	  	  	   </div>  
                                        <style>

/* Style the Image Used to Trigger the Modal */
#myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (Image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image (Image Text) - Same Width as the Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation - Zoom in the Modal */
.modal-content, #caption {
  animation-name: zoom;
  animation-duration: 0.6s;
}

@keyframes zoom {
  from {transform:scale(0)}
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}
         </style>

  	 	  	  	  	   <div class="img"> 
  	 	  	  	  	   	 <center>
                   <img   src="images/machiaj/9.jpg" alt="" style="width:auto;max-width:auto">
 
                                         </center>
  	 	  	  	  	   </div>
   	 	  	  	  	   <div class="text">
  	 	  	  	  	   	   <p><h3>Printre cele mai căutate machiaje sunt cele de evenimente: nuntă, botez & majorate</h3></p>
  	 	  	  	  	   	  <p><h3>Prețurile diferă în funcție de complexitatea machiajului dorit.</h3></p>
  	 	  	  	  	   	  <p></p> 
  	 	  	  	              <br /> 
  	 	  	  	  	   	  <a href="exemple.aspx#makeup" role="button" class="btn"style="font-size:2rem">Vezi mai mult..</a>
  	 	  	  	  	   </div>
  	 	  	  	  </div>
  	 	  	  </div>

  	 	  	  <div class="box wow bounceInUp" data-wow-delay="0.2s">
  	 	  	  	  <div class="inner">
  	 	  	  	  	   <div class="price-tag">
  	 	  	  	  	   	  Manichiură
  	 	  	  	  	   </div>
                                        <style>

/* Style the Image Used to Trigger the Modal */
#myImg {
  border-radius: 5px;
  cursor: pointer;
  transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (Image) */
.modal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
}

/* Caption of Modal Image (Image Text) - Same Width as the Image */
#caption {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 700px;
  text-align: center;
  color: #ccc;
  padding: 10px 0;
  height: 150px;
}

/* Add Animation - Zoom in the Modal */
.modal-content, #caption {
  animation-name: zoom;
  animation-duration: 0.6s;
}

@keyframes zoom {
  from {transform:scale(0)}
  to {transform:scale(1)}
}

/* The Close Button */
.close {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.close:hover,
.close:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .modal-content {
    width: 100%;
  }
}
         </style>

  	 	  	  	  	   <div class="img">
  	 	  	  	  	   	 <center><img   src="images/manichiura/1.jpg" alt="" style="width:auto;max-width:auto">
                                          
  	 	  	  	  	   	 </center>
  	 	  	  	  	   </div>  
                                                           

  	 	  	  	  	   <div class="text">
  	 	  	  	  	   	  <p><h3>Printre cele mai căutate modele sunt cele: holografice, french & abstracte.</h3></p>
  	 	  	  	  	   	  <p><h3>Prețurile diferă în funcție de complexitatea & lungimea modelului dorit.</h3></p>
  	 	  	  	  	     <a href="exemple.aspx#mani" role="button" class="btn"style="font-size:2rem">Vezi mai mult..</a>
  	 	  	  	  	   </div>
  	 	  	  	  </div>
  	 	  	  </div>

  	 	  	  <div class="box wow bounceInUp" data-wow-delay="0.4s">
  	 	  	  	  <div class="inner">
  	 	  	  	  	   <div class="price-tag">
  	 	  	  	  	   	  Pedichiură
  	 	  	  	  	   </div>
  	 	  	  	  	   <div class="img">
  	 	  	  	  	   	<center> <img  src="images/pedi/51361142660_0411eccc40_c.jpg"  alt="price" /></center>
  	 	  	  	  	   </div>
  	 	  	  	  	   <div class="text">
  	 	  	  	  	   	  <p><h3>Printre cele mai căutate modele sunt cele: holografice & french.</h3></p>
  	 	  	  	  	   	  <p><h3>Prețurile de cele mai multe ori nu diferă de la un model la altul.</h3></p>
  	 	  	  	   	  <a href="exemple.aspx#pedi" role="button" class="btn"style="font-size:2rem">Vezi mai mult..</a>
  	 	  	  	  	   </div>
  	 	  	  	  </div>
  	 	  	  </div>
              
  	 	  </div>
  	 </div>
     
  </section>
    <section class="price-package" id="price">
  	 <div class="container" >
  	 	  <div class="content">
  	 	    <div class="box wow bounceInUp">
  	 	  	  	  <div class="inner">
  	 	  	  	  	   <div class="price-tag">
  	 	  	  	  	   	  Cosmetică
  	 	  	  	  	   </div>
  	 	  	  	  	   <div class="img">
  	 	  	  	  	   	 <center><img  src="images/cosm/cosm.jpg"   alt="price" /><center>
  	 	  	  	  	   </div>
  	 	  	  	  	   <div class="text">
  	 	  	  	  	   	   <p><h3>Cele mai căutate servicii cosmetice sunt: scoatere puncte negre, masaj facial.</h3></p>
  	 	  	  	  	   	  <p><h3>Prețurile variază în funcție de serviciul selectat.</h3></p>
  	 	  	  	              <br /> 
  	 	  	  	  	   	  <a href="exemple.aspx#cosm" role="button" class="btn"style="font-size:2rem">Vezi mai mult..</a>
  	 	  	  	  	   </div>
  	 	  	  	  </div>
  	 	  	  </div>
  	 	  	  <div class="box wow bounceInUp" data-wow-delay="0.2s">
  	 	  	  	  <div class="inner">
  	 	  	  	  	   <div class="price-tag">
  	 	  	  	  	   	  Coafor
  	 	  	  	  	   </div>
  	 	  	  	  	   <div class="img">
  	 	  	  	  	   	 <center><img   src="images/coaf/coaf.jpg"  alt="price" /></center>
  	 	  	  	  	   </div>
  	 	  	  	  	   <div class="text">
  	 	  	  	  	   	    <h3>Printre cele mai căutate tehnici de vopsire a părului sunt: bayalage , ochi de tigru & ombre.</h3> 
  	 	  	  	  	   	   <h3>Prețurile diferă în funcție de lungimea podoabei capilare, densitatea firelor & tipul de păr.</h3> 
  	 	  	  	   	  <a href="exemple.aspx#coaf" role="button" class="btn"style="font-size:2rem">Vezi mai mult..</a>
  	 	  	  	  	   </div>
  	 	  	  	  </div>
  	 	  	  </div>
  	 	  	  <div class="box wow bounceInUp" data-wow-delay="0.4s">
  	 	  	  	  <div class="inner">
  	 	  	  	  	   <div class="price-tag">
  	 	  	  	  	   	  Pentru persoanele ce doresc o programare.
  	 	  	  	  	   </div>
  	 	  	  	  	   <div class="img">
  	 	  	  	  	   	 <center><img   src="images/calendar.jpg"   alt="price" /></center>
  	 	  	  	  	   </div><br/>  
  	 	  	  	  	   <div class="text">
  	 	  	  	  	   	   <h3>Pentru a beneficia de reducerile regăsite aproape zilnic în conturile de utilizator, vă recomandăm să vă 
                                          autentificați/înregistrați înainte de a face o programare.
                                           Vă așteptăm cât mai curând!
  	 	  	  	  	   	   </h3> 
 
                          
                                      <br/>
  	 	  	  	  	   	  <a href="inregistrare.aspx" role="button" class="btn"style="font-size:2rem">Crează cont..</a>
  	 	  	  	  	   </div>
  	 	  	  	  </div>
  	 	  	  </div>
  	 	  </div>
  	
              
  	 	  </div>
 
     
  </section>
         
         
      
 <!-- End Price -->
</div>

        
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){

      $(".ham-burger, .nav ul li a").click(function(){
       
        $(".nav").toggleClass("open")

        $(".ham-burger").toggleClass("active");
      })      
      $(".accordian-container").click(function(){
      	$(".accordian-container").children(".body").slideUp();
      	$(".accordian-container").removeClass("active")
      	$(".accordian-container").children(".head").children("span").removeClass("fa-angle-down").addClass("fa-angle-up")
      	$(this).children(".body").slideDown();
      	$(this).addClass("active")
      	$(this).children(".head").children("span").removeClass("fa-angle-up").addClass("fa-angle-down")
      })

       $(".nav ul li a, .go-down").click(function(event){
         if(this.hash !== ""){

              event.preventDefault();

              var hash=this.hash; 

              $('html,body').animate({
                scrollTop:$(hash).offset().top
              },800 , function(){
                 window.location.hash=hash;
              });

              // add active class in navigation
              $(".nav ul li a").removeClass("active")
              $(this).addClass("active")
         }
      })
})

</script>
<script src="js/wow.min.js"></script>
<script>
    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       0,
      }
    );
    wow.init();
</script>

  <br />
       <link href="css/footer.css" rel="stylesheet"/>

	
     <div class="footer-dark">
        <footer>
            <div class="container" style="background-color:black">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3 style="color:white">Beauty Concept</h3>
                        <ul>
                          

                             <li><a   href="Acasa.aspx">Acasă</a></li>
  <li><a   href="Produse.aspx">Catalog</a></li>
  <li><a href="Asistenti.aspx">Asistenți & Sfaturi</a></li>
      <li><a href=Contact.aspx>Contact</a></li>
  
                        </ul>

						 

                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3 style="color:white">Contactează-ne la:</h3>
                        <ul>
                            <li><a href="mailto:support.bc@gmail.com">Email: support.bc@gmail.com</a></li>
                            <li><a href="tel:+40754642483">Telefon: +40754642483</a></li>
                            <li><a href="Contact.aspx">Sau ne poți lăsa un mesaj.</a></li>
                        </ul>
                    </div>
                      <div class="col-sm-6 col-md-3 item">
						<script>
                            function openpopupt() {
                                window.open("TermeniCD.aspx")
                            }
                        </script>
						<a href="#" style="color:gray" onclick="openpopupt()"> Termeni și condiții </a>
						 <br/>
                          <script>
                              function openpopup() {
                                  window.open("PolConf.aspx")
                              }
                          </script>
						<a href="#"style="color:gray" onclick="openpopup()"> Politica de confidențialitate
                           
						</a>
						<br/>
						<a href="https://anpc.ro"style="color:gray"> ANPC</a></div>
					<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                   <div>	
<!-- Facebook -->
<a class="fa fa-facebook" style="background-color: #3b5998;padding: 25px 25px;height:25px; align-content:center;text-align;fill" href="https://www.facebook.com/Beauty-Concept-101707089302379" role="button"
  >
</a>
                <!-- linkedin-->
<a class="fa fa-linkedin" style="padding: 25px 25px;height:25px; align-content:center;text-align;fill" href="https://www.linkedin.com/in/beauty-concept-55a319246/" role="button"
  >
</a><!-- instagram -->
<a class="fa fa-instagram" style="padding: 25px 25px;height:25px; align-content:center;text-align;fill" href="https://www.instagram.com/beauty__c__/" role="button"
  >
</a>
</div>
               <br/>
					</div>

				
               
					</div>

                <p class="copyright">Beauty Concept © 2022.Toate drepturile rezervate</p>
            
        </footer></div>

</body>

</html>

