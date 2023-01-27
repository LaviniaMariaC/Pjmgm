<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Licenta2.Calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
      <br>
        </br>
        <br>
        </br>
        <br>
        </br>
    </br>
        <br>
     
            <div class="container">
        <div class="form-horizontal">
            
            <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Greutate"></asp:Label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtNume" CssClass="form-control" placeholder="Greutate" runat="server"></asp:TextBox>
                        </div>
                </div>

            <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Înălțime"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtParola" CssClass="form-control" placeholder="Înălțime" runat="server"></asp:TextBox>
                    </div>
                </div>

             <br />

            <div class="form-group">
                   <div class="col-md-2 col-md-offset-3"></div>
                    <div class="col-md-3">                     
                        <asp:Button ID="btnAdd" runat="server" Class="btn btn-success" Text="Calculează" Height="35px" OnClick="btnAdd_Click"  />                                       
                    </div>

                <br />
                <br />

                <div class="col-md-2 col-md-offset-3"></div>
                    <div class="col-md-3">                     
                        <asp:Button ID="Button2" runat="server" Class="btn btn-success" Text="Fă o rezervare" Height="35px" OnClick="Button1_Click"  />                                       
                    </div>
                </div>
            <br />
            <br />
            <div class="form-group">
            <center><asp:Label ID="Label2" runat="server"></asp:Label></center>
                </div>

            <br />

            <div class="form-group">
            <center><asp:Label ID="Label4" runat="server"></asp:Label></center>

                </div>

            <br />

            
        </div>
        </div>
</asp:Content>
