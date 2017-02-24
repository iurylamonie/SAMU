<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Inicial.aspx.cs" Inherits="Central.Administrador.Inicial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--Migalha de Pão-->
       <div>
        <ol class="breadcrumb">
          <li class="active">Início</li>
          <!-- <li><a href="#">Biblioteca</a></li> -->
        </ol>
       </div>
    
    <div class="panel panel-danger">

          <div class="panel-heading1">
              <ul class="menu cf">
                <li><p>O que você deseja gerenciar?</p></li>     
              </ul>
          </div>

          <div class="panel-body">

              <div id="opcoes">
                 
                   <a href="GerenciadorHospital/Principal.aspx">
                      <div id="opcao4" class="opcao">
						<div id="imgopcao1" class="imgopcao"></div>
						  <a class="tituloopcao" href="#">Hospital</a>                   
					</div>
                  </a>
					
					 <a href="GerenciadorFuncionario/Principal.aspx"><div id="opcao2" class="opcao">
						<div id="imgopcao5" class="imgopcao"></div>						
                        <a class="tituloopcao" href="#">Funcionario</a>
					</div></a>
                  
                  <a href="GerenciadorAmbulancia/Principal.aspx"><div id="opcao3" class="opcao">
						<div id="imgopcao3" class="imgopcao"></div>
                        <a class="tituloopcao" href="#">Ambulância</a>
				    </div></a>
					
				</div>
          </div>
           
       </div>   
</asp:Content>
