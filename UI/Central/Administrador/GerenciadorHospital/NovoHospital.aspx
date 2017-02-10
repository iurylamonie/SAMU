<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NovoHospital.aspx.cs" Inherits="Central.Administrador.GerenciadorHospital.NovoHospital" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!--Migalha de Pão-->
    <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li><a href="Principal.aspx">Gerenciador de Hospitais</a></li>
                <li class="active">Novo Hospital</li>
            </ol>
    </div>

    <a class="titulosinput">Nome:</a> <asp:TextBox ID="TextBoxNome" runat="server" /> <br />
    <a class="titulosinput">Endereço</a> <asp:TextBox CssClass="inputs" ID="TextBoxEndereco" runat ="server" /><br />
     <a class="titulosinput">Tipo:</a>  <asp:TextBox CssClass="inputs" ID="TextBoxTipo" runat ="server" /> <br />
     <asp:Button id="ButtonLimpar" class="buttonocorr" Text="Limpar" runat="server" />
     <asp:Button id="ButtonConfirar" class="buttonocorr" runat="server" Text="Confirmar" OnClick="ButtonConfirar_Click" /><br />
</asp:Content>
