<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Asistentilog.aspx.cs" Inherits="Licenta2.Asistentilog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Asistenti</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
 
<style>
   @import url('https://fonts.googleapis.com/css2?family=Kalam:wght@300;400;700&display=swap');

 

 

.review{
  
  background-size: cover ;
 
}

.review .heading{
  color:#fff;
  padding-bottom: 4rem;
}

.review .heading span{
  color:gold;
}

.review .box-container{
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
}

.review .box-container .box{
  width:35rem;
  margin:4rem 2rem;
  padding-bottom: 2rem;
  text-align: center;
  box-shadow: 0 .3rem .5rem #000;
  background:#fff;
}

.review .box-container .box .image{
  margin-top: -5rem;
}

.review .box-container .box .image img{
  height:10rem;
  width:10rem;
  border-radius: 50%;
  object-fit: cover;
  border: .7rem solid #fff;
}

.review .box-container .box .content h3{
  font-size: 2rem;
  color:#0098a1;
}

.review .box-container .box .content p{
  font-size: 1.4rem;
  color:#333;
  padding:.5rem 1.5rem;
}

.review .box-container .box .content .stars i{
  color:gold;
  font-size: 1.7rem;
  padding:1rem .1rem;
}
</style>
</head>

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


    </form>
       
<ul class="topnav">
               <li><a href=" "><img class="img-circle" alt="Logo" src="images/logo.jpg" height="50" /> </a></li>
    
   <li><a class="active" href="meniucl.aspx" style="  font-family: 'Roboto Mono', monospace;
    font-size: 1.25rem;
    font-weight: 800;
    line-height: 2;"><h1>Meniu Client</h1> </a></li>
  
               
</ul>
     
    </br>
      </br>
      </br>

    <body>


 

        

      <div class ="container">
     <!-- 3card-->
  <div class="card-group">
 <div class="card border-secondary mb-3" style="max-width: 30rem;">
       
   <img class="card-img-top" src="images/shamp.png"  alt="Card image cap">
  <div class="card-body">
      <h1 class="card-title">Cura fără șampon.</h1>
    <h4 class="card-text"> Ai auzit deja despre mișcarea „No Poo“? Aceasta este populară în special pe internet, adepții ei renunțând la șampon, spălându-și părul pe cât de rar posibil („No“ = Nu, „Poo“ prescurtarea de la Shampoo). 
        Ei susțin că, astfel, pielea capului se regenerează, iar părul își capătă singur strălucirea naturală. Dacă vrei să încerci această cură, spală-te pe cap o dată pe săptămână, folosind apă și câteva linguri de oțet de mere. Cei 
        care au încercat acest tratament spun că este nevoie de timp pentru ca rezultatele să fie vizibile. Dacă nu ai răbdare, mai bine spală-te tradițional!</h4>
  </div>
</div>
      <div class="card border-secondary mb-3" style="max-width: 30rem;">
       
   <img class="card-img-top" src="images/dem.png"  alt="Card image cap">
  <div class="card-body">
      <h1 class="card-title">Demachiază-te înainte de culcare neapărat.</h1>
    <h4 class="card-text"> Nu sari niciodata peste aceasta etapa importanta; daca nu ai la indemana nimic foloseste servetele umede de maini sau de bebelusi;
        Demachierea tenului seara va reduce cantitatea de sebum, eliminand totodata bacteriile care conduc la aparitia acneei.
        Un produs bifazic, poate face demachierea destul de simpla si rapida. Continutul concentrat de Aloe Vera  si de ulei de macadamia confera demachiantului o textura usoara, care ii permite sa fie foarte rapid absorbit de piele.
      
    </h4>
  </div>
