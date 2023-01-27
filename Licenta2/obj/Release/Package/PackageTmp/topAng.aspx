<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator.Master" AutoEventWireup="true" CodeBehind="topAng.aspx.cs" Inherits="Licenta2.Topang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
      
         <div>
    <center><h1>Cei mai căutați angajați de luna aceasta</h1></center>
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="rptrDatep" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Nume Angajat </th>
                         
                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("numep") %></th>
 
 
                     </tr>
                 </ItemTemplate>
                 <FooterTemplate>
                      </tbody>
             </table>
                 </FooterTemplate>
                 </asp:Repeater>  
                    
 </div>

             
    <br />
                 
    
                        
 
                    
                    
 </div>       
 </div>
 </asp:Content>
