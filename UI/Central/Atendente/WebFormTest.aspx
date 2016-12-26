<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormTest.aspx.cs" Inherits="Central.Atendente.WebFormTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
 
    
        <asp:GridView ID="GridView1" runat="server">
           
            <PagerTemplate>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="171px" ImageUrl="~/img/mapa.png" Width="180px" />
                <br />
                <asp:Label ID="Label2" runat="server" Text="<%# NomeOcorrencia %>"></asp:Label>
            </PagerTemplate>
        </asp:GridView>
    
 
    
    </div>
    </form>
</body>
</html>
