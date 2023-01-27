<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator.Master" AutoEventWireup="true" CodeBehind="VizRezervari.aspx.cs" Inherits="Licenta2.VizRezervari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
      
         <div>
    <center><h1>Rezervări clienți</h1></center>
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="rptrDatep" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Email</th>
                         <th>Nume Prestator</th>
                         <th>Serviciu</th>
                         <th>Data programare</th>    
                         <th>Ora programare</th>  
                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("Email") %></th>
                         <td><%# Eval("NumeP") %></td>
                         <td><%# Eval("Serviciu") %></td>
                         <td><%# Eval("Dataf") %></td> 
                                                  <td><%# Eval("OraP") %></td>                        

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
