<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exemple.aspx.cs" Inherits="Licenta2.exemple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
         <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>De ce să ni te alături?</title>

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
	padding: 8px 30px;
    background-color:#8a2be2;
    color: white;
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

.service{
	padding:80px 0px;
	background-color: #6d5378;
}

.service .content{
	-webkit-display:flex;
	display:flex;
}

.service .content .box{
	flex:0 0 50%;
	max-width: 50%;
	padding:15px;
}

.service .content .text h2{
	font-size: 30px;
	font-weight: 500;
	color:#ffffff;
	padding:0px 0px 20px;
}

.service .content .text p{
    font-size: 15px;
	line-height:20px;
	color:#ffffff;
	margin:0;
	padding:0px 0px 20px;
	font-family: 'Open Sans', sans-serif;
}

.service .content .text .btn{
	padding:8px 30px;
	background-color: #222222;
	color:#ffffff;
	text-decoration: none;
	display: inline-block;
	border:1px solid transparent;
	cursor: pointer;
	-webkit-transition: all .5s ease;
	transition: all .5s ease;
}

.service .content .text .btn:hover{
	border:1px solid #ffffff;
	color:#ffffff;
	background-color: transparent;
}
.service .content .accordian-container{
	margin-bottom: 5px;
}
.service .content .accordian-container .head{
	background-color:rgba(0,0,0,0.2);
	position: relative;
	padding:12px 15px;
	cursor: pointer;
}
.service .content .accordian-container .head .fa{
	position: absolute;
	right: 10px;
	top:13px;
	color:#ffffff;
	height:30px;
	width: 30px;
	text-align: center;
	line-height: 30px;
	color:#ffffff;
	border-radius: 50%;
}
.service .content .accordian-container .head h4{
  font-size: 20px;
  margin:0;
  padding:0;
  font-weight: 500;
  color: #ffffff;
  text-transform: capitalize;
}
.service .content .accordian-container.active .head{
  background-color: #222222;	
}
.service .content .accordian-container .body{
	display: none;
	padding:15px;
	background-color: #222222;
	border-top:1px solid #333333;
}

