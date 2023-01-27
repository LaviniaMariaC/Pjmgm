<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Licenta2.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Acasă</title>
     <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet"/>

       <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     <link rel="stylesheet" href="css/animate.css"/>
     <link href="css/acasa.css" rel="stylesheet"/>
          <link href="css/Sfaturi.css" rel="stylesheet"/>
                      <link href="css/navbar.css" rel="stylesheet"/>
<style>
.about{
	padding:80px 0px;
	background-color:#ffffff;
}
.fon {
    font-family: 'Nunito Sans', sans-serif;
    font-size: 1.5em;
    font-weight: 700;
    background-color:white;
}.fon {
    font-family: 'Nunito Sans', sans-serif;
    font-size: 1.5em;
    font-weight: 700;
    background-color:white;
}
ul.topnav {
    z-index: 99; /* Make sure it does not overlap */
    border: none; /* Remove borders */
    outline: none; /* Remove outline */
    padding: 15px; /* Some padding */
    
    margin: 0;
    background-color: black;
    position: sticky;
    width: 100%;
    font-family: 'Roboto Mono', monospace;
    font-size: 1.25rem;
    font-weight: 800;
    line-height: 2;
}
.about .content{ 
 -webkit-display: flex;
 display: flex;
}
.about .content .box{
	flex:0 0 33.33%;
	max-width: 33.33%;
	padding:15px;
}
.about .content .box .inner{
	background-color:#222222;
}
.about .content .box:nth-child(2) .inner{
	background-color: #625772;
}
.about .content .box .inner .img img{
	width: 100%;
}
.about .content .box .inner .text{
	padding:30px;
}

.about .content .box .inner .text h4{
  font-size: 20px;
  margin:0;
  padding: 0px 0px 15px;
  font-weight: 500;
  color:#ffffff;
 text-transform: capitalize;
  text-align: center;
}
.about .content .box .inner .text p{
	font-size: 15px;
	line-height:20px;
	color:#ffffff;
	text-align: center;
	margin:0;
	font-family: 'Open Sans', sans-serif;
}

.gallery .content{
	-webkit-display: flex;
	display: flex;
	flex-wrap: wrap;
}

.gallery .content .box{
	flex:0 0 50%;
	max-width: 50%;	
}
.gallery .content .box img{
	display: block;
	width: 100%;
	-webkit-filter: grayscale(100%);
	filter: grayscale(100%);
	-webkit-transition: all .5s ease;
	transition: all .5s ease;
}
.gallery .content .box img:hover{
	-webkit-filter: grayscale(0%);
	filter: grayscale(0%);
}

.gallery h2{
	font-size: 30px;
    font-weight: 500;
    color: #000000;
    padding: 0px 0px 20px;
    text-align: center;
}

/*Responsive*/

/*if screen width is less than or equal to 991px then*/
@media(max-width: 991px){
   .home{
   	background-position: center;
   }
  .classes .content{
  	flex-wrap: wrap;
  }
 .classes .content .box {
    flex: 0 0 100%;
    max-width: 100%;
}
.classes .content .img{
	display: none;
}
.start-today .content .box{
	padding:15px;
}
}

/*if screen width is less than or equal to 767px then*/
@media(max-width: 767px){
  
  .about .content{
  	 flex-wrap: wrap;
  }
  .about .content .box {
    flex: 0 0 100%;
    max-width: 100%;
}

  .icon-bar1{

  }
 .gallery .content{
  flex-wrap: wrap;
 }
.gallery .content .box {
    flex: 0 0 100%;
    max-width: 100%;
}

}
</style>
</head>
   
<body>
    <form id="form1" runat="server">
         <div>

          <link href="css/acasa.css" rel="stylesheet"/>
          <link href="css/Sfaturi.css" rel="stylesheet"/>
                      <link href="css/navbar.css" rel="stylesheet"/>
  
          
<!--Pentru buton-->
        <div>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
   
    <!--buton back on top--> <script src="btback.js"> </script>
