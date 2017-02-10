<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Central.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <title>S.A.M.U.</title>
    <link rel="stylesheet" type="text/css" href="../css/login-atendente.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
             <asp:Label ID="LabelAviso" runat="server" Text="" CssClass="label_input" Visible="false" BackColor="Red"></asp:Label>
                <div class="imgcontainer">
                    <img src="../img/samu.png" alt="Avatar" class="avatar" />
                </div>

                <div class="container">
                   
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="CPF (Apenas números)" CssClass="label_input"></asp:Label>
                     
                    <asp:TextBox ID="TextBoxUsuario" runat="server"></asp:TextBox>
                    

                   <asp:Label ID="Label2" runat="server" Text="Senha" CssClass="label_input"></asp:Label>
                    
                    <asp:TextBox ID="TextBoxSenha" runat="server" TextMode="Password"></asp:TextBox>

                 
                    <asp:Button ID="btnEntrar" runat="server" Text="Entrar" OnClick="btnEntrar_Click"  />
                    <div class="checkboxTwo">
                        <input type="checkbox" id="checkboxTwoInput" name="" />
                        <label for="checkboxTwoInput">Lembrar-me</label><br /><br/>
                    </div>


                    <span class="psw">
                        <label class="label_fg">Esqueceu sua</label>
                        <a id="link_senha" href="#">senha?</a></span>
                </div>
           
        </div>
    </div>
    </form>
</body>
</html>
