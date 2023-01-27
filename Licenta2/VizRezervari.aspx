<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator.Master" AutoEventWireup="true" CodeBehind="VizRezervari.aspx.cs" Inherits="Licenta2.VizRezervari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
      
         <div>
    <center><h1>Rezervări clienți 2022</h1></center>
                  <br />
 </div>
    <br />
         </div>
    <div class="container">
                 <div>
    <center><h1>Iunie
        </h1></center>
        <asp:Button ID="btniun" runat="server" ForeColor="#625772" Height="40px"  Text="Detalii.." Width="135px" OnClick="btniun_Click" />
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="iun" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Email</th>
              
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
                <p>Suma finală: 0</p>    
 </div>
 </div>

    </div>
        <div class="container">
                 <div>
    <center><h1>Iulie
        </h1></center>
        <asp:Button ID="btniul" runat="server" ForeColor="#625772" Height="40px"  Text="Detalii.." Width="135px" OnClick="btniul_Click" />
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="iul" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Email</th>
              
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
                <p>Suma finală: 0</p>    
 </div>
 </div>

    </div>

        <div class="container">
                 <div>
    <center><h1>August
        </h1></center>
        <asp:Button ID="btnaug" runat="server" ForeColor="#625772" Height="40px"  Text="Detalii.." Width="135px" OnClick="btnaug_Click" />
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="aug" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Email</th>
              
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
                <p>Suma finală:<asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="142px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
             </p>    
 </div>
 </div>

    </div>

        <div class="container">
                 <div>
    <center><h1>Septembrie</h1></center>
        <asp:Button ID="btnsep" runat="server" ForeColor="#625772" Height="40px"  Text="Detalii.." Width="135px" OnClick="btnsep_Click" />
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="sep" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Email</th>
              
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
                <p>Suma finală:<asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="142px"></asp:TextBox>
             </p>    
 </div>
 </div>

    </div>

        <div class="container">
                 <div>
    <center><h1>Octombrie</h1></center>
        <asp:Button ID="btnoct" runat="server" ForeColor="#625772" Height="40px"  Text="Detalii.." Width="135px" OnClick="btnoct_Click" />
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="oct" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Email</th>
              
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
                <p>Suma finală:<asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="142px"></asp:TextBox>
             </p>    
 </div>
 </div>

    </div>

        <div class="container">
                 <div>
    <center><h1>Noiembrie</h1></center>
        <asp:Button ID="btnnoi" runat="server" ForeColor="#625772" Height="40px"  Text="Detalii.." Width="135px" OnClick="btnnoi_Click" />
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="noi" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Email</th>
              
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
                <p>Suma finală:<asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Width="142px"></asp:TextBox>
             </p>    
 </div>
 </div>

    </div>

        <div class="container">
                 <div>
    <center><h1>Decembrie</h1></center>
        <asp:Button ID="btndec" runat="server" ForeColor="#625772" Height="40px"  Text="Detalii.." Width="135px" OnClick="btndec_Click" />
               <br />
         <div class="panel panel-default">
             <asp:Repeater ID="dec" runat="server">
                 <HeaderTemplate>
                                  <table class="table">
                 <thead>
                     <tr class="alert-success" style="background-color: #625772;color: white">
                         <th>Email</th>
              
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
                <p>Suma finală:<asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Width="142px"></asp:TextBox>
             </p>    
 </div>
 </div>

    </div>

</asp:Content>
