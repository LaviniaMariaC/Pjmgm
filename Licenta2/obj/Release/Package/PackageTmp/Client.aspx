<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="Licenta2.Client1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
                         
  <div class="container">
  
    <br />
        <br />
        <br />
         <div>
   <center> <h1>Serviciile Disponibile</h1></center>
         <div class="panel panel-default">
             <asp:Repeater ID="rptrDatep" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Tip Serviciu</th>
                         <th>Preț Inițial </th>
                         <th>Durata</th>
                         <th>Tip Reducere</th> 
                         <th>Preț Redus</th> 
                           <th>Prestator Serviciu</th> 
                     </tr>
                 </thead>
                 <tbody>
                 </HeaderTemplate>
                 <ItemTemplate>
                     <tr>
                         <th><%# Eval("TipServiciu") %></th>
                         <td><%# Eval("PretI") %></td>
                         <td><%# Eval("Durata") %></td>
                         <td><%# Eval("TipRed") %></td>
                         <td><%# Eval("PretR") %></td>  
                         <td><%# Eval("Prestator") %></td>
                     </tr>
                 </ItemTemplate>
                 <FooterTemplate>
                      </tbody>
             </table>
                 </FooterTemplate>
                 </asp:Repeater>  
                    
 </div>
 </div>


      <div class="form-horizontal">
  <div class="form-group">
        
            <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Email"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txEmail" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
       <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Nume Prestator"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="prest" runat="server" Height="30px" Width="278px" OnSelectedIndexChanged="prest_SelectedIndexChanged" DataSourceID="nume">
                            <asp:ListItem>-</asp:ListItem>
                        </asp:DropDownList>
     
                        <asp:SqlDataSource ID="nume" runat="server" ConnectionString="<%$ ConnectionStrings:LicentaConnectionString1 %>" SelectCommand="SELECT [Prestator] FROM [Abonamente] ORDER BY [Prestator]"></asp:SqlDataSource>
                    </div>
                </div>
              <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Tip Serviciu Dorit"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="tips" runat="server" Height="30px" Width="278px" OnSelectedIndexChanged="tips_SelectedIndexChanged" DataSourceID="serv">
                            <asp:ListItem>-</asp:ListItem>
                        </asp:DropDownList>
     
                        <asp:SqlDataSource ID="serv" runat="server" ConnectionString="<%$ ConnectionStrings:LicentaConnectionString1 %>" SelectCommand="SELECT [TipServiciu] FROM [Abonamente] ORDER BY [TipServiciu]"></asp:SqlDataSource>
     
                    </div>

                      
                </div>
            <div class="form-group">
                    <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Data Programării"></asp:Label>
                    <div class="col-md-3">
               <asp:TextBox ID="txtZi" CssClass="form-control" runat="server" ReadOnly="True" OnSelectionChanged="" OnTextChanged="txtZi_TextChanged"></asp:TextBox>   
                        </div>
                 <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" ></asp:Calendar>
                </div>
      <div class="form-group">
                    <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label col-md-offset-3" Text="Ora Programării"></asp:Label>
                    <asp:DropDownList ID="oradrop" runat="server" Height="44px" Width="272px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
                    </asp:DropDownList></div></div>
            
            <asp:Label ID="lbldatetime" runat="server" Text="Label" Visible="False"></asp:Label>
          <asp:TextBox ID="txtdatetime" runat="server" OnTextChanged="txtdatetime_TextChanged" Visible="False"></asp:TextBox>
            
            <br/>
              <div class="form-group">
                <asp:Button ID="Button1" runat="server" Class="btn btn-success" style="background-color: #625772;color: white" Text="Fă rezervare" OnClick="Button1_Click" Visible="False" />
                <asp:Button ID="verific" runat="server" Class="btn btn-success" style="background-color: #625772;color: white" Text="Verifica disponibilitatea datei" OnClick="verific_Click" />
                    <div class="col-md-6">
                    <asp:Label ID="Label9" runat="server" ></asp:Label>      
                    </div>
                  <asp:Label ID="lbldataP" runat="server"></asp:Label>
                </div> 
      <div class="form-group">
                <asp:Button ID="Button2" runat="server" Class="btn btn-success" style="background-color: #625772;color: white" Text="Vizualizare rezervări" OnClick="Button2_Click" />
                    <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" ></asp:Label>      
                    </div>
                  <asp:Label ID="Label2" runat="server"></asp:Label>
                </div> 

         </div> 
    </div>      
</asp:Content>
