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
    <div class="panel panel-warning">
        <div class="panel-heading">
            <label>Criar Ocorrência</label>
        </div>
        <div class="panel-body">
            
            <div class ="panel-group">
                <a class="titulosinput">Tipo de Ocorrência:</a>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Pesquisar por Tipo</asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="panel-group">
                <a class="titulosinput">Nome do Solicitante:</a>
                <asp:TextBox CssClass="inputs" ID="TextBoxNomeSolicitante" runat ="server" />	
            </div>

            <div class="panel-group">
                <a class="titulosinput">Nome da(s) Vítima(s):</a>
                <asp:TextBox CssClass="inputs" ID="TextBoxNomeNomeVitima" runat ="server" />
            </div>

            <div class="panel-group">
                <a class="titulosinput">Quantidade de Vítimas:</a>
                <asp:TextBox CssClass="inputs" ID="TextBoxQuantidaVitimas" runat ="server" />
            </div>

            <div class="row">
                <div class="col-xs-6 col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">Informar Localização</div>
                        <div class="panel-body">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio" RepeatDirection="Horizontal">
                                <asp:ListItem Value="CEP">Informar CEP</asp:ListItem>
                                <asp:ListItem Value="Nomes">Informar Nomes</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div>
            </div>

            
        </div>
    </div>
</asp:Content>