</div>
 
 <div class="card border-secondary mb-3" style="max-width: 30rem;">
       
   <img class="card-img-top" src="images/fix.png" style="" alt="Card image cap">
  <div class="card-body">
      <h1 class="card-title">Scapă de părul încărcat cu fixativ</h1>
    <h4 class="card-text">(fara sa tragi de el si sa il rupi) umezindu-l cu putina apa, aplica mai apoi o cantitate consistenta de balsam, maseaza bine, 
        descurca-l usor cu un pieptene cu dinti rari si abia dupa aceea continua ritualul obisnuit de spalare;
        poate face demachierea destul de simpla si rapida. Continutul concentrat de Aloe Vera  si de ulei de macadamia confera demachiantului o textura usoara, care ii permite sa fie foarte rapid absorbit de piele. 
        Uleiul de Macadamia este cea mai bogata sursa BIO de acid palmitoleic care ajuta la mentinerea prospetimii si sanatatii tenului.

    </h4>
  </div>
</div>        
       <div class="card border-secondary mb-3" style="max-width: 30rem;">
       
   <img class="card-img-top" src="images/bucle.png" style="" alt="Card image cap" >
  <div class="card-body">
      <h1 class="card-title">Bucle lejere peste noapte</h1>
    <h4 class="card-text">  Acest sfat nu este numai gratuit, dar este și recomandat pentru sănătatea părului tău. Alege o bentiță mai largă și așaz-o pe cap precum o coroană. Învârte apoi șuvițele peste ea. La început vei avea nevoie de mai mult exercițiu. Această modalitate de prindere a părului este potrivită pentru lungimile medii și lungi.
        Acum nu trebuie decât să te bagi în pat și să te odihnești. A doua zi de dimineață te vei trezi cu bucle lejere. Aranjează-le puțin cu degetele, fixativul nefiind obligatoriu!</h4>
 
      </div>
</div>
</div>
     <!-- citat-->
    <div class="card">
  <div class="card-header">
   
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p style="text-align:center; color:black; font-size:3rem; color: #625772;">Dragostea de frumusețe este Gust. Crearea de frumusețe este Artă.</p>
      <footer class="blockquote-footer" style="text-align:right;font-size:1.5rem">Ralph Waldo  <cite title="Source Title">Emerson</cite></footer>
    </blockquote>
  </div>
</div>

     
     <!-- card colectie ongrijire-->

    <div class="card-group">
 <div class="card border-secondary mb-3" style="max-width: 30rem;">
  <div class="card-header"> </div>
  <div class="card-body text-secondary">
    <h1 class="card-title" style="color:black;">Care e îngrijirea corectă a mâinilor</h1>
    <h4 class="card-text">Mâinile au nevoie, în primul rând, de cât mai multă hidratare, în special în perioada rece, când pielea se crapă cel mai ușor. Folosește o cremă hidratantă de cel puțin trei ori pe zi, după ce te-ai spălat pe mâini înainte. Poți opta chiar și pentru unt de corp, ulei de cocos sau de măsline. Pe timpul verii poți să folosești o cremă mai ușoară.

 

Pentru mâini catifelate, poți să aplici seara câteva picături de loțiune cu glicerină, de cel puțin două ori pe săptămână.

    </h4>
  </div>
</div>
 <div class="card border-secondary mb-3" style="max-width: 30rem;">
  <div class="card-header"> </div>
  <div class="card-body text-secondary">
    <h1 class="card-title"style="color:black;">Cum stimulezi creșterea părului</h1>
    <h4 class="card-text">Ca să îți crească părul mai repede, cel mai important lucru este să te tunzi cât mai des. Vârfurile se despică în timp și încetinesc astfel creșterea părului. În același timp, evită să te speli pe cap zilnic. E recomandat să te speli pe cap de două sau de cel mult trei ori pe săptămână. Acest lucru permite uleiurilor naturale să pătrundă în firele de păr și să le hidrateze, stimulând creșterea părului.
    </h4>
  </div>
</div>
<div class="card border-secondary mb-3" style="max-width: 30rem;">
  <div class="card-header"> </div>
  <div class="card-body text-secondary">
    <h1 class="card-title"style="color:black;">Cum scapi de cearcănele inestetice</h1>
    <h4 class="card-text">Ca să scapi de cearcăne în mod natural, secretul e chiar la tine în bucătărie. Acoperă ochii cu felii de castravete, cartofi sau pliculețe de ceai verde, mușețel sau mentă, fierte și răcite înainte, și lasă-le să acționeze timp de zece minute. Repetă acest tratament zilnic sau de câteva ori pe săptămână.

 

