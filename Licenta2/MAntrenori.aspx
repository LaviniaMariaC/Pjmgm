<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator.Master" AutoEventWireup="true" CodeBehind="MAntrenori.aspx.cs" Inherits="Licenta2.MAntrenori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <br />
        <br />
        <br />
    <br />
      
         <div>
    <center><h1>Antrenori</h1></center>
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="rptrDatep" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success">
                         <th>Nume antrenor</th>
                         <th>Prenume antrenor</th>
                         <th>Clasă predată</th>
                                                
                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("Nume") %></th>
                         <td><%# Eval("Prenume") %></td>
                         <td><%# Eval("Clasapredata") %></td>
                                               
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
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Nume antrenor"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </br>
              <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Prenume antrenor"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtAPrenume" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </br>
            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Clasă predată"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="txtZi" CssClass="form-control" runat="server" OnSelectionChanged=""></asp:TextBox>   
                        </div>
            </div>
            </br>
              <div class="form-group">
                <asp:Button ID="Button4" runat="server" Class="btn btn-success" Text="Adăugare" OnClick="Button4_Click" />
                <asp:Button ID="Button5" runat="server" Class="btn btn-warning" Text="Modificare" OnClick="Button5_Click" />  
                <asp:Button ID="Button6" runat="server" Class="btn btn-danger" Text="Ștergere" OnClick="Button6_Click" />   
                  <div class="col-md-6">
                    <asp:Label ID="Label9" runat="server" ></asp:Label>      
                    </div>
                </div>
</asp:Content>
