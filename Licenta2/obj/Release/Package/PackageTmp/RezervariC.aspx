<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="RezervariC.aspx.cs" Inherits="Licenta2.RezervariC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br />  <br />  
    <div class="container">
      <div class="form-horizontal">
  <div class="form-group">
        
            <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Email"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                         <asp:Button ID="Button2" runat="server" Class="btn btn-success" style="background-color: #625772;" Text="Vizualizare rezervări" OnClick="Button2_Click"/>
                   <div class="col-md-6">
<center>  <asp:Label ID="Label1" runat="server" ></asp:Label>  </center>    
                    </div>  
                <!--
                  <asp:Button ID="Button1" runat="server" Class="btn btn-danger"  Text="Avertisment abonament" OnClick="Button1_Click"/>
                 -->   <div class="col-md-6">
                    <asp:Label ID="Label2" runat="server" ></asp:Label>      
                    </div>

                </div>
             </div>
                          </div>
       <div>
    <center><h1>Rezervări</h1></center>
        <div class="panel panel-default">
             <asp:Repeater ID="Repeater1" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">                       
                           <th>Email utilizator</th>
                         <th>Nume Prestator</th>
                         <th>Serviciul dorit</th>
                         <th>Dată </th>
                         <th>Oră</th>    
                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>                        
                         <th><%# Eval("email") %></th>
                         <td><%# Eval("numeP") %></td>
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
             <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Email"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            <br/>
              <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Serviciul dorit"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtAPrenume" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            <br/>
            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Dată "></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="txtZi" CssClass="form-control" runat="server" ReadOnly="True" OnSelectionChanged=""></asp:TextBox>   
                        </div>
                 <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" ></asp:Calendar>
               <div class="form-group" id="lblora">
                    <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Ora Programării"></asp:Label>
                      <div class="col-md-3">
               <asp:TextBox ID="txtora1" CssClass="form-control" runat="server" ReadOnly="True" OnSelectionChanged=""></asp:TextBox>   
                        </div>
                  </div>
            
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>-</asp:ListItem>
                        <asp:ListItem>10:00</asp:ListItem>
                        <asp:ListItem>11:00</asp:ListItem>
                        <asp:ListItem>12:00</asp:ListItem>
                        <asp:ListItem>13:00</asp:ListItem>
                        <asp:ListItem>14:00</asp:ListItem>
                        <asp:ListItem>15:00</asp:ListItem>
                        <asp:ListItem>16:00</asp:ListItem>
                        <asp:ListItem>17:00</asp:ListItem>
                        <asp:ListItem>18:00</asp:ListItem>
                        <asp:ListItem>19:00</asp:ListItem>
                        <asp:ListItem>20:00</asp:ListItem>
                    </asp:DropDownList>
                    <br />
            <br/>
              <div class="form-group">
             <!--   <asp:Button ID="Button3" runat="server" Class="btn btn-warning" Text="Modificare" OnClick="Button3_Click" />
                --><asp:Button ID="Button4" runat="server" Class="btn btn-danger" style="color:black" Text="Ștergere" OnClick="Button4_Click" />  
                  <div class="col-md-6">
                    <asp:Label ID="Label9" runat="server" ></asp:Label>      
                    </div>
                </div>
        </div>    
    </div>
</asp:Content>
