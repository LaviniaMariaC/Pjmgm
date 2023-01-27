<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Abonamente.aspx.cs" Inherits="Licenta2.Abonamente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Abonamente</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

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
    background:var(--green);
    color:#fff;
}
    html{
    font-size: 62.5%;
    overflow-x: hidden;
}


.btn{
    cursor: pointer;
    border:.2rem solid var(--green);
    color:var(--green);
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
    background:var(--green);
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
      background: url(../images/pnoua3.jpg);
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
    background:var(--green);
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
    color:var(--green);
    padding:0 .5rem;
}

.plan .box-container .box .btn{
    margin-bottom: 3rem;
}
    </style>
 
<body>
    <form id="form1" runat="server">
       <div>

             <div class=" navbar navbar-default navbar-fixed-top" role="navigation">
               <div class="container">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>           
                </div>
                   <div class="navbar-collapse collapse">
                      <ul class="nav navbar-nav   navbar-left">
                           <a class="navbar-brand" href="Acasa.aspx"><img class="img-circle" alt="Logo" src="images/fitness.jpeg" height="70"</a>
                           <li ><a class="icon-bar" href="Despre.aspx"><img  src height="60"</a></></li>
                          <li ><a class="icon-bar" href="Despre.aspx"><img  src height="60"</a>Despre noi</></li>
                            <li ><a class="icon-bar" href="Antrenori.aspx"><img src height="60"</a>Antrenori</></li>
                            <li ><a class="icon-bar" href="Alimentatie.aspx"><img src height="60"</a>Alimentație</></li>
                            <li ><a class="icon-bar" href="Dece.aspx"><img src height="60"</a>De ce să ni te alături?</></li>
                              <li ><a class="icon-bar" href="Abonamente.aspx"><img src height="60"</a>Abonamente</></li>
                            <li ><a class="icon-bar" href="Contact.aspx"><img src height="60"</a>Contact</></li>
                      </ul>
                      <ul class="nav navbar-nav navbar-right">
                           <li ><a class="icon-bar" href="Inregistrare.aspx"><img alt="Logo" src="images/registrare.png" height="30"</a>Înregistrare</li>
                           <li ><a class="icon-bar" href="Autentificare.aspx"><img alt="Logo" src="images/Autentificare.png" height="30"</a>Autentificare</li>
                           <li ><a class="icon-bar" href="#"></li >    
                      </ul>
                     </div>
                 </div>
           </div>

        </div>
       
    </form>

    
<!-- plan section starts  -->
    <section class="plan" id="plan">

        <br />
        <br />
        <br />

<div class="box-container">

    <div class="box">
        <h3 class="title">Basic</h3>
        <h3 class="price">299 Lei<span>/3 luni</span></h3>
        <h3 class="month">3 luni</h3>
        <ul>
            <li><i class="fas fa-check"></i>Fitness</li>
            <li><i class="fas fa-check"></i>Cycling</li>
            <li><i class="fas fa-check"></i>Yoga</li>
            <li><i class="fas fa-check"></i>Clase</li>
            <li><i class="fas fa-check"></i>Plan alimentar personalizat</li>
        </ul>
         <a class="btn" href="Inregistrare.aspx" role="button">Înscrie-te acum</button></a>
    </div>

    <div class="box">
        <h3 class="title">Standard</h3>
        <h3 class="price">499 Lei<span>/6 luni</span></h3>
        <h3 class="month">6 luni</h3>
        <ul>
            <li><i class="fas fa-check"></i>Fitness</li>
            <li><i class="fas fa-check"></i>Cycling</li>
            <li><i class="fas fa-check"></i>Yoga</li>
            <li><i class="fas fa-check"></i>Clase</li>
            <li><i class="fas fa-check"></i>Plan alimentar personalizat</li>
        </ul>
          <a class="btn" href="Inregistrare.aspx" role="button">Înscrie-te acum</button></a>
    </div>

    <div class="box">
        <h3 class="title">Premium</h3>
        <h3 class="price">799 Lei<span>/12 luni</span></h3>
        <h3 class="month">12 luni</h3>
        <ul>
             <li><i class="fas fa-check"></i>Fitness</li>
            <li><i class="fas fa-check"></i>Cycling</li>
            <li><i class="fas fa-check"></i>Yoga</li>
            <li><i class="fas fa-check"></i>Clase</li>
            <li><i class="fas fa-check"></i>Plan alimentar personalizat</li>
        </ul>
         <a class="btn" href="Inregistrare.aspx" role="button">Înscrie-te acum</button></a>
    </div>

