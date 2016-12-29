<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetalharOcorrencia.aspx.cs" Inherits="Central.Atendente.GerenciadorOcorrencia.DetalharOcorrencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!--Migalha de Pão-->
    <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li><a href="Principal.aspx">Gerenciador de Ocorrências</a></li>
                <li class="active">Detalhes da Ocorrência</li>
            </ol>
    </div>
    
    <div class="panel panel-info">
        
        <div class="panel-heading panel-title">
            <asp:Label ID="LabelNumeroOcorrencia" Text="Ocorrência Numero X" runat="server" />
        </div>

        <div class="panel-body">           
            <div class="row">                   
                <div class="col-xs-6 col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <ul class="menu cf">
                                <li><p>Detalhas da Ocorrência</p></li>     
                            </ul>
                        </div>
                        <div class="panel-body">

                        </div>
                    </div>                    
                </div>

                <div class="col-xs-6 col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <ul class="menu cf">
                                <li><p>Chamados da Ocorrência</p></li>     
                            </ul>
                        </div>
                        <div class="panel-body">

                        </div>
                    </div>                    
                </div>
            </div>        
        </div>

    </div>

</asp:Content>
