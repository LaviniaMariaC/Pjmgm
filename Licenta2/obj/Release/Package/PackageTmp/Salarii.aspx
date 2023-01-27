<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator.Master" AutoEventWireup="true" CodeBehind="Salarii.aspx.cs" Inherits="Licenta2.Salarii" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">

  <div>
    <center><h1>Salarii Agajați
            </h1></center>
         <div class="panel panel-default">
             <asp:Repeater ID="Repeater1" runat="server">
                  <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success"style="background-color: #625772;color: white">
                           <th>Nume </th>
                         <th>Prenume</th>
                         <th>Salariu</th>
                          <th>Bonus</th>  
                          <th>Eplicații Bonus</th>  

                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("Nume") %></th>
                         <td><%# Eval("Prenume") %></td>
                          <td><%# Eval("salariu") %></td>
                          <td><%# Eval("bonus") %></td>     
                          <td><%# Eval("explicatii") %></td>     

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
                        <asp:TextBox ID="txtnume" CssClass="form-control" runat="server"></asp:TextBox>
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
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Salariu"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="txtsalariu" CssClass="form-control" runat="server" OnSelectionChanged=""></asp:TextBox>   
                        </div>
            </div>
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Bonus"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="txtbonus" CssClass="form-control" runat="server" OnSelectionChanged=""></asp:TextBox>   
                        </div>
            </div>
              <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Explicații Bonus"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="txtexpl" CssClass="form-control" runat="server" OnSelectionChanged=""></asp:TextBox>   
                        </div>
            </div>
          <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="CNP"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="txtcnp" CssClass="form-control" runat="server" OnSelectionChanged=""></asp:TextBox>   
                        </div>
            </div>
              <div class="form-group">
                <asp:Button ID="Button4" runat="server" Class="btn btn-success" style="color:black" Text="Adăugare" OnClick="Button4_Click" />
                <asp:Button ID="Button5" runat="server" Class="btn btn-warning" style="color:black" Text="Modificare" OnClick="Button5_Click" />  
                <asp:Button ID="Button6" runat="server" Class="btn btn-danger" style="color:black" Text="Ștergere" OnClick="Button6_Click" />   
                  <div class="col-md-6">
                    <asp:Label ID="Label9" runat="server" ></asp:Label>      
                    </div>
                </div></div>
</asp:Content>