</div>

</section>


<section class="plan" id="plan">


<div class="box-container">

    <div class="box">
        <h3 class="title">Cycling- Antrenor <br /> Ionescu</h3>
        <h3 class="price">99 Lei<span>/lună</span></h3>
        <h3 class="month">1 lună</h3>
        <ul>
            <li><i class="fas fa-check"></i><b>Cycling</b></li>
            <li><i class="fas fa-check"></i>Este permisă intrarea o dată pe zi.</li>
            
        </ul>
      
          <a class="btn" href="Inregistrare.aspx" role="button">Înscrie-te acum</button></a>
    </div>

    <div class="box">
        <h3 class="title">Yoga- Antrenor <br /> Trotea<br /></h3>
        <h3 class="price">79 Lei<span>/lună</span></h3>
        <h3 class="month">1 lună</h3>
        <ul>
            <li><i class="fas fa-check"></i><b>Yoga</b></li>
            <li><i class="fas fa-check"></i>Este permisă intrarea o dată pe zi.</li>
        </ul>
        
       <a class="btn" href="Inregistrare.aspx" role="button">Înscrie-te acum</button></a>
    </div>

    <div class="box">
        <h3 class="title">Kangoo Jumps- Antrenor Stăniloiu</h3>
        <h3 class="price">119 Lei<span>/lună</span></h3>
        <h3 class="month">1 lună</h3>
        <ul>
            <li><i class="fas fa-check"></i><b>Kangoo Jumps</b></li>
            <li><i class="fas fa-check"></i>Este permisă intrarea o dată pe zi.</li>
        </ul>
          <a class="btn" href="Inregistrare.aspx" role="button">Înscrie-te acum</button></a>
    </div>

</div>

</section>

    
<section class="plan" id="plan">


<div class="box-container">

    <div class="box">
        <h3 class="title">Box- Antrenor <br /> Vlad</h3>
        <h3 class="price">149 Lei<span>/lună</span></h3>
        <h3 class="month">1 lună</h3>
        <ul>
            <li><i class="fas fa-check"></i><b>Box</b></li>
            <li><i class="fas fa-check"></i>Este permisă intrarea o dată pe zi.</li>
            
        </ul>
       
          <a class="btn" href="Inregistrare.aspx" role="button">Înscrie-te acum</button></a>
    </div>

    <div class="box">
        <h3 class="title">Fitness- Antrenor  <br /> Roșca</h3>
        <h3 class="price">129 Lei<span>/lună</span></h3>
        <h3 class="month">1 lună</h3>
        <ul>
            <li><i class="fas fa-check"></i><b>Fitness</b></li>
            <li><i class="fas fa-check"></i>Este permisă intrarea o dată pe zi.</li>
        </ul>
        
       <a class="btn" href="Inregistrare.aspx" role="button">Înscrie-te acum</button></a>
    </div>

    <div class="box">
        <h3 class="title">Zumba- Antrenor Popescu</h3>
        <h3 class="price">89 Lei<span>/lună</span></h3>
        <h3 class="month">1 lună</h3>
        <ul>
            <li><i class="fas fa-check"></i><b>Zumba</b></li>
            <li><i class="fas fa-check"></i>Este permisă intrarea o dată pe zi.</li>
        </ul>
          <a class="btn" href="Inregistrare.aspx" role="button">Înscrie-te acum</button></a>
    </div>

</div>

</section>

  


<!-- plan section ends -->
  
    <!-- jquery cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- custom js file link  -->
<script src="js/main.js"></script>

</body>
</html>
