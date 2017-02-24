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
    <div id="ocorr-body">
    <a class="titulosinput">Tipo de Ocorrência:</a> <asp:TextBox ID="TextBoxTipo" runat="server" /> <!-- <asp:DropDownList ID="DropDownListTipo" runat="server">
            <asp:ListItem>P02</asp:ListItem>
            <asp:ListItem>P03</asp:ListItem>
            <asp:ListItem>P04</asp:ListItem>
            <asp:ListItem>P05</asp:ListItem>
            <asp:ListItem>P99</asp:ListItem>
            <asp:ListItem>W32</asp:ListItem>
            <asp:ListItem>W18</asp:ListItem>
            <asp:ListItem>W19</asp:ListItem>
            <asp:ListItem>S59</asp:ListItem>
            <asp:ListItem>R21</asp:ListItem>
            <asp:ListItem>R22</asp:ListItem>
            <asp:ListItem>W03</asp:ListItem>
            <asp:ListItem>R29</asp:ListItem>
            <asp:ListItem>R31</asp:ListItem>
            <asp:ListItem>R32</asp:ListItem>
            <asp:ListItem>R51</asp:ListItem>
            <asp:ListItem>R52</asp:ListItem>
            <asp:ListItem>R53</asp:ListItem>
            <asp:ListItem>R54</asp:ListItem>
            <asp:ListItem>R55</asp:ListItem>
            <asp:ListItem>W20</asp:ListItem>
            <asp:ListItem>S54</asp:ListItem>
            <asp:ListItem>W11</asp:ListItem>
            <asp:ListItem>V05</asp:ListItem>
            <asp:ListItem>R56</asp:ListItem>
            <asp:ListItem>R59</asp:ListItem>
        </asp:DropDownList>--><br />
    <a class="titulosinput">Nome do Solicitante:</a> <asp:TextBox CssClass="marginbottom" ID="TextBoxNomeSolicitante" runat ="server" /> <br />
    <a class="titulosinput">Nome da(s) Vítima(s):</a> <asp:TextBox CssClass="marginbottom" ID="TextBoxNomeNomeVitima" runat ="server" /> <br />
    <a class="titulosinput">Quantidade de Vítimas:</a> <asp:TextBox CssClass="marginbottom" ID="TextBoxQuantidaVitimas" runat ="server" /> <br />
    <a class="titulosinputask">O que vai informar?</a>
    <asp:RadioButtonList Style="margin:0 auto;" ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem Value="CEP">Informar CEP</asp:ListItem>
        <asp:ListItem Value="Nomes">Informar Nomes</asp:ListItem>
    </asp:RadioButtonList> <br />
    <asp:Label ID="LabelCEP" runat="server" Text="CEP:" Visible="false"/> <asp:TextBox ID="TextBoxCEP" runat="server" Visible="false" AutoPostBack="True" OnTextChanged="TextBoxCEP_TextChanged" CssClass="marginbottom" /> <asp:Label Id="LabelAvisoCep" runat="server" /><br />
    <asp:Label ID="LabelCidade" runat="server" Text="Cidade:" Visible="false"/> <asp:TextBox ID="TextBoxCidade" runat="server" Visible="false" CssClass="marginbottom" /> <br />
    <asp:Label ID="LabelBairro" runat="server" Text="Nome da Bairro:" Visible="false" CssClass="marginbottom" /> <asp:TextBox ID="TextBoxBairro" runat="server" Visible="false" CssClass="marginbottom" /> <br />
    <asp:Label ID="LabelRua" runat="server" Text="Nome da Rua:" Visible="false"/> <asp:TextBox ID="TextBoxRua" runat="server" Visible="false" CssClass="marginbottom" /> <br />
    <asp:Label ID="LabelNumeroResidencia" runat="server" Text="Número da Residencia:" Visible="false"/> <asp:TextBox ID="TextBoxNumeroResidencia" runat="server" Visible="false" CssClass="marginbottom" /> <br />
    <div class="divtitulosinputask">
        <a class="titulosinputask">Informação Adicional</a>
    </div>
    <asp:TextBox CssClass="inputs" ID="TextBoxInfAdicional" runat ="server" TextMode="MultiLine" Height="156px" Width="416px" />	  <br />  
    <div class="botoes-ocorrencia">
        <asp:Button id="ButtonLimpar" class="buttonocorr" Text="Limpar" runat="server"/>
        <asp:Button id="ButtonConfirar" class="buttonocorr" runat="server" Text="Confirmar" OnClick="ButtonConfirar_Click"/><br />
    </div>
    <div class="divtitulosinputask">
        <asp:Label ID="titulosinputask" runat="server"  Text="Deseja Realizar um Chamado?" Visible="false"/><br />
    </div>
    <div class="confchamado botoes-ocorrencia">
    <asp:Button ID="ButtonSim" class="buttonocorr" runat="server" Text="Sim" visible="false" OnClick="ButtonSim_Click"/>
    <asp:Button ID="ButtonNao" class="buttonocorr" runat="server" Text="Não" visible="false" OnClick="ButtonNao_Click"/>
    </div>
        </div>
</asp:Content>
