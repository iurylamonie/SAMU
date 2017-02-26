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
                        <div class="cabessalhopainel">
                            <ul class="menu cf">
                                <li><p>Detalhes do Chamado</p></li>     
                            </ul>
                        </div>
                        <div class="panel-body">
                            <a class="titulosinput">Código do Chamado:</a> <asp:Label ID="LabelChamadoId" runat="server" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxChamadoId" Enabled="false" runat="server" Height="21px" Width="144px"  /> 
                            <br />
                            <br />
                            
                            <a class="titulosinput">Código da Ambulância:</a> <asp:Label ID="LabelAmbulanciaId" runat="server" /> &nbsp;<asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxAmbulanciaId" runat ="server" Height="21px" Width="144px" /> <br />
                            <br />
                            <a class="titulosinput">Código do Hospital:</a> <asp:Label ID="LabelHospitalId" runat="server" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxHospitalId" runat ="server" Height="21px" Width="144px"/> 
                            <br />
                            <br />
                            <asp:Button id="ButtonEditar" Class="buttonocorr" Text="Editar" runat="server" OnClick="ButtonEditar_Click" BackColor="#FF9933"/>
                            <asp:Button id="ButtonConfirar" Class="buttonocorr" runat="server" Text="Confirmar" Enabled="false" OnClick="ButtonConfirar_Click" BackColor="#009933" ForeColor="White"/>
                        </div>
                    </div>                    
                </div>

                <div class="col-xs-6 col-sm-6">
                    <div class="panel panel--default">
                        <div class="cabessalhopainel">
                            <ul class="menu cf">
                                <li><p>Ocorrência do Chamado</p></li>     
                            </ul>
                        </div>
                        <div class="panel-body">
                            <a class="titulosinput">Código da Ocorrência:</a> <asp:Label ID="LabelOcorrenciaId" runat="server" />  <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxOcorrenciaId" runat ="server" Height="21px" Width="154px" /> 
                            <br />
                            <br />
                            <a class="titulosinput">Tipo de Ocorrência:</a> <asp:Label ID="LabelTipo" runat="server" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBoxTipo" Enabled="false" runat="server" Height="21px" Width="153px" /> <br />
                            <br />
                            <a class="titulosinput">Nome do Solicitante:</a> <asp:Label ID="LabelNomeSolicitante" runat="server" />  &nbsp;<asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxNomeSolicitante" runat ="server" Height="21px" Width="423px" /> <br />
                            <br />
                            <a class="titulosinput">Nome da(s) Vítima(s):</a> <asp:Label ID="LabelNomeVitima" runat="server" /> &nbsp;&nbsp; <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxNomeNomeVitima" runat ="server" Height="21px" Width="423px" /> 
                            <br />
                            <br />
                            <asp:Button id="ButtonDetalhar" Class="buttonocorr" Text="Detalhar" runat="server" OnClick="ButtonDetalhar_Click" BackColor="#5BC0DE"/>
                        </div>
                    </div>                    
                </div>

            </div>        
        </div>

    </div>
</asp:Content>
