<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator.Master" AutoEventWireup="true" CodeBehind="Mesaje.aspx.cs" Inherits="Licenta2.Mesaje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
      
         <div>
    <center><h1>Mesaje primite</h1></center>
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="rptrDatep" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Nume </th>
                         <th>Email</th>
                         <th>Subiect</th>    
                         <th>Mesaj</th>  
                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("nume") %></th>
                         <td><%# Eval("email") %></td>
                         <td><%# Eval("subiect") %></td>
                         <td><%# Eval("mesaj") %></td> 
 
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
         </div>
</asp:Content>
