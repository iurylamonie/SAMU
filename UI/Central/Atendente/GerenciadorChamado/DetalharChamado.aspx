<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetalharChamado.aspx.cs" Inherits="Central.Atendente.GerenciadorChamado.DetalharChamado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!--Migalha de Pão-->
    <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li><a href="Principal.aspx">Gerenciador de Chamados</a></li>
                <li class="active">Detalhes do Chamado</li>
            </ol>
    </div>
    
    <div class="panel panel-info">
        
        <div class="panel-heading panel-title">
            <asp:Label ID="LabelNumeroOcorrencia" Text="Ocorrência Numero X" runat="server" />
        </div>

        <div class="panel-body">           
            <div class="row">                   
                

                <div class="col-xs-6 col-sm-6">
                    <div class="panel panel--default">
                        <div class="panel-heading">
                            <ul class="menu cf">
                                <li><p>Detalhes do Chamado</p></li>     
                            </ul>
                        </div>
                        <div class="panel-body">
                            <a class="titulosinput">Código do Chamado:</a> <asp:Label ID="LabelChamadoId" runat="server" /> <asp:TextBox ID="TextBoxChamadoId" Enabled="false" runat="server" /> <br />
                            
                            <a class="titulosinput">Código da Ambulância:</a> <asp:Label ID="LabelAmbulanciaId" runat="server" /> <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxAmbulanciaId" runat ="server" /> <br />
                            <a class="titulosinput">Código do Hospital:</a> <asp:Label ID="LabelHospitalId" runat="server" /> <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxHospitalId" runat ="server" /> <br />
                            <asp:Button id="ButtonEditar" Text="Editar" runat="server" OnClick="ButtonEditar_Click"/>
                            <asp:Button id="ButtonConfirar" runat="server" Text="Confirmar" Enabled="false" OnClick="ButtonConfirar_Click"/>
                        </div>
                    </div>                    
                </div>

                <div class="col-xs-6 col-sm-6">
                    <div class="panel panel--default">
                        <div class="panel-heading">
                            <ul class="menu cf">
                                <li><p>Ocorrência do Chamado</p></li>     
                            </ul>
                        </div>
                        <div class="panel-body">
                            <a class="titulosinput">Código da Ocorrência:</a> <asp:Label ID="LabelOcorrenciaId" runat="server" />  <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxOcorrenciaId" runat ="server" /> <br />
                            <a class="titulosinput">Tipo de Ocorrência:</a> <asp:Label ID="LabelTipo" runat="server" /> <asp:TextBox ID="TextBoxTipo" Enabled="false" runat="server" /> <br />
                            <a class="titulosinput">Nome do Solicitante:</a> <asp:Label ID="LabelNomeSolicitante" runat="server" />  <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxNomeSolicitante" runat ="server" /> <br />
                            <a class="titulosinput">Nome da(s) Vítima(s):</a> <asp:Label ID="LabelNomeVitima" runat="server" /> <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxNomeNomeVitima" runat ="server" /> <br />
                            <asp:Button id="ButtonDetalhar" Text="Detalhar" runat="server" OnClick="ButtonDetalhar_Click"/>
                        </div>
                    </div>                    
                </div>

            </div>        
        </div>

    </div>
</asp:Content>
