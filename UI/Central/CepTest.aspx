﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CepTest.aspx.cs" Inherits="Central.CepTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="buttonGerar" runat="server" Text="Gerar" OnClick="buttonGerar_Click" />
        <br />
    <asp:Label ID="labelRua" runat="server" />
        
        <br />
        <asp:Label ID="Label1" runat="server" Text='<%#Session["pinto"]%>'></asp:Label>



        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
