<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inregistrare.aspx.cs" Inherits="Licenta2.Inregistrare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
         <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Înregistrare</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     <style>
    /* input[type="password"] {
  color: transparent;
} */



/*//////////////////////////////////////////////////////////////////
[ FONT ]*/
 @import url('https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap');
@import url('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
@import url('https://fonts.googleapis.com/css?family=Open+Sans&display=swap');

@font-face {
  font-family: Poppins-Regular;
  src: url('../fonts/poppins/Poppins-Regular.ttf'); 
}

@font-face {
  font-family: Poppins-Medium;
  src: url('../fonts/poppins/Poppins-Medium.ttf'); 
}

@font-face {
  font-family: Poppins-Bold;
  src: url('../fonts/poppins/Poppins-Bold.ttf'); 
}

@font-face {
  font-family: Poppins-SemiBold;
  src: url('../fonts/poppins/Poppins-SemiBold.ttf'); 
}

/*//////////////////////////////////////////////////////////////////
[ RESTYLE TAG ]*/

* {
	margin: 0px; 
	padding: 0px; 
	box-sizing: border-box;
}

body, html {
	height: 100%;
	font-family: 'Roboto Mono', monospace;
}

/*---------------------------------------------*/
a {
	font-family: 'Roboto Mono', monospace;
	font-size: 14px;
	line-height: 1.7;
	color: #666666;
	margin: 0px;
	transition: all 0.4s;
	-webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
}

a:focus {
	outline: none !important;
}

a:hover {
	text-decoration: none;
  color: #8a2be2;
}
.btn-success {
    color: #fff;
    background-color: #8a2be2;
    border-color: #5f427a;
}
/*---------------------------------------------*/
h1,h2,h3,h4,h5,h6 {
	margin: 0px;
}

p {
	font-family: Poppins-Regular;
	font-size: 14px;
	line-height: 1.7;
	color: #666666;
	margin: 0px;
}

ul, li {
	margin: 0px;
	list-style-type: none;
}


/*---------------------------------------------*/
input {
	outline: none;
	border: none;
}

input[type="number"] {
    -moz-appearance: textfield;
    appearance: none;
    -webkit-appearance: none;
}

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
}

textarea {
  outline: none;
  border: none;
}

textarea:focus, input:focus {
  border-color: transparent !important;
}

input:focus::-webkit-input-placeholder { color:transparent; }
input:focus:-moz-placeholder { color:transparent; }
input:focus::-moz-placeholder { color:transparent; }
input:focus:-ms-input-placeholder { color:transparent; }

textarea:focus::-webkit-input-placeholder { color:transparent; }
textarea:focus:-moz-placeholder { color:transparent; }
textarea:focus::-moz-placeholder { color:transparent; }
textarea:focus:-ms-input-placeholder { color:transparent; }

