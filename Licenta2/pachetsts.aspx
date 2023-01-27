<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator.Master" AutoEventWireup="true" CodeBehind="pachetsts.aspx.cs" Inherits="Licenta2.pachetsts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
         <div>
   <center> <h1>Modificare Serviciu</h1></center>
         <div class="panel panel-default">
             <asp:Repeater ID="rptrDatep" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                 <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>ID</th>
                         <th>Email </th>
                         <th>Serviciu</th>
                         <th>Perioada</th> 
                         <th>Status</th> 
                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("id") %></th>
                         <td><%# Eval("email") %></td>
                         <td><%# Eval("serviciu") %></td>
                         <td><%# Eval("perioada") %></td>
                         <td><%# Eval("status") %></td>
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
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="ID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </br>
    <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Status"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" OnSelectionChanged=""></asp:TextBox>   
                        </div></div>
            </br>
              <div class="form-group">
                <asp:Button ID="Button5" runat="server" Class="btn btn-warning" style="color:black" Text="Modificare" OnClick="Button5_Click" />  
                <asp:Button ID="Button6" runat="server" Class="btn btn-danger" style="color:black" Text="Ștergere" OnClick="Button6_Click" />   
                  <div class="col-md-6">
                    <asp:Label ID="Label9" runat="server" ></asp:Label>      
                    </div>
                </div>
       </div>
</asp:Content>
