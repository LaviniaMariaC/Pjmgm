<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pachete.aspx.cs" Inherits="Licenta2.pachete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Pachete</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap');

:root{
    --green:#419004;
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
    background:#625772;
    color:#fff;
}
    html{
    font-size: 62.5%;
    overflow-x: hidden;
}


.btn{
    cursor: pointer;
    border:.2rem solid #625772;
    color:#625772;
    background:none;
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
    background:#625772;
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

.plan{
    min-height: 80vh;
    text-align: center;
    background:#eee;
   background-image:src(im);
  background-size: cover;
  background-position: center;
  background-attachment: fixed;
  background-blend-mode: multiply;
}

.plan .box-container{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
}

.plan .box-container .box{
    background:#fff;
    margin:2rem;
    width:30rem;
    box-shadow: 0 .3rem .5rem rgba(0,0,0,.3);
}

.plan .box-container .box:hover{
    transform: scale(1.04);
}

.plan .box-container .box .title{
    font-size: 2.5rem;
    background:#625772;
    color:#fff;
    padding:1rem 0;
}

.plan .box-container .box .price{
    font-size: 4rem;
    color:#333;
    padding-top:1rem;
}

.plan .box-container .box .price span{
    font-size: 2rem;
}

.plan .box-container .box .month{
    font-size: 2rem;
    color:#666;
}

.plan .box-container .box ul{
    margin:2rem 8rem;
    list-style: none;
}

.plan .box-container .box ul li{
    text-align: left;
    padding:.5rem 0;
    font-size: 1.5rem;
    color:#333;
}

.plan .box-container .box ul li i{
    color:#625772;
    padding:0 .5rem;
}

.plan .box-container .box .btn{
    margin-bottom: 3rem;
}
    </style>

<body>
    <form id="form1" runat="server">
      <div>
    <link href="css/Acasa.css" rel="stylesheet"/>
          <link href="css/Sfaturi.css" rel="stylesheet"/>
                      <link href="css/navbar.css" rel="stylesheet"/>
               
              
                       <ul class="topnav">
   <li><a href=" "><img class="img-circle" alt="Logo" src="images/logo.jpg" height="50" /> </a></li>
    
  <li><a class="active"  href="meniucl.aspx" style="  font-family: 'Roboto Mono', monospace;
    font-size: 1.25rem;
    font-weight: 800;
    line-height: 2;"><h3>Meniu Client</h3></a></li>
    </ul>
                    
                           
                 
              </div>
       
    
<!-- pachete section starts  -->
    <div class="container">
    <section class="plan" id="plan">

        <br />
        <asp:Label ID="Label1" runat="server" Text="Email "></asp:Label>
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Pentru a vă prioritiza programarea unul dintre angajații noștrii vă va contacta cât de curând!"></asp:Label>
        <br />

        <asp:Label ID="lbldataP" runat="server" Text="Label"></asp:Label>

<div class="box-container">

    <div class="box">
        <h3 class="title">Simplu-Păr Scurt</h3>
        <h3 class="price">799,99 Lei<span>/3 luni</span></h3>
        <h3 class="month">266,33 Lei / lună</h3>
        <ul>
            <li><i class="fas fa-check"></i>Spălat</li>
            <li><i class="fas fa-check"></i>Tuns</li>
            <li><i class="fas fa-check"></i>Vopsit</li>
            <li><i class="fas fa-check"></i>Coafat</li>
            <li><i class="fas fa-check"></i>Prioritate programare.</li>
             <li><i class="fas fa-check"></i>Posibilitatea anulării oricând a pachetului.</li>
        </ul>
         <a class="btn" href="addpachet.aspx" role="button">
        <asp:Button ID="btnparsc" runat="server" OnClick="Button1_Click" Text="Alege acum" />
        </a>
    &nbsp;</div>

    <div class="box">
        <h3 class="title">Simplu-Păr Mediu</h3>
        <h3 class="price">969,99 Lei<span>/3 luni</span></h3>
        <h3 class="month">323,33/ lună</h3>
        <ul>
            <li><i class="fas fa-check"></i>Spălat</li>
            <li><i class="fas fa-check"></i>Tuns</li>
            <li><i class="fas fa-check"></i>Vopsit</li>
            <li><i class="fas fa-check"></i>Coafat</li>
            <li><i class="fas fa-check"></i>Prioritate programare.</li>
                 <li><i class="fas fa-check"></i>Posibilitatea anulării oricând a pachetului.</li>
    </ul>
          <a class="btn" href="addpachet.aspx" role="button">
        <asp:Button ID="btnparmed" runat="server" Text="Alege acum" OnClick="btnparmed_Click" />
        </a>
    &nbsp;</div>

    <div class="box">
        <h3 class="title">Simplu-Păr Lung</h3>
        <h3 class="price">1.449,99 Lei<span>/3 luni</span></h3>
        <h3 class="month">483,33/ lună</h3>
        <ul>
           <li><i class="fas fa-check"></i>Spălat</li>
            <li><i class="fas fa-check"></i>Tuns</li>
            <li><i class="fas fa-check"></i>Vopsit</li>
            <li><i class="fas fa-check"></i>Coafat</li>
            <li><i class="fas fa-check"></i>Prioritate programare.</li>
                <li><i class="fas fa-check"></i>Posibilitatea anulării oricând a pachetului.</li>
     </ul>
         <a class="btn" href="addpachet.aspx" role="button">
        <asp:Button ID="btnplung" runat="server" Text="Alege acum" OnClick="btnplung_Click" />
        </a>
    &nbsp;</div>

</div>

</section>


<section class="plan" id="plan">


<div class="box-container">

    <div class="box">
        <h3 class="title">1+1 <br /> Hai cu o prietenă/un prieten</h3>
        <h3 class="price"> <span></span></h3><br />
        <h3 class="month">Alege orice serviciu din categoria cosmetică împreună cu cineva la preț de 1</h3>
        <ul><br /></br></br> 
             <li><i class="fas fa-check"></i>Prioritate programare.</li>
            
        </ul>
      
          <a class="btn" href="addpachet.aspx" role="button">
        <asp:Button ID="btnhaicupr" runat="server" Text="Alege acum" OnClick="btnhaicupr_Click" />
        </a>
    &nbsp;</div>

    <div class="box">
        <h3 class="title">Mani+pedi <br /> 2 la preț de 1 <br /><br /></h3>
        <h3 class="price">300 Lei<span>/lună</span></h3>
        <h3 class="month">Valabil 2 luni</h3>
        <ul>
            <li><i class="fas fa-check"></i><b>Valabil la orice model de manichiură/ pedichiură.</b></li>
                     <li><i class="fas fa-check"></i>Prioritate programare.</li>
 </ul>
        
       <a class="btn" href="addpachet.aspx" role="button">
        <asp:Button ID="btnmanipedi" runat="server" Text="Alege acum" OnClick="btnmanipedi_Click" />
        </a>
    &nbsp;</div>

  

</div>

</section>

    
 

  </div>


    </form>

    
<!-- pachete section ends -->
  
    <!-- jquery cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- custom js file link  -->
<script src="js/main.js"></script>

</body>
</html>
