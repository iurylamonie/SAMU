<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NovoChamado.aspx.cs" Inherits="Central.Atendente.GerenciadorChamado.NovoChamado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Migalha de Pão-->
     <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li><a href="Principal.aspx">Gerenciador de Ocorrências</a></li>
                <li class="active">Novo Chamado</li>
            </ol>
    </div>

    <div class="panel panel-info">
       
        <div class="panel-heading panel-title">
            <asp:Label ID="LabelNumeroOcorrencia" Text="Ocorrência Numero X - Criando Chamado" runat="server" />
        </div>

         <!--Menus-->
        <div class="row">
          <div class="col-xs-6 col-sm-4">
              <div class="panel panel-default">
                
                  <div class="panel-heading center-block">
                      <ul class="menu cf">
                        <li><p>Escolha à Ambulância</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                     
                  </div>
           
              </div>  
          </div>
       
            <div class="col-xs-6 col-sm-4">
            <div class="panel panel-default">

                  <div class="panel-heading">
                      <ul class="menu cf">
                        <li><p>Escolha o Hospital</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                     
                  </div>
           
              </div> 
          </div>

          <div class="col-xs-6 col-sm-4 ">
            <div class="panel panel-default">

                  <div class="panel-heading">
                      <ul class="menu cf">
                        <li><p>Detalhes do Chamado</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <a class="titulosinput">Tipo de Ocorrência: </a> <asp:Label ID="LabelTipo" runat="server" /> <br />
                      <a class="titulosinput">Nome do Solicitante: </a> <asp:Label ID="LabelNomeSolicitante" runat="server" />  <br />
                      <a class="titulosinput">Nome da(s) Vítima(s): </a> <asp:Label ID="LabelNomeVitima" runat="server" /> <br />
                      <a class="titulosinput">Código da Ambulância(a ser solicitada): </a> <asp:Label ID="LabelAmbulancia" runat="server" /> <br />
                      <a class="titulosinput">Nome do Hospital: </a> <asp:Label ID="LabelHospital" runat="server" /> <br />
                      <br />
                       <asp:Button id="ButtonCancelar" Text="Cancelar" runat="server"/>
                       <asp:Button id="ButtonCriar" runat="server" Text="Criar"/><br />
                  </div>
           
              </div> 
          </div>
         </div>

</asp:Content>
