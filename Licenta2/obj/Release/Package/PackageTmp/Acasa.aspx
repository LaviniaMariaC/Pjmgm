<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acasa.aspx.cs" Inherits="Licenta2.Acasa" %>

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
    
  <li><a class="active"  href="Acasa.aspx" style="  font-family: 'Roboto Mono', monospace;
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
       




    </form>
    <br/><br/>
  <div class ="container">
    <section class="about" id="about">
  	  <div class="container">
  	  	  <div class="content">
  	  	  	   <div class="box wow bounceInUp">
  	  	  	   	   <div class="inner">
  	  	  	   	   	   <div class="img">
   	  	  	   	   	   </div>
                       <div class="text">
                       	  <h4>Cine suntem?</h4>
                           <p> </p>
                       </div>
  	  	  	   	   </div>
  	  	  	   </div>
  	  	  	   	<div class="box wow bounceInUp" data-wow-delay="0.2s">
  	  	  	   	   <div class="inner">
  	  	  	   	   	   <div class="img">
   	  	  	   	   	   </div>
                       <div class="text">
                       	   <h4>De ce facem asta?</h4>
                       	   <p>  </p>
                       </div>
  	  	  	   	   </div>
  	  	  	   </div>
  	  	  	   <div class="box wow bounceInUp" data-wow-delay="0.4s">
  	  	  	   	   <div class="inner">
  	  	  	   	   	   <div class="img">
   	  	  	   	   	   </div>
                       <div class="text">
                       	   <h4>Haide alaturi de noi!</h4>
<p> </p>                       </div>
  	  	  	   	   </div>
  	  	  	   </div>
  	  	  </div>
  	  </div>
  </section>
 <!-- End About -->
      
     
    <!-- Start Gallery -->
  <section class="gallery" id="gallery">
  	
  	<div class="content">
  		 <div class="box wow slideInLeft">
  		 	 <img src="images/bucle.png"  alt="gallery" />
  		 </div>
  		 <div class="box wow slideInRight">
  		 	<img src="images/dem.png"  alt="gallery" />
  		 </div>
  		 <div class="box wow slideInLeft">
  		 	<img src="images/fix.png"  alt="gallery" />
  		 </div>
  		 <div class="box wow slideInRight">
  		 	<img src="images/shamp.png" alt="gallery" /> 
  		 </div>
  	</div>
  </section>
<!-- End Gallery -->
 </div>
      <br/><br/>
     <div class ="container">
    <br />  
<div style="padding:0 16px;">
       <div class="fon" >
            <div class="line"></div>
           <div class="card-group">
           <div class="card" style="width: 18rem;">
  <img class="card-img-top" />  <a href="Produse.aspx"> <img src="images/style.png" ight="58" width="53" alt="Card image cap"></a>
  <div class="card-body">
    <h2 class="card-title"  style="color: #625772;font-size:1.5em;"> Descoperă conceptul potrivit</h2> 
    <h3 class="card-text" >Inspiră-te din modelele regăsite în cadrul paginii catalog și alege ceva pe placul tău.</h3>
  

  </div>
</div>

      <div class="card" style="width: 18rem;">
  <img class="card-img-top" />  <a href="Autentificare.aspx"> <img src="images/clock.png" ight="58" width="53" alt="Card image cap"></a>
  <div class="card-body">
    <h2 class="card-title"  style="color: #625772;font-size:1.5em;">Rapid</h2>
    <h3 class="card-text" >Programează-te în câteva minute la serviciul/serviciile dorit/e de tine.</h3>
  

  </div>
</div>

              <div class="card" style="width: 18rem;">
  <img class="card-img-top" />  <a href="Asistenti.aspx"> <img src="images/review.png" ight="58" width="53" alt="Card image cap"></a>
  <div class="card-body">
    <h2 class="card-title"  style="color: #625772;font-size:1.5em;">Vezi părerile clienților noștrii</h2>
    <h3 class="card-text" >Alege dintre produsele recomandate de cei care au încercat un serviciu asemănător.</h3>
  

  </div>
</div>
          
            </div></div></div>
     <div class="line"></div>
  <br /><br /><br /><br /><br />
    <h1 class="txt" >
        Ești gata să te pui pe tine pe primul loc?</h1>

       
  