La fel de eficient este și uleiul de migdale, apa de trandafir și, bineînțeles, cât mai multă odihnă. Stresul și lipsa somnului sunt principalele cauze care duc la apariția cearcănelor. Ședințele de yoga te pot ajuta să reduci stresul și să te simți revigorată și odihnită.
    </h4>
  </div>
</div>
        <div class="card border-secondary mb-3" style="max-width: 30rem;">
  <div class="card-header"> </div>
  <div class="card-body text-secondary">
    <h1 class="card-title"style="color:black;">Scapă de coșuri și punctele negre</h1>
    <h4 class="card-text">Ca să previi apariția coșurilor, este esențial să menții tenul curat. Demachierea și clătirea tenului cu apă și săpun trebuie să facă parte din ritualul tău zilnic de îngrijire. Aplică apoi o cremă hidratantă noncomedogenică.

 

Pentru punctele negre, cea mai eficientă soluție este să folosești măști de față naturale. Amestecă o lingură de miere cu patru-cinci picături de suc de lămâie. Aplică pe zonele cu puncte negre, lasă să acționeze timp de 20 de minute, apoi clătește cu apă din abundență. Mierea este hidratantă și îți va lăsa tenul curat și catifelat.
    </h4>
  </div>
</div>
</div>

      <!-- card colectie tutoriale-->

      <div class="card-group">
 

<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="images/play_tut.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Cum să îți creezi cont de utilizator?</h5>
   <a href="#" class="btn btn-primary"style="background-color:#625772; font-family: 'Roboto Mono', monospace;
    font-size: 1.25rem;">Să începem</a>  </div>
</div> 

 

 <div class="card" style="width: 18rem;">
  <img class="card-img-top"src="images/play_tut.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Cum să îți faci o programare?</h5>
   <a href="#" class="btn btn-primary" style="background-color:#625772; font-family: 'Roboto Mono', monospace;
    font-size: 1.25rem;">Să începem</a>  </div>
</div>



 <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="images/play_tut.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Cum să ne contactezi?</h5>
          <a href="#" class="btn btn-primary"style="background-color:#625772; font-family: 'Roboto Mono', monospace;
    font-size: 1.25rem;">Să începem</a>

 

  </div>
</div>
</div>
          </div>
        
        <section id="review" class="review">
<br /><div class="container">
    <h1 class="heading" style="color:black ; background-color:white"><center>Asistenta noastră poate fi contactată la 
        numărul afișat, în intervalul: 08:00-15:30 (luni-vineri)
                        </center></h1>
    </diV>
<br />
            
<div class="box-container">

     

    <div class="box">
        <div class="image">
            <img   src="images/eu.jpg"   alt="">
        </div>
        <div class="content">
            <h3>Lavinia</h3>
             <p>Lavinia obisnuiește să își petreacă timpul activând în diferite acțiuni de voluntariat, în același timp reușind să
                 rămână în trend cu ultimele apariții în modă.<br />
                Aceasta este convinsă că cunoașterea istoriei
                 îți poate schimba modul de gândire și stilul de viață.<br />
                Cercetașa noastră este gata oricând să ajute clienții nedumeriți.
           <br>Telefon: 0754642483
                 </p>
            <br />
            <br />
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
            </div>
        </div>
    </div>

     

</div>
    <br />
    <br />
</section>

     
<br />
<br />
        <section id="review" class="review">
<br /><div class="container">
    <h1 class="heading" style="color:black ; background-color:white"><center>Top 3 cele mai recomandate servicii de clienții noștrii:
                        </center></h1>
    </div>
<br />

