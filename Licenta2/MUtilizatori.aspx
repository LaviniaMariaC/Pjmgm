<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator.Master" AutoEventWireup="true" CodeBehind="MUtilizatori.aspx.cs" Inherits="Licenta2.MUtilizatori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      
         <div>
    <center><h1>Utilizatori</h1></center>
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="rptrDatep" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-danger">
                         <th style="color:white; background-color:#625772 ">Nume utilizator</th>
                         <th style="color:white; background-color:#625772 ">Parola</th>
                         <th style="color:white; background-color:#625772 ">Număr de telefon</th>
                         <th style="color:white; background-color:#625772 ">Email</th> 
                         <th style="color:white; background-color:#625772 ">Tip utilizator</th> 
                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("nume") %></th>
                         <td><%# Eval("parola") %></td>
                         <td><%# Eval("telefon") %></td>
                         <td><%# Eval("email") %></td> 
                         <td><%# Eval("tip") %></td>  
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
        <br />
              <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Nume utilizator"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtAPrenume" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div> <br/>
           
            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Număr telefon"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="telefon" CssClass="form-control" runat="server" OnSelectionChanged=""></asp:TextBox>   
                        </div>
            </div>
             <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Tip utilizator"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" OnSelectionChanged=""></asp:TextBox>   
                        </div>
            </div>
    <div class="form-group">
        <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Email"></asp:Label>
        <div class="col-md-3">
            <asp:TextBox ID="Email" runat="server" CssClass="form-control"   OnSelectionChanged=""></asp:TextBox>
        </div>
           </div> <br/>

   <div class="form-group">
               <center>   <asp:Button ID="Button2" runat="server" Class="btn btn-danger"  Text="Ștergere utlizator" OnClick="Button2_Click" /></center>
                    <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" ></asp:Label>      
                    </div>
                  <asp:Label ID="Label2" runat="server"></asp:Label>
                </div> 
         </div>
</asp:Content>