<div class="card mb-3">

  <div class="card-body">
    <h3 class="card-title" ><class="fon" style="font-size:2em; color: #625772;">Destinatia ta pentru frumusețe
  </h3>
    <h3 class="card-text">Beauty Concept este o platformă online ce iți aduce aproape de tine cei mai buni stilisti, frizeri, 
      bărbieri și specialiști din industria hair & beauty. Descoperă gratuit cele mai bune servicii și alege 
      stilul potrivit pentru tine.</h3>

  </div>
 
</div>
  

    <div class="card mb-3">
    <img class="card-img-top" src="images/mkup.png" style=" width:auto;
    height:auto;
    max-height: 650px;max-width:1800px; text-align:center; align-content:center" alt="Card image cap">
  <div class="card-body">
    <h3 class="card-title" ><class="fon" style="font-size:2em; color: #625772;"> Machiaj Profesional
  </h3>
    <h3 class="card-text">Se zice, încă din cele mai vechi timpuri, că frumusețea vine din interior, însă și oglinda prin care ne văd cei din jur
     ne interesează.
Lângă tine din anul 2010. Beauty Concept s-a născut din dragoste și pasiune pentru a îmbina perfect frumuețea interioară
     și cea exterioară pentru ca tu să strălucești cu încredere. Ne-am alăturat 
     saloanelor din orașul Timișoara, 
     punându-vă la dispozitie o gamă largă de servicii din domeniul de beauty.</h3>

  </div>
 
</div>

     
     <div class="card mb-3">
    <img class="card-img-top" src="images/nails.png" style=" width:auto;
    height:auto;
    max-height: 650px;" alt="Card image cap">
  <div class="card-body">

    <h3 class="card-title" ><class="fon" style="font-size:2em; color: #625772;"> Manichiură & Pedichiură
  </h3>  
    <h3 class="card-text">
        Manichiura & pedichiura denotă dincolo de frumusete, 
        îngrijire, curățenie și sanatate. Unghiile fac adesea prima impresie, 
        așadar acordăm o atenție deosebită formei, culorii și hidratării acestora cu
        produsele potrivite.

Manichiura impecabilă, lipsită de probleme estetice ale unghiilor reprezintă cartea
        ta de 
        vizită și primul detaliu pe care cei din jur îl observă la o primă întâlnire.   
        Pentru serviciile noastre folosim doar produse calitative.</h3>

      
  </div>
 
</div>
   
     <div class="card mb-3">
        <img class="card-img-top" src="images/relaxare.png" style=" width:auto;
    height:auto;
    max-height: 650px;" alt="Card image cap">
  <div class="card-body">
    <h3 class="card-title" ><class="fon" style="font-size:2em; color: #625772;"> Cosmetică
  </h3>
    <h3 class="card-text">
        Cosmetica 
        este arta și practica îngrijirii, păstrării și înfrumusețării corpului uman, în special a feței și a părului.
        Ele sunt, în general, amestecuri de compuși chimici, 
        unele fiind derivate din surse naturale (cum ar fi uleiul de cocos) și multe fiind sintetice.
         Dincolo de un serviciu de înfrumusetare, poate fi luată drept o terapie – o persoană care va intra într-un 
        salon de cosmetică, având o imagine nu prea grozavă, 
        fără îndoială va avea o stare de spirit mult mai bună după aplicarea unui tratament complet și schimbarea imaginii.

    </h3>

  </div>
 
</div>

     <div class="card mb-3">
    <img class="card-img-top" src="images/coafor.png" style=" width:auto;
    height:auto;
    max-height: 650px;" alt="Card image cap">
  <div class="card-body">
    <h3 class="card-title" ><class="fon" style="font-size:2em; color: #625772;"> Coafor
  </h3>
    <h3 class="card-text"> 
Fire așezate într-o forma de invidiat, look parca desprins din filele revistelor,
        cu alte cuvinte un par coafat.
Noțiunea aceasta nu mai este demult asimilată doar unor evenimente speciale precum nunți
        sau botezuri. În vremurile actuale,
        femeile acordă o atenție deosebită modului în care își aranjează zilnic părul. 



    </h3>

  </div>
 </div>

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
