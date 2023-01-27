﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="meniucl.aspx.cs" Inherits="Licenta2.meniucl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
      body {
  font-family: "Open Sans", sans-serif;
  color: #444444;
}

a {
  color: #34b7a7;
  text-decoration: none;
}

a:hover {
  color: #51cdbe;
  text-decoration: none;
}

h1, h2, h3, h4, h5, h6 {
  font-family: "Raleway", sans-serif;
}

#main {
  margin-top: 50px;
}

@media (max-width: 992px) {
  #main {
    margin-top: 30px;
  }
}

#hero {
 min-height: 100vh;
    text-align: center;
      background: url(../images/home1.png), linear-gradient(#c7c5c5, #c7c5c5) no-repeat;

  background-size: cover;
  background-position: center;
  background-attachment: fixed;
  background-blend-mode: multiply;
}

#hero .container {
  padding-top: 70px;
  position: relative;
}

@media (max-width: 992px) {
  #hero .container {
    padding-top: 58px;
  }
}

#hero h1 {
  margin: 0;
  font-size: 48px;
  font-weight: 700;
  line-height: 56px;
  color: #222222;
}

#hero h2 {
  color: #6f6f6f;
  margin: 10px 0 0 0;
  font-size: 22px;
}

#hero .btn-about {
  font-family: "Raleway", sans-serif;
  text-transform: uppercase;
  font-weight: 600;
  font-size: 12px;
  letter-spacing: 1px;
  display: inline-block;
  padding: 12px 40px;
  border-radius: 50px;
  transition: 0.5s;
  margin-top: 30px;
  color: #fff;
  background: #625772;
}

#hero .btn-about:hover {
  background: #c7c5c5;
}

@media (min-width: 1024px) {
  #hero {
    background-attachment: fixed;
  }
}

@media (max-width: 992px) {
  #hero:before {
    content: "";
    background: rgba(255, 255, 255, 0.8);
    position: absolute;
    bottom: 0;
    top: 0;
    left: 0;
    right: 0;
  }
  #hero h1 {
    font-size: 28px;
    line-height: 36px;
  }
  #hero h2 {
    font-size: 18px;
    line-height: 24px;
  }
}
    </style>
 
 <center><section id="hero" class="d-flex align-items-center"  >
    <div class="container d-flex flex-column align-items-center" data-aos="zoom-in" data-aos-delay="100">
    
        <h1 style="background-color:aliceblue">Bine ai revenit!</h1><br />
                                <a href="Acasalog.aspx" class="btn-about">Acasă </a> <br />
                                        <a href="Produselog.aspx" class="btn-about">Catalog </a> <br />

        <a href="contactlog.aspx" class="btn-about">Contact</a> <br />
               <a href="client.aspx" class="btn-about">Programează-te</a> <br />
		<a href="Asistentilog.aspx" class="btn-about">Asistenți & Sfaturi</a> <br />

                <a href="pachete.aspx" class="btn-about">Pachete Clienți luna August</a> <br />
        <a href="index.aspx" class="btn-about">Ieși din cont</a><br />
 
    </div>
  </section></center>
    
</asp:Content>
