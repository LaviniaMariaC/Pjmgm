<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator.Master" AutoEventWireup="true" CodeBehind="MAbonClase.aspx.cs" Inherits="Licenta2.MAbonClase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">

  <div>
    <center><h1>Categorii Servicii și Prestatori</h1></center>
         <div class="panel panel-default">
             <asp:Repeater ID="Repeater1" runat="server">
                  <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success"style="background-color: #625772;color: white">
                           <th>Nume </th>
                         <th>Prenume</th>
                         <th>Categorie</th>
                          <th>Reducere Membru de:</th>  
                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("Nume") %></th>
                         <td><%# Eval("Prenume") %></td>
                          <td><%# Eval("TipS") %></td>
                          <td><%# Eval("PretR") %></td>     
                     </tr>
                 </ItemTemplate>
                 <FooterTemplate>
                      </tbody>
             </table>
                 </FooterTemplate>
                   </asp:Repeater>
         </div>  
            </div>
    <br />
     <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Nume"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </br>
              <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Prenume"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtAPrenume" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </br>
            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Categoria"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="txtZi" CssClass="form-control" runat="server" OnSelectionChanged=""></asp:TextBox>   
                        </div>
            </div>
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Reducere Membru"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" OnSelectionChanged=""></asp:TextBox>   
                        </div>
            </div>
            </br>
              <div class="form-group">
                <asp:Button ID="Button4" runat="server" Class="btn btn-success" style="color:black" Text="Adăugare" OnClick="Button4_Click" />
                <asp:Button ID="Button5" runat="server" Class="btn btn-warning" style="color:black" Text="Modificare" OnClick="Button5_Click" />  
                <asp:Button ID="Button6" runat="server" Class="btn btn-danger" style="color:black" Text="Ștergere" OnClick="Button6_Click" />   
                  <div class="col-md-6">
                    <asp:Label ID="Label9" runat="server" ></asp:Label>      
                    </div>
                </div></div>
</asp:Content>
