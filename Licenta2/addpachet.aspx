<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addpachet.aspx.cs" Inherits="Licenta2.addpachet" %>

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


        </div>
       
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


 

        

      <div >
   

     
 
     
          <div class="form-group">
              <style="  font-family: 'Roboto Mono', monospace;
    font-size: 1.25rem;
    font-weight: 800;
    line-height: 2;"/>
           &nbsp;<asp:Label ID="Label2" runat="server" Text="Email: " Height="30px" Width="278px"></asp:Label>
&nbsp;<div class="col-md-3">
           <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="278px"></asp:TextBox>
          </div></div>
          <br />
           <br /><div>
           <asp:Label ID="Label1" runat="server" Text="Alege Pachet" Height="30px" Width="110px"></asp:Label>
&nbsp;
           <br />
           &nbsp;&nbsp;&nbsp;
           <asp:DropDownList ID="droppachet" runat="server" Height="45px" Width="279px" OnSelectedIndexChanged="droppachet_SelectedIndexChanged">
               <asp:ListItem>-</asp:ListItem>
               <asp:ListItem>Simplu-Păr Scurt</asp:ListItem>
               <asp:ListItem>Simplu-Păr Mediu</asp:ListItem>
               <asp:ListItem>Simplu-Păr Lung</asp:ListItem>
               <asp:ListItem>1+1</asp:ListItem>
               <asp:ListItem>Mani+pedi</asp:ListItem>
           </asp:DropDownList>
           <br /></div>
           <br />
&nbsp;&nbsp;
           &nbsp;&nbsp;
           <br />
           <br />
           <asp:Button ID="Button1" runat="server" Text="Adaugă pachet" OnClick="Button1_Click" />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Label ID="lblrez" runat="server" Text="Label"></asp:Label>
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
   

     
 
     

 
           </div>
        
         

 

</body>


    </form>
       
</html>

 
