<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Central.Atendente.GerenciadorChamado.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Migalha de Pão-->
        <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li class="active">Gerenciador de Chamados</li>
            </ol>
        </div>
   
     <div class="center" id="opcoes">
        <div id="opcao3" class="opcao">
			<div id="imgopcao3" class="imgopcao"></div>
			<a class="tituloopcao" href="#">Novo Chamado</a>
		</div>
    </div>
        
     <!--Menus-->
        <div class="row">
          <div class="col-xs-6 col-sm-6">
             
              <div class="panel panel-default">
                
                  <div class="panel-heading center-block">
                      <ul class="menu cf">
                        <li><p>Chamados em Atendimento</p></li>     
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
                        <li><p>Ocorrências Finalizados</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      
                  </div>
           
              </div> 
          </div>

          
          
         </div>

</asp:Content>