.service .content .accordian-container:nth-child(1) .body{
	display: block;
}
.service .content .accordian-container .body p{
    font-size: 15px;
	line-height:20px;
	color:#ffffff;
	margin:0;
	padding:0;
	font-family: 'Open Sans', sans-serif;	
}



        @media(max-width: 767px) {
        .service .content{
	flex-wrap: wrap;
}
.service .content .box {
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
    <style>
        
    @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap');

:root{
   
    color: #8a2be2;
}

*{
    font-family: 'Open Sans', sans-serif;
    margin:0; padding: 0;
    box-sizing: border-box;
    transition: all .2s linear;
   
    outline: none;
    text-decoration: none;
}

*::selection{
    background-color:black;
    color:#fff;
}
    html{
    font-size: 62.5%;
    overflow-x: hidden;
}

.btn{
    cursor: pointer;
    border:.2rem solid double;
    color: #8a2be2;

    padding:.5rem 3rem;
    margin-top: 1rem;
    position: relative;
    z-index: 0;
    font-size: 2rem;
    
}

.btn::before{
    content: '';
    position: absolute;
    top:0; left: 0;
    height:100%;
    width:100%;
    background:var(--black);
    z-index: -1;
    clip-path: circle(0% at 0% 0%);
    transition: .3s;
}

.btn:hover::before{
    clip-path: circle(100%);
}

.btn:hover{
    color:#fff;
}
.service2{
    min-height: 100vh;
    text-align: center;
}

.service2 .box-container{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
}

.service2 .box-container .box{
    height:23rem;
    width:35rem;
    margin:1rem;
    overflow: hidden;
    position: relative;
    cursor: pointer;
}

.service2 .box-container .box img{
    height:100%;
    width:100%;
    object-fit: cover;
}

.service2 .box-container .box .info{
    height:90%;
    width:90%;
    position: absolute;
    top:50%; left:50%;
    transform: translate(-50%, -50%) scale(0);
    background:#fff;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-flow: column;
}

.service2 .box-container .box:hover .info{
    transform: translate(-50%, -50%) scale(1);
}

.service2 .box-container .box .info h3{
    font-size: 2.5rem;
    color:#333;
}

.service2 .box-container .box .info p{
    font-size: 1.2rem;
    color:#666;
    padding:1rem 2rem;
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
  <li><a href="Produse.aspx" style="font-family: 'Roboto Mono', monospace;"><h2>Catalog</h2></a></li>
  <li><a  href="Asistenti.aspx"style="font-family: 'Roboto Mono', monospace;"><h2>Asistenți & Sfaturi</h2></a></li>
      <li><a  href=Contact.aspx style="font-family: 'Roboto Mono', monospace;"><h2>Contact</h2></a></li>
      <li><a class="active"  href=" " style="font-family: 'Roboto Mono', monospace;"><h2>Exemple</h2></a></li>
  <li class="right"><a href="Inregistrare.aspx"style="font-family: 'Roboto Mono', monospace;"><h2>Înregistrare</h2></a></li>
    <li class="right"><a href="Autentificare.aspx"style="font-family: 'Roboto Mono', monospace;"><h2>Autentificare</h2></a></li>
</ul> 
  

        </div>
       
    </form>
    
 <!-- Start Today -->
    <h1 id="makeup"> </h1>
 <section class="start-today">
 	<div class="container">
 		 <div class="content">
 		 	  <div class="box text wow slideInLeft">
 		 	  	 <h2>Make up</h2>
 		 	  	 <p style="align-content:center"> Printre cele mai căutate machiaje sunt cele de evenimente: nuntă, botez & majorate.</p>
 		 	  	 <a class="btn" href="inregistrare.aspx" role="button" style="background-color: #625772" ><h3>Crează cont acum</h3></a>
                    
                    <h1></h1>
  		 	  </div>
 		 	  <div class="box img wow slideInRight">
  		 	  </div>

 		 </div>
 	</div>
 </section>
<!-- End Start Today -->
    

    
 <!-- Start Service -->
 <section class="service" id="service">
 	<div class="container">
 		 <div class="content">
 		 	  <div class="text box wow slideInLeft">
                  <h2>Servicii</h2>
                <p> Tarifere prezentate 
                    Prețurile diferă în funcție de complexitatea machiajului dorit.
</p>
		 	  </div>
 		 	  <div class="accordian box wow slideInRight" style="background-color:#5b496a">
 		 	  	    <div class="accordian-container active" >
 		 	  	    	<div class="head">
 		 	  	    		<h4>Machiaj de Seară</h4>
 		 	  	    		<span class="fa fa-angle-down"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 150 RON </p>< br >
                                 <p>   După aplicarea reducerii de client BC: 120 RON</p>< br >
                                  <p>  Prestator: Popescu Cristina 

 		 	  	    		</p>
 		 	  	    	</div>
 		 	  	    </div>
 		 	  	    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Machiaj Majorat</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 150 RON</p> < br >
                                   <p> După aplicarea reducerii de client BC: 120 RON </p>< br >
                                  <p>  Prestator: Caragea Anda </p>
 		 	  	    	</div>
 		 	  	    </div>
 		 	  	    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Machiaj Nuntă - Mireasă</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 	250 RON</p> < br >
                                  <p>  După aplicarea reducerii de client BC: 187,5 RON</p> < br >
                                   <p> Prestator: Fugaciu Adelina</p>
 		 	  	    	</div>
 		 	  	    </div>
 		 	  	 
 		 	  </div>
 		 </div>
 	</div>
 </section>
 <!-- End Service -->

    
<section class="service2" id="service2">

 

<div class="box-container">

    <div class="box">
                <img src="images/machiaj/2.jpg"   style=" width:auto%;
                height:auto;">

         <div class="info">
            <h3>Machiaj Nuntă</h3>
            
        </div>
    </div>

    <div class="box">
        <img src="images/machiaj/5.jpg"   alt="">
        <div class="info">
            <h3>Machiaj de Seară</h3>
         </div>
    </div>

    <div class="box">
        <img src="images/machiaj/4.jpg"  style=" width:auto%;
                height:auto;"  >
        <div class="info">
            <h3>Machiaj Majorat</h3>
         </div>
    </div>

  <div class="box">
                <img src="images/machiaj/8.jpg"    >

         <div class="info">
            <h3>Machiaj Nuntă</h3>
            
        </div>
    </div>

    <div class="box">
        <img src="images/machiaj/7.jpg"   alt="">
        <div class="info">
            <h3>Machiaj Nuntă</h3>
         </div>
    </div>

       <div class="box">
        <img src="images/machiaj/1.jpg"     >
        <div class="info">
            <h3>Machiaj Majorat</h3>
         </div>
    </div>
    <div class="box">
        <img src="images/machiaj/10.jpg"  style=" width:auto%;
                height:auto;"  >
        <div class="info">
            <h3>Machiaj Majorat</h3>
         </div>
    </div>
    <div class="box">
        <img src="images/machiaj/3.jpg"  style=" width:auto%;
                height:auto;"  >
        <div class="info">
            <h3>Machiaj Majorat</h3>
         </div>
    </div>
    <div class="box">
        <img src="images/machiaj/9.jpg"    >
        <div class="info">
            <h3>Machiaj Majorat</h3>
         </div>
    </div>
    <div class="box">
        <img src="images/machiaj/6.jpg"    >
        <div class="info">
            <h3>Machiaj Majorat</h3>
         </div>
    </div>
     <div class="box">
        <img src="images/machiaj/mk1.jpg"     >
        <div class="info">
            <h3>Machiaj Majorat</h3>
         </div>
    </div>
    <div class="box">
        <img src="images/machiaj/mk2.jpg"  style=" width:auto%;
                height:auto;"  >
        <div class="info">
            <h3>Machiaj Nuntă</h3>
         </div>
    </div>
    <div class="box">
        <img src="images/machiaj/mk3.jpg"  style=" width:auto%;
                height:auto;"  >
        <div class="info">
            <h3>Machiaj Seară</h3>
         </div>
    </div>
    <div class="box">
        <img src="images/machiaj/mk4.jpg"   style=" width:auto%;
                height:auto;" >
        <div class="info">
            <h3>Machiaj Nuntă</h3>
         </div>
    </div>
    <div class="box">
        <img src="images/machiaj/mk5.jpg" style=" width:auto%;
                height:auto;"   >
        <div class="info">
            <h3>Machiaj Nuntă</h3>
         </div>
    </div>
</div>

</section>

<!-- service section ends -->
     <h1 id="mani"></h1>
 <section class="start-today">
 	<div class="container">
 		 <div class="content">
 		 	  <div class="box text wow slideInLeft">
 		 	  	 <h2>Manichiura</h2>
 		 	  	 <p> Printre cele mai căutate modele sunt cele: holografice, french & abstracte.</p>
 		 	  	 <a class="btn" href="inregistrare.aspx" role="button" style="background-color: #625772" ><h3>Crează cont acum</h3></a>
                     <h1></h1>
  		 	  </div>
 		 	  <div class="box img wow slideInRight">
  		 	  </div>

 		 </div>
 	</div>
 </section>
<!-- End Start Today -->
     

    
 <!-- Start Service -->
 <section class="service" id="service">
 	<div class="container">
 		 <div class="content">
 		 	  <div class="text box wow slideInLeft">
                  <h2>Servicii</h2>
                 
<p>
Prețurile diferă în funcție de complexitatea & lungimea modelului dorit.
</p>
 		 	  </div>
 		 	  <div class="accordian box wow slideInRight" style="background-color:#5b496a">
 		 	  	    <div class="accordian-container active">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Manichiură Ojă Semi</h4>
 		 	  	    		<span class="fa fa-angle-down"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 100 RON </p> <br> <p>După aplicarea reducerii de client BC: 75 RON</p> <br> <p>Prestator: Negru Maria</p>
 		 	  	    	</div>
 		 	  	    </div>
 		 	  	    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Construcție Unghii Gel</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 250 RON </p> <br> <p>După aplicarea reducerii de client BC: 187,5 RON </p> <br> <p>Prestator: Bre Andra</p>
 		 	  	    	</div>
 		 	  	    </div>
 		 	  	    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Întreținere Unghii Gel</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 180 RON </p> <br> <p>După aplicarea reducerii de client BC: 135 RON </p> <br> <p>Prestator: Varvare Larisa</p>
 		 	  	    	</div>
 		 	  	    </div>
  		 	  </div>
 		 </div>
 	</div>
 </section>
 <!-- End Service -->

    
<section class="service2" id="service2">

 
<div class="box-container">

    <div class="box">
        <img  src="images/manichiura/1.jpg"   >
        <div class="info">
            <h3>Întreținere Gel</h3>
         </div>
    </div>

    <div class="box">
        <img  src="images/manichiura/10.jpg"  style=" width:auto%;
                height:auto;">
        <div class="info">
            <h3>Manichiură Semi</h3>
         </div>
    </div>

    <div class="box">
        <img  src="images/manichiura/15.jpg"  style=" width:auto%;
                height:auto;">
        <div class="info">
            <h3>Întreținere Gel</h3>
         </div>
    </div>

    <div class="box">
        <img  src="images/manichiura/12.jpg"   >
        <div class="info">
            <h3>Construcție Gel</h3>
         </div>
    </div>

    <div class="box">
        <img  src="images/manichiura/16.jpg"  >
        <div class="info">
            <h3>Manichiură Semi</h3>
         </div>
    </div>

    <div class="box">
        <img  src="images/manichiura/18.jpg"    >
        <div class="info">
            <h3>Întreținere Gel</h3>
         </div>
    </div>

    <div class="box">
        <img  src="images/manichiura/19.jpg"   >
        <div class="info">
            <h3>Întreținere Gel</h3>
         </div>
    </div>
    <div class="box">
        <img  src="images/manichiura/17.jpg"   >
        <div class="info">
            <h3>Construcție Gel</h3>
         </div>
    </div>
    <div class="box">
        <img  src="images/manichiura/2.jpg"   >
        <div class="info">
            <h3>Manichiură Semi</h3>
         </div>
    </div>
    <div class="box">
        <img  src="images/manichiura/21.jpg"   >
        <div class="info">
            <h3>Manichiură Semi</h3>
         </div>
    </div>
    <div class="box">
        <img  src="images/manichiura/22.jpg"   >
        <div class="info">
            <h3>Întreținere Gel</h3>
         </div>
    </div>
        <div class="box">
        <img  src="images/manichiura/23.jpg"   >
        <div class="info">
            <h3>Construcție Gel</h3>
         </div>
    </div>
        <div class="box">
        <img  src="images/manichiura/24.jpg"   >
        <div class="info">
            <h3>Manichiură Semi</h3>
         </div>
    </div>
        <div class="box">
        <img  src="images/manichiura/25.jpg"   >
        <div class="info">
            <h3>Întreținere Gel</h3>
         </div>
    </div>
        <div class="box">
        <img  src="images/manichiura/26.jpg"   >
        <div class="info">
            <h3>Manichiură Semi</h3>
         </div>
    </div>
        <div class="box">
        <img  src="images/manichiura/27.jpg"   >
        <div class="info">
            <h3>Întreținere Gel</h3>
         </div>
    </div>
        <div class="box">
        <img  src="images/manichiura/28.jpg"   >
        <div class="info">
            <h3> Manichiură Semi</h3>
         </div>
    </div>
        <div class="box">
        <img  src="images/manichiura/29.jpg"   >
        <div class="info">
            <h3>Construcție Gel</h3>
         </div>
    </div>
        <div class="box">
        <img  src="images/manichiura/3.jpg"   >
        <div class="info">
            <h3>Manichiură Semi</h3>
         </div>
    </div>




</div>

</section>

<!-- service section ends -->
    <!-- jquery -->


     <h1 id="pedi"></h1>
 <section class="start-today">
 	<div class="container">
 		 <div class="content">
 		 	  <div class="box text wow slideInLeft">
 		 	  	 <h2>Pedichiură</h2>
 		 	  	 <p> Printre cele mai căutate modele sunt cele: holografice & french.</p>
 		 	  	 <a class="btn" href="inregistrare.aspx" role="button" style="background-color: #625772" ><h3>Crează cont acum</h3></a>
                    <br />
                    <h1></h1>
                    <br />
 		 	  </div>
 		 	  <div class="box img wow slideInRight">
  		 	  </div>

 		 </div>
 	</div>
 </section>
<!-- End Start Today -->
 

    
 <!-- Start Service -->
<section class="service" id="service">
 	<div class="container">
 		 <div class="content">
 		 	  <div class="text box wow slideInLeft">
                  <h2>Servicii</h2>
                 
<p>
Prețurile de cele mai multe ori nu diferă de la un model la altul.
</p>
 		 	  </div>
 		 	  <div class="accordian box wow slideInRight" style="background-color:#5b496a">
 		 	  	    <div class="accordian-container active">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Pedichiură Simplă</h4>
 		 	  	    		<span class="fa fa-angle-down"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 50 RON </p> <br> <p>După aplicarea reducerii de client BC: 37,5 RON</p> <br> <p> Prestator: Iorga Elena</p>
 		 	  	    	</div>
 		 	  	    </div>
 		 	  	    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Întreținere Pedichiură</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 50 RON</p> <br> <p> După aplicarea reducerii de client BC: 37,5 RON </p> <br> <p>Prestator: Costas Viviana</p>
 		 	  	    	</div>
 		 	  	    </div>
   		 	  </div>
 		 </div>
 	</div>
 </section>
 <!-- End Service -->

    
<section class="service2" id="service2">

 
<div class="box-container">

    <div class="box">
        <img   src="images/pedi/pedi1.jpg"   >
        <div class="info">
            <h3>Întreținere</h3>
             
        </div>
    </div>

    <div class="box">
        <img src="images/pedi/pedi2.jpg" alt="">
        <div class="info">
            <h3>Pedichiură Simplă</h3>
         </div>
    </div>  
    <div class="box">
        <img  src="images/pedi/51361142660_0411eccc40_c.jpg"   alt="">
        <div class="info">
            <h3>Întreținere</h3>
         </div>
    </div>

    <div class="box">
        <img src="images/pedi/pedi3.jpg" alt="">
        <div class="info">
            <h3>Pedichiură Simplă</h3>
         </div>
    </div>

  
</div>

</section>


    <div id="cosm"></div>
       
  <section class="start-today">
 	<div class="container">
 		 <div class="content">
 		 	  <div class="box text wow slideInLeft">
 		 	  	 <h2>Cosmetică</h2>
 		 	  	 <p> Cele mai căutate servicii cosmetice sunt: scoatere puncte negre, masaj facial.</p>
 		 	  	 <a class="btn" href="inregistrare.aspx" role="button" style="background-color: #625772" ><h3>Crează cont acum</h3></a>
                    <br />
                    <h1></h1>
                    <br />
 		 	  </div>
 		 	  <div class="box img wow slideInRight">
  		 	  </div>

 		 </div>
 	</div>
 </section>

<!-- End Start Today -->
   

    
 <!-- Start Service -->
<section class="service" id="service">
 	<div class="container">
 		 <div class="content">
 		 	  <div class="text box wow slideInLeft">
                  <h2>Servicii</h2>
                 
<p>
Prețurile variază în funcție de serviciul selectat.</p>
 		 	  </div>
 		 	  <div class="accordian box wow slideInRight" style="background-color:#5b496a">
 		 	  	    <div class="accordian-container active">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Scos Puncte Negre</h4>
 		 	  	    		<span class="fa fa-angle-down"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 	100 RON </p> <br> <p>După aplicarea reducerii de client BC: 75 RON </p> <br> <p>Prestator: Negru Maria</p>
 		 	  	    	</div>
 		 	  	    </div>
 		 	  	    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Micropigmentare Sprâncene</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 150 RON </p> <br> <p>După aplicarea reducerii de client BC: 120 RON</p> <br> <p>Prestator: Ivănescu Irina</p>
 		 	  	    	</div>
 		 	  	    </div>
                    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Masaj Facial</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 100 RON</p> <br> <p> După aplicarea reducerii de client BC: 75 RON </p> <br> <p>Prestator: Matei Ionela</p>
 		 	  	    	</div>
 		 	  	    </div>

   		 	  </div>
 		 </div>
 	</div>
 </section> 
    <!-- End Service -->

    
<section class="service2" id="service2">

 
<div class="box-container">

    <div class="box">
        <img  src="images/cosm/cosm.jpg"  alt="">
        <div class="info">
            <h3>Masaj Facial</h3>
         </div>
    </div>

    <div class="box">
        <img   src="images/cosm/cosmmic.jpg"  alt="">
        <div class="info">
            <h3>Micropigmentare Sprâncene</h3>
         </div>
    </div>

    <div class="box">
        <img  src="images/cosm/cosmbk.jpg"   alt="">
        <div class="info">
            <h3>Scos Puncte Negre</h3>
         </div>
    </div>

    <div class="box">
        <img  src="images/cosm/cosmas.jpg" alt="">
        <div class="info">
            <h3>Masaj Facial</h3>
         </div>
    </div>

    <div class="box">
        <img   src="images/cosm/cosmmic1.jpg"   alt="">
        <div class="info">
            <h3>Micropigmentare Sprâncene</h3>
         </div>
    </div>

    <div class="box">
        <img   src="images/cosm/cosmbk1.jpg"  alt="">
        <div class="info">
            <h3>Scos Puncte Negre</h3>
         </div>
    </div>

</div>

</section>

<!-- service section ends -->


      <h1 id="coaf"> </h1>
<section class="start-today">
 	<div class="container">
 		 <div class="content">
 		 	  <div class="box text wow slideInLeft">
 		 	  	 <h2>Coafură</h2>
 		 	  	 <p> Printre cele mai căutate tehnici de vopsire a părului sunt: bayalage , ochi de tigru & ombre.</p>
 		 	  	 <a class="btn" href="inregistrare.aspx" role="button" style="background-color: #625772" ><h3>Crează cont acum </h3></a>
                    <br />
                    <h1></h1>
                    <br />
 		 	  </div>
 		 	  <div class="box img wow slideInRight">
  		 	  </div>

 		 </div>
 	</div>
 </section><!-- End Start Today -->
  
 <!-- Start Service -->
 <section class="service" id="service">
 	<div class="container">
 		 <div class="content">
 		 	  <div class="text box wow slideInLeft">
                  <h2>Servicii</h2>
                 
<p>
Prețurile diferă în funcție de lungimea podoabei capilare, densitatea firelor & tipul de păr.</p>
 		 	  </div>
 		 	  <div class="accordian box wow slideInRight" style="background-color:#5b496a">
 		 	  	    <div class="accordian-container active">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Vopsit + tehnică decolorare Păr Scurt</h4>
 		 	  	    		<span class="fa fa-angle-down"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 280 RON </p> <br> <p>După aplicarea reducerii de client BC: 210 RON </p> <br> <p>Prestator: 	Vera Veronica</p>
 		 	  	    	</div>
 		 	  	    </div>

                     		 	  	    <div class="accordian-container active">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Vopsit + tehnică decolorare Păr Mediu</h4>
 		 	  	    		<span class="fa fa-angle-down"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 300 RON </p> <br> <p>După aplicarea reducerii de client BC: 225 RON</p> <br> <p> Prestator: 	Vera Veronica</p>
 		 	  	    	</div>
 		 	  	    </div>
                     		 	  	    <div class="accordian-container active">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Vopsit + tehnică decolorare Păr Lung</h4>
 		 	  	    		<span class="fa fa-angle-down"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 330 RON</p> <br> <p> După aplicarea reducerii de client BC: 247,5 RON</p> <br> <p> Prestator: 	Vera Veronica</p>
 		 	  	    	</div>
 		 	  	    </div>

 		 	  	    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Barber</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 50 RON </p> <br> <p>După aplicarea reducerii de client BC: 37,5 RON </p> <br> <p>Prestator: Popa Ionut</p>
 		 	  	    	</div>
 		 	  	    </div>
                    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Vopsit Păr Scurt</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 100 RON </p> <br> <p>După aplicarea reducerii de client BC: 75 RON</p> <br> <p> Prestator: Gherhe Emilian</p>
 		 	  	    	</div>
 		 	  	    </div>
                                        <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Vopsit Păr Mediu</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 150  RON </p> <br> <p>După aplicarea reducerii de client BC: 120 RON </p> <br> <p>Prestator: Gherhe Emilian</p>
 		 	  	    	</div>
 		 	  	    </div>
                                   <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Vopsit Păr Lung</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 200 RON </p> <br> <p>După aplicarea reducerii de client BC: 150 RON </p> <br> <p>Prestator: Gherhe Emilian</p>
 		 	  	    	</div>
 		 	  	    </div>
                     		 	  	    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Coafat Păr Scurt</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 120 RON</p> <br> <p> După aplicarea reducerii de client BC: 90 RON </p> <br> <p>Prestator: Jones Jack</p>
 		 	  	    	</div>
 		 	  	    </div>

                                                            <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Coafat Păr Mediu</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 150 RON</p> <br> <p>După aplicarea reducerii de client BC: 120 RON</p> <br> <p> Prestator: Gherhe Emilian</p>
 		 	  	    	</div>
 		 	  	    </div>
                                        <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Coafat Păr Lung</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 180 RON </p> <br> <p> aplicarea reducerii de client BC: 135 RON </p> <br> <p>: Jones Jack</p>
 		 	  	    	</div>
 		 	  	    </div>



                                         		 	  	    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Tuns Păr Scurt</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 50 RON</p> <br> <p> După aplicarea reducerii de client BC: 37,5 RON </p> <br> <p>Prestator: Lombaro Joey</p>
 		 	  	    	</div>
 		 	  	    </div>
                    <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Tuns Păr Mediu</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 70 RON</p> <br> <p>După aplicarea reducerii de client BC: 52,5 RON </p> <br> <p>Prestator: Lombaro Joey</p>
 		 	  	    	</div>
 		 	  	    </div>
                                        <div class="accordian-container">
 		 	  	    	<div class="head">
 		 	  	    		<h4>Tuns Păr Lung</h4>
 		 	  	    		<span class="fa fa-angle-up"></span>
 		 	  	    	</div>
 		 	  	    	<div class="body">
 		 	  	    		<p>Preț inițial: 90 RON</p> <br> <p> După aplicarea reducerii de client BC: 67,5 RON </p> <br> <p>Prestator: Jones Jack</p>
 		 	  	    	</div>
 		 	  	    </div>

   		 	  </div>
 		 </div>
 	</div>
 </section> 

 <!-- End Service -->

    
<section class="service2" id="service2">

 
<div class="box-container">

    <div class="box">
        <img  src="images/vopsit/decolscurt.jpg"   alt="">
        <div class="info">
            <h3>Vopsit + Tehnică Decolorare Păr Scurt</h3>
         </div>
    </div>

    <div class="box">
        <img   src="images/vopsit/decolmed.jpg"  alt="">
        <div class="info">
            <h3>Vopsit + Tehnică Decolorare Păr Mediu</h3>
         </div>
    </div>

    <div class="box">
        <img src="images/vopsit/decollung.jpg"  style=" width:auto%;
                height:auto;">
        <div class="info">
            <h3>Vopsit + Tehnică Decolorare Păr Lung</h3>
         </div>
    </div>

    <div class="box">
        <img   src="images/tuns/barber.jpg"   alt="">
        <div class="info">
            <h3>Barber</h3>
         </div>
    </div>

    <div class="box">
        <img   src="images/vopsit/vopsitscurt.jpg"  style=" width:auto%;
                height:auto;"  >
        <div class="info">
            <h3>Vopsit Păr Scurt</h3>
         </div>
    </div>

    <div class="box">
        <img  src="images/vopsit/vopsited.jpg"  alt="">
        <div class="info">
            <h3>Vopsit Păr Mediu</h3>
         </div>
    </div>
    <div class="box">
        <img   src="images/vopsit/vopsitlung.jpg"    >
        <div class="info">
            <h3>Vopsit Păr Lung</h3>
         </div>
    </div><div class="box">
        <img  src="images/coaf/coafatscurt.jpg"   >
        <div class="info">
            <h3>Coafat Păr Scurt</h3>
         </div>
    </div><div class="box">
        <img   src="images/coaf/coafatmediu.jpg"   >
        <div class="info">
            <h3>Coafat Păr Mediu</h3>
         </div>
    </div><div class="box">
        <img  src="images/coaf/coafatlung.jpg"    >
        <div class="info">
            <h3>Coafat Păr Lung</h3>
         </div>
    </div><div class="box">
        <img   src="images/tuns/tunsscurt.jpg"   >
        <div class="info">
            <h3>Tuns Păr Scurt</h3>
         </div>
    </div><div class="box">
        <img   src="images/tuns/tunsmed.jpg" alt="">
        <div class="info">
            <h3>Tuns Păr Mediu</h3>
         </div>
    </div><div class="box">
        <img  src="images/tuns/tunslung.jpg"  alt="">
        <div class="info">
            <h3>Tuns Păr Lung</h3>
         </div>
    </div>
</div>

</section>



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
    <!-- jquery cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- custom js file link  -->
<script src="js/main3.js"></script>
<script src="js/wow.min.js"></script>
<script>
    wow = new WOW(
      {
        animateClass: 'animated',
        offset:       0,
      }
    );
    wow.init();


    $(document).ready(function () {

        $('#menu').click(function () {
            $(this).toggleClass('fa-times');
            $('.navbar').toggleClass('nav-toggle');
        });

        $(window).on('scroll load', function () {

            $('#menu').removeClass('fa-times');
            $('.navbar').removeClass('nav-toggle');

            if ($(window).scrollTop() > 60) {
                $('header').addClass('header-active');
            } else {
                $('header').removeClass('header-active');
            }

            $('section').each(function () {

                let top = $(window).scrollTop();
                let height = $(this).height();
                let offset = $(this).offset().top - 200;
                let id = $(this).attr('id');

                if (top >= offset && top < offset + height) {
                    $('.navbar ul li a').removeClass('active');
                    $('.navbar').find(`[href="#${id}"]`).addClass('active');
                }

            });

        });

    })
</script>

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
