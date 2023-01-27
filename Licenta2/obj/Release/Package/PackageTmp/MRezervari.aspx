<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator.Master" AutoEventWireup="true" CodeBehind="MRezervari.aspx.cs" Inherits="Licenta2.MRezervari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <br />
        <br />
    <br />
      
         <div>
    <center><h1>Rezervări clienți</h1></center>
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="rptrDatep" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success">
                         <th>Nume utilizator</th>
                         <th>Tip abonament</th>
                         <th>Dată început</th>
                         <th>Dată final</th>                        
                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("NumeU") %></th>
                         <td><%# Eval("TipAb") %></td>
                         <td><%# Eval("Data") %></td>
                         <td><%# Eval("Dataf") %></td>                        
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
               <center>   <asp:Button ID="Button2" runat="server" Class="btn btn-success"  Text="Modificare rezervări" OnClick="Button2_Click" /></center>
                    <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" ></asp:Label>      
                    </div>
                  <asp:Label ID="Label2" runat="server"></asp:Label>
                </div> 

    <div class="form-group">
               <center>   <asp:Button ID="Button1" runat="server" Class="btn btn-success"  Text="Adăugare rezervări" OnClick="Button1_Click" /></center>
                    <div class="col-md-6">
                    <asp:Label ID="Label3" runat="server" ></asp:Label>      
                    </div>
                  <asp:Label ID="Label4" runat="server"></asp:Label>
                </div> 

    <div class="form-group">
               <center>   <asp:Button ID="Button3" runat="server" Class="btn btn-danger"  Text="Ștergere rezervări" OnClick="Button3_Click" /></center>
                    <div class="col-md-6">
                    <asp:Label ID="Label5" runat="server" ></asp:Label>      
                    </div>
                  <asp:Label ID="Label6" runat="server"></asp:Label>
                </div> 
</asp:Content>