<div class="box-container">

    <div class="box">
        <div class="image">
            <img src="images/manichiura/11.jpg" alt="">
        </div>
        <div class="content">
            <h3>Ioana Andreea</h3>
            <p>"Nu mă așteptam ca venind cu manichiura din altă parte rezultatul să fie atât de frumos și într-un timp util.<br />
               Tip serviciu: Întreținere unghii gel."
              <br>   
            </p>
            <br />
            <br />
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
        </div>
    </div>

    <div class="box">
        <div class="image">
            <img src="images/coaf/coaf.jpg"  alt="">
        </div>
        <div class="content">
            <h3>Popa Cristina</h3>
             <p>"Am un tip de păt creț, foarte des și lung până la șolduri, durata tipului acesta de serviciu a fost ceva mai lungă decât mă așteptam, dar rezultatul a fost
                 pe măsură, recomand acest salon și acest serviciu în special.<br />
                 Vă mulțumesc!<br />
               Tip serviciu: Vopsire tehnica Bayalage."
                </p>
            <br />
            <br />
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
            </div>
        </div>
    </div>

    <div class="box">
        <div class="image">
            <img  src="images/machiaj/2.jpg"  alt="">
        </div>
        <div class="content">
            <h3>Miruna Elena</h3>
            <p>"Am un ten destul de gras, să găsesc soluțiile potrivite tenului meu ar dura prea mult timp.
                Vreau să îi mulțumesc Cristinei că deși tenul meu și coșurile au fost o piedică în realizarea machiajului mult dorit a reușit cu brio să facă față
                provocării.<br />
                 <br />
               Tip serviciu: Machiaj nuntă."
                </p>
             <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
        </div>
    </div>

</div>
    <br />
    <br />
</section>


        <section id="review" class="review">
<br /><div class="container">
    <h1 class="heading" style="color:black ; background-color:white"><center>Cei mai căutați prestatori de servicii:
      
        </center></h1>
    </div>
<br />

<div class="box-container">

    <div class="box">
        <div class="image">
            <img  src="images/vera.jpg"  alt="">
        </div>
        <div class="content">
            <h3>Vera Veronica</h3>
            <p>Vera este absolventa al Facultății de Arte si Design din Timișoara. <br />
                Aceasta a participat la numeroase competiții artistice, 
                preferatele ei fiind cele pe baza abstracta.
                Principalele sale calități fiind calmul și răbdarea.<br />
                "Să îmi văd clientele fericite cu noua lor coafură îmi înseninează ziua!"
              <br>  Telefon:0745256311
            </p>
            <br />
            <br />
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
        </div>
    </div>

    <div class="box">
        <div class="image">
            <img  src="images/cristina.jpg"  alt="">
        </div>
        <div class="content">
            <h3>Cristina Popescu</h3>
             <p>"Nu lăsa pe mâine ce poți face azi!"<br /><br />
                Cristina, pasionata noastră în arta frumosului este gata oricând să dea puțină culoare zilelelor de neuitat.<br />
                
           <br>Telefon: 0795648210
                 </p>
            <br />
            <br />
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
            </div>
        </div>
    </div>

    <div class="box">
        <div class="image">
            <img   src="images/maria.jpg"   alt="">
        </div>
        <div class="content">
            <h3>Maria Negru</h3>
            <p>Maria a studiat Arte Plastice. <br />
                Aceasta are un istoric de mai bine de 
                5 ani alături de noi, în care toți clienții pe care
                au contactat-o au fost pe deplin multumiți de serviciile
                oferite.<br />
                
                <br>Telefon:0723155420<br /><br /><br /><br /> 
            </p><div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
        </div>
    </div>

</div>
    <br />
    <br />
</section>

<!-- review section ends -->
 

      <link href="css/footer.css" rel="stylesheet"/>

	
     <div class="footer-dark">
        <footer>
            <div class="container" style="background-color:black">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3 style="color:white">Beauty Concept</h3>
                        <ul>
                          

                     <li><a   href="Acasalog.aspx">Acasă</a></li>
  <li><a   href="Produselog.aspx">Catalog</a></li>
  <li><a href="Asistentilog.aspx">Asistenți & Sfaturi</a></li>
      <li><a href=Contactlog.aspx>Contact</a></li>
  
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
                           
						</a><br/>
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
            
        </footer></div></body>
</html>

 
