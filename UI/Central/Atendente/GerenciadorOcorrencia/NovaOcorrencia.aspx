<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NovaOcorrencia.aspx.cs" Inherits="Central.Atendente.GerenciadorOcorrencia.NovaOcorrencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Migalha de Pão-->
    <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li><a href="Principal.aspx">Gerenciador de Ocorrências</a></li>
                <li class="active">Nova Ocorrência</li>
            </ol>
    </div>
    
    <!-- Body da Ocorrência -->
    <a class="titulosinput">Tipo de Ocorrência:</a> <asp:TextBox ID="TextBoxTipo" runat="server" /> <br />
    <a class="titulosinput">Nome do Solicitante:</a> <asp:TextBox CssClass="inputs" ID="TextBoxNomeSolicitante" runat ="server" /> <br />
    <a class="titulosinput">Nome da(s) Vítima(s):</a> <asp:TextBox CssClass="inputs" ID="TextBoxNomeNomeVitima" runat ="server" /> <br />
    <a class="titulosinput">Quantidade de Vítimas:</a> <asp:TextBox CssClass="inputs" ID="TextBoxQuantidaVitimas" runat ="server" /> <br />
    <a class="titulosinput">O que vai informar?</a>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem Value="CEP">Informar CEP</asp:ListItem>
        <asp:ListItem Value="Nomes">Informar Nomes</asp:ListItem>
    </asp:RadioButtonList> <br />
    <asp:Label ID="LabelCEP" runat="server" Text="CEP:" Visible="false"/> <asp:TextBox ID="TextBoxCEP" runat="server" Visible="false"/> <br />
    <asp:Label ID="LabelCidade" runat="server" Text="Cidade:" Visible="false"/> <asp:TextBox ID="TextBoxCidade" runat="server" Visible="false"/> <br />
    <asp:Label ID="LabelBairro" runat="server" Text="Nome da Bairro:" Visible="false"/> <asp:TextBox ID="TextBoxBairro" runat="server" Visible="false"/> <br />
    <asp:Label ID="LabelRua" runat="server" Text="Nome da Rua:" Visible="false"/> <asp:TextBox ID="TextBoxRua" runat="server" Visible="false"/> <br />
    <asp:Label ID="LabelNumeroResidencia" runat="server" Text="Número da Residencia:" Visible="false"/> <asp:TextBox ID="TextBoxNumeroResidencia" runat="server" Visible="false"/> <br />
    <a class="titulosinput">Informação Adicional</a> <br />
    <asp:TextBox CssClass="inputs" ID="TextBoxInfAdicional" runat ="server" TextMode="MultiLine" Height="156px" Width="360px" />	  <br />  
    <asp:Button id="ButtonLimpar" Text="Limpar" runat="server"/>
    <asp:Button id="ButtonConfirar" runat="server" Text="Confirmar" Enabled="false" OnClick="ButtonConfirar_Click"/>
</asp:Content>