<a id="back-to-top" href="#" class="btn btn-light btn-lg back_to_top" role="button"><i class="fas fa-chevron-up"> </i></a>
</div>
 
            
    
      <link href="css/navbar.css" rel="stylesheet" />  <style>                                                           ul.topnav {
                                                               width: 100%;
                                                               font-family: 'Roboto Mono', monospace;
                                                               font-size: 1.25rem;
                                                               font-weight: 800;
                                                           }
        </style>
<ul class="topnav">
   
              <li><a href="index.aspx"><img class="img-circle" alt="Logo" src="images/logo.jpg" height="50" /> </a></li>
    
  <li><a   href="Acasa.aspx" style="  font-family: 'Roboto Mono', monospace;
    font-size: 1.25rem;
    font-weight: 800;
    line-height: 2;"><h2>Acasă</h2></a></li>
  <li><a  href="Produse.aspx" style="font-family: 'Roboto Mono', monospace;"><h2>Catalog</h2></a></li>
  <li><a  href="Asistenti.aspx"><h2>Asistenți & Sfaturi</h2></a></li>
      <li><a  href=Contact.aspx><h2>Contact</h2></a></li>
  <li class="right"><a href="Inregistrare.aspx"><h2>Înregistrare</h2></a></li>
    <li class="right"><a href="Autentificare.aspx"><h2>Autentificare</h2></a></li>
</ul>


        </div>
       




    </form><style>
           .body{
               background-image:src(images/imgindex.png);
           }
           .container{
               background-image:src(images/imgindex.png);
           }
       </style>
    <br/><br/>
    <div class="container">
        <img src="images/imgindex.png" style="height:auto;width:inherit; position: static;" contenteditable="inherit" height="10" width="10" />
        
    <br/><br/>
    </div>

    
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {

        $(".ham-burger, .nav ul li a").click(function () {

            $(".nav").toggleClass("open")

            $(".ham-burger").toggleClass("active");
        })
        $(".accordian-container").click(function () {
            $(".accordian-container").children(".body").slideUp();
            $(".accordian-container").removeClass("active")
            $(".accordian-container").children(".head").children("span").removeClass("fa-angle-down").addClass("fa-angle-up")
            $(this).children(".body").slideDown();
            $(this).addClass("active")
            $(this).children(".head").children("span").removeClass("fa-angle-up").addClass("fa-angle-down")
        })

        $(".nav ul li a, .go-down").click(function (event) {
            if (this.hash !== "") {

                event.preventDefault();

                var hash = this.hash;

                $('html,body').animate({
                    scrollTop: $(hash).offset().top
                }, 800, function () {
                    window.location.hash = hash;
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
            offset: 0,
        }
    );
    wow.init();
</script>
    </body>

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
  <li><a href="Sfaturi.aspx">Sfaturi</a></li>
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
                          <script>
                              function openpopupa() {
                                  window.open("https://anpc.ro")
                              }
                          </script>
						<a href="#"style="color:gray"onclick="openpopupa()"> ANPC</a></div>
					<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                  


               <br/>
			<div>	
<!-- Facebook -->
<a class="fa fa-facebook" style="background-color: #3b5998;padding: 25px 25px;height:25px; align-content:center;" href="https://www.facebook.com/Beauty-Concept-101707089302379" role="button"
  >
</a>
                <!-- linkedin-->
<a class="fa fa-linkedin" style="padding: 25px 25px;height:25px; align-content:center;" href="https://www.linkedin.com/in/beauty-concept-55a319246/" role="button"
  >
</a><!-- instagram -->
<a class="fa fa-instagram" style="padding: 25px 25px;height:25px; align-content:center;" href="https://www.instagram.com/beauty__c__/" role="button"
  >
</a>
</div>

				
               
					</div>

                <p class="copyright">Beauty Concept © 2022.Toate drepturile rezervate</p>
            </div>
        </footer></div>

</html>
