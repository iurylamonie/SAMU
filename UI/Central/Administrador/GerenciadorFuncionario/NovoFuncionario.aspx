<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NovoFuncionario.aspx.cs" Inherits="Central.Administrador.GerenciadorFuncionario.NovoFuncionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--Migalha de Pão-->
    <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li><a href="Principal.aspx">Gerenciador de Funcionarios</a></li>
                <li class="active">Novo Funcionario</li>
            </ol>
    </div>

    <a class="titulosinput">Nome:</a> <asp:TextBox ID="TextBoxNome" runat="server" Height="19px" Width="189px" /> <br />
    <a class="titulosinput">CPF:</a>&nbsp;&nbsp; <asp:TextBox CssClass="inputs" ID="TextBoxCPF" runat ="server" Height="19px" />  <asp:Label ID="LabelAvisoCPF" runat="server" Visible="false" Text="CPF já cadastrado!"/><br />
     <a class="titulosinput">Tipo:</a> 
     <asp:DropDownList ID="DropDownList1" runat="server">
         <asp:ListItem Value="0">Administrador</asp:ListItem>
         <asp:ListItem Value="1">Atendente</asp:ListItem>
         <asp:ListItem Value="2">Socorrista</asp:ListItem>
     </asp:DropDownList> 
     <br />
     <br />
     <asp:Button id="ButtonLimpar" class="buttonocorr" Text="Limpar" runat="server" OnClick="ButtonLimpar_Click"/>
     <asp:Button id="ButtonConfirar" class="buttonocorr" runat="server" Text="Confirmar" OnClick="ButtonConfirar_Click" BackColor="#009933"/><br />
</asp:Content>
