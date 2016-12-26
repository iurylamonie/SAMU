<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Inicial.aspx.cs" Inherits="Central.Atendente.Inicial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center-block">
       
        <!--Migalha de Pão-->
       <div>
        <ol class="breadcrumb">
          <li class="active">Início</li>
          <!-- <li><a href="#">Biblioteca</a></li> -->
        </ol>
       </div> 

        <!--Painel de Gerenciamento-->
       <div class="panel panel-default">

          <div class="panel-heading">
              <ul class="menu cf">
                <li><p>O que você deseja gerenciar?</p></li>     
              </ul>
          </div>

          <div class="panel-body">
                <div id="opcoes">					
					 <a href="ocorrencia.aspx"><div id="opcao2" class="opcao">
						<div id="imgopcao2" class="imgopcao"></div>
						<a class="tituloopcao" href="#">Ocorrências</a>
					</div></a>
					<div id="opcao3" class="opcao">
						<div id="imgopcao3" class="imgopcao"></div>
						<a class="tituloopcao" href="#">Chamados</a>
					</div>
				</div>
          </div>
           
       </div>  
   
        <!--Painel de Ultimas Ocorrências e Chamados-->

        <div class="panel panel-default">

          <div class="panel-heading">
              <ul class="menu cf">
                <li><p>Ocorrências recentes:</p></li>     
              </ul>
          </div>
            
          <div class="panel-body">
              Ocorrências
          </div>
           <div class="panel-heading">
              <ul class="menu cf">
                <li><p>Chamados recentes:</p></li>     
              </ul>
          </div>
            
          <div class="panel-body">
              Chamados
          </div>
       </div>  

    </div>
</asp:Content>