input::-webkit-input-placeholder {color: #999999;}
input:-moz-placeholder {color: #999999;}
input::-moz-placeholder {color: #999999;}
input:-ms-input-placeholder {color: #999999;}

textarea::-webkit-input-placeholder {color: #999999;}
textarea:-moz-placeholder {color: #999999;}
textarea::-moz-placeholder {color: #999999;}
textarea:-ms-input-placeholder {color: #999999;}

label {
  display: block;
  margin: 0;
}

/*---------------------------------------------*/
button {
	outline: none !important;
	border: none;
	background: transparent;
}

button:hover {
	cursor: pointer;
}

iframe {
	border: none !important;
}


/*//////////////////////////////////////////////////////////////////
[ Utility ]*/
.txt1 {
  font-family: Poppins-Regular;
  font-size: 13px;
  line-height: 1.4;
  color: #999999;
}

/*//////////////////////////////////////////////////////////////////
[ login ]*/

.limiter {
  width: 100%;
  margin: 0 auto;
}

.container-login100 {
  width: 100%;  
  min-height: 100vh;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 25px;
  background: #ebeeef;
}


.wrap-login100 {
  width: 1000px;
  background: #fff;
  border-radius: 10px;
  overflow: hidden;
  position: relative;
}

/*==================================================================
[ Title form ]*/
.login100-form-title {
  width: 100%;
  position: relative;
  z-index: 1;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
  align-items: center;

  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;

  padding: 100px 20px 74px 15px;
}

.login100-form-title-1 {
  font-family: Poppins-Bold;
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  line-height: 1.2;
  text-align: center;
}

.login100-form-title::before {
  content: "";
  display: block;
  position: absolute;
  z-index: -1;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
    filter: brightness(60%);
  background:linear-gradient(rgba(255,255,255,0.5), rgba(255,255,255,0.5)), url(images/purple-gradient-desktop-wallpaper.png);
   
}


/*==================================================================
[ Form ]*/

.login100-form {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  padding: 43px 88px 93px 190px;
}


/*------------------------------------------------------------------
[ Input ]*/

.wrap-input100 {
  width: 100%;
  position: relative;
  border-bottom: 1px solid #b2b2b2;
}

.label-input100 {
  font-family: Poppins-Regular;
  font-size: 15px;
  color: #808080;
  line-height: 1.2;
  text-align: right;

  position: absolute;
  top: 14px;
  left: -105px;
  width: 80px;

}

/*---------------------------------------------*/
.input100 {
  font-family: Poppins-Regular;
  font-size: 15px;
  color: #555555;
  line-height: 1.2;

  display: block;
  width: 100%;
  background: transparent;
  padding: 0 5px;
}

.focus-input100 {
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  pointer-events: none;
}

.focus-input100::before {
  content: "";
  display: block;
  position: absolute;
  bottom: -1px;
  left: 0;
  width: 0;
  height: 1px;

  -webkit-transition: all 0.6s;
  -o-transition: all 0.6s;
  -moz-transition: all 0.6s;
  transition: all 0.6s;

  background: #57b846;
}


/*---------------------------------------------*/
input.input100 {
  height: 45px;
}


.input100:focus + .focus-input100::before {
  width: 100%;
}

.has-val.input100 + .focus-input100::before {
  width: 100%;
}

/*==================================================================
[ Restyle Checkbox ]*/

.input-checkbox100 {
  display: none;
}

.label-checkbox100 {
  font-family: Poppins-Regular;
  font-size: 13px;
  color: #999999;
  line-height: 1.4;

  display: block;
  position: relative;
  padding-left: 26px;
  cursor: pointer;
}

.label-checkbox100::before {
  content: "\f00c";
  font-family: FontAwesome;
  font-size: 13px;
  color: transparent;

  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  width: 18px;
  height: 18px;
  border-radius: 2px;
  background: #fff;
  border: 1px solid #e6e6e6;
  left: 0;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
}

.input-checkbox100:checked + .label-checkbox100::before {
  color: #57b846;
}

/*------------------------------------------------------------------
[ Button ]*/
.container-login100-form-btn {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
}

.login100-form-btn {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;
  min-width: 160px;
  height: 50px;
  background-color: #57b846;
  border-radius: 25px;

  font-family: Poppins-Regular;
  font-size: 16px;
  color: #fff;
  line-height: 1.2;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.login100-form-btn:hover {
  background-color: #333333;
}


/*------------------------------------------------------------------
[ Responsive ]*/

@media (max-width: 576px) {
  .login100-form {
    padding: 43px 15px 57px 117px;
  }
}

@media (max-width: 480px) {
  .login100-form {
    padding: 43px 15px 57px 15px;
  }

  .label-input100 {
    text-align: left;
    position: unset;
    top: unset;
    left: unset;
    width: 100%;
    padding: 0 5px;
  }
}


/*------------------------------------------------------------------
[ Alert validate ]*/

.validate-input {
  position: relative;
}

.alert-validate::before {
  content: attr(data-validate);
  position: absolute;
  max-width: 70%;
  background-color: #fff;
  border: 1px solid #c80000;
  border-radius: 2px;
  padding: 4px 25px 4px 10px;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  right: 2px;
  pointer-events: none;

  font-family: Poppins-Medium;
  color: #8a2be2;
  font-size: 13px;
  line-height: 1.4;
  text-align: left;

  visibility: hidden;
  opacity: 0;

  -webkit-transition: opacity 0.4s;
  -o-transition: opacity 0.4s;
  -moz-transition: opacity 0.4s;
  transition: opacity 0.4s;
}

.alert-validate::after {
  content: "\f06a";
  font-family: FontAwesome;
  display: block;
  position: absolute;
  color: #8a2be2;
  font-size: 15px;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  right: 8px;
}

.alert-validate:hover:before {
  visibility: visible;
  opacity: 1;
}

@media (max-width: 992px) {
  .alert-validate::before {
    visibility: visible;
    opacity: 1;
  }
}


.contact{
	padding:80px 0px;
	background-color: #222222;
}

.contact .content{
	-webkit-display: flex;
	display: flex;
}

.contact .content .box{
	flex:0 0 50%;
	max-width: 50%;
	padding: 15px;
}

.contact .content .form input,
.contact .content .form textarea{
 height: 45px;
 width: 100%;
 padding:6px 12px;
 margin-bottom: 25px;
 background-color: transparent;
 border:1px solid #ffffff;
 font-family: 'Open-sans',sans-serif;
 color:#ffffff;
}
.contact .content .form input:focus,
.contact .content .form textarea:focus{
 outline: none;
}
.contact .content .form input::placeholder,
.contact .content .form textarea::placeholder{
	color:#ffffff;
}
.contact .content .form textarea{
	height: 100px;
}

.contact .content .form button{
	border:none;
	outline: none;
	box-shadow: none;
	height: 45px;
	padding:0px 50px;
	border:1px solid transparent;
	background-color: #8a2be2;
	color:#ffffff;
	font-size: 15px;
	transition: all .5s ease;
	cursor: pointer;
}
.contact .content .form button:hover{
	background-color:transparent;
	color:#ffffff; 
    border-color:#ffffff;
}

.contact .content .text h2{
	font-size: 30px;
    font-weight: 500;
    color: #8a2be2;
    padding: 0px 0px 20px;
}
.contact .content .text p{
    font-size: 15px;
    line-height: 20px;
    color: #ffffff;
    margin: 0;
    padding: 0px 0px 30px;
    font-family: 'Open-sans', sans-serif;
}

.contact .content .text .info ul{
	list-style: none;
	padding:0;
	margin:0;
}

.contact .content .text .info li{
	display: block;
	margin-bottom: 15px;
	color:#ffffff;
	font-size: 15px;
	letter-spacing: 1px;
	position: relative;
	padding-left: 40px;
	font-family: 'Open-Sans',sans-serif;
}
.contact .content .text .info li span{
	display: inline-block;
	position: absolute;
	left:0px;
	top:0px;
	font-size: 20px;
	color:#8a2be2;
}
.contact .content .text .social {
	padding-top: 30px;
}
.contact .content .text .social a{
	height: 40px;
	width: 40px;
	line-height: 40px;
	text-align: center;
	background-color: #8a2be2;
    text-decoration: none;	
    display: inline-block;
    margin-right: 10px;
    transition: all .5s ease;
    border:1px solid transparent;
} 

.contact .content .text .social a:hover{
	background-color: transparent;
    border-color: #ffffff;
}

.contact .content .text .social a span{
	color:#ffffff;
	font-size: 20px;
}

.contact .content .text .copy{
	border-top:1px solid #333333;
	margin-top: 30px;
	padding-top: 20px;
	color:#c5c5c5;
	font-size: 15px;
}
        </style>
</head>

    <form id="form1" runat="server">
         <div>
    <link href="css/Acasa.css" rel="stylesheet"/>
          <link href="css/Sfaturi.css" rel="stylesheet"/>
                      <link href="css/navbar.css" rel="stylesheet"/>
               
              
                       <ul class="topnav">
<li><a href="index.aspx"><img class="img-circle" alt="Logo" src="images/logo.jpg"   height="50" /> </a></li>                         
                      
  <li><a   href="Acasa.aspx"><h3>Acasă</h3></a></li>
  <li><a  href="Produse.aspx"><h3>Catalog</h3></a></li>
  <li><a href="Asistenti.aspx"><h3>Asistenți & Sfaturi</h3></a></li>
      <li><a  href=Contact.aspx><h3>Contact</h3></a></li>
                           <li class="right"><a class="active" href="Inregistrare.aspx"><h3>Înregistrare</h3></a></li>
    <li class="right"><a   href="Autentificare.aspx"><h3>Autentificare</h3></a></li>
                      </ul>
                           
                 
              </div>
        
      <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/aut.jpg);">
					<span class="login100-form-title-1">
						Înregistrare
					</span>
				</div>
                <br />

				<form class="login100-form validate-form">
					<div class="form-group">
   <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Nume utilizator"></asp:Label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtNume" CssClass="form-control" placeholder="Nume utilizator" runat="server"></asp:TextBox>
                        </div>
</div>
                    <br />
          					<div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Parola"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtParola" CssClass="form-control" placeholder="Parola" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                </div>
                    <br />

                    <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Confirma parola"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtCparola" CssClass="form-control" placeholder="Confirma parola" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                </div>
                    <br />

                    <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Numar de telefon"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtNr" CssClass="form-control" placeholder="Numar de telefon" runat="server"></asp:TextBox>
                    </div>
                </div>
                    <br />

                    <div class="form-group">
                    <asp:Label ID="Label14" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Email"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                    </div>
                </div>
                    <br />

                    <div class="form-group" hidden="hidden">
                   <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Tip utilizator"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddltip" CssClass="form-control" runat="server">
                            <asp:ListItem>Client</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                    <br />

                  


               <center><div class="form-group">
                    <div class="col-md-2 "></div>
                    <div class="col-md-6">
<asp:Button ID="btnAdd" runat="server" Class="btn btn-success" Text="Adăugare" Height="35px" OnClick="btnAdd_Click"  />
                        <asp:Button ID="Butverif" runat="server" Class="btn btn-success" Text="Verificare disponibilitate" Height="35px" OnClick="btnverif_Click"  />

                        <asp:Label ID="lblcnpAdd" runat="server"></asp:Label>                      </div>
                </div>
                  </center>  
				</form>
			</div>
		</div>
	</div>
            <footer>

            <link href="css/footer.css" rel="stylesheet"/>

	
     <div class="footer-dark">
        
            <div class="container" style="background-color:black">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3 style="color:white">Beauty Concept     <ul>
                          

                             <li><a   href="Acasa.aspx">Acasă</a></li>
  <li><a   href="Produse.aspx">Catalog</a></li>
  <li><a href="Asistenti.aspx">Sfaturi</a></li>
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
            </div>
        </footer>
              
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
