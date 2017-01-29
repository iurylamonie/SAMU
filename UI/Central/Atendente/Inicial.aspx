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
       <div class="panel panel-danger">

          <div class="panel-heading1">
              <ul class="menu cf">
                <li><p>O que você deseja gerenciar?</p></li>     
              </ul>
          </div>

          <div class="panel-body">
                <div id="opcoes">					
					 <a href="GerenciadorOcorrencia/Principal.aspx"><div id="opcao2" class="opcao">
						<div id="imgopcao2" class="imgopcao"></div>
						<a class="tituloopcao" href="#">Ocorrências</a>
					</div></a>
					<div id="opcao3" class="opcao">
                        <a href="GerenciadorChamado/Principal.aspx">
						<div id="imgopcao3" class="imgopcao"></div></a>
						<a class="tituloopcao" href="#">Chamados</a>
					</div>
				</div>
          </div>
           
       </div>  
   
        <!--Painel de Ultimas Ocorrências e Chamados-->

        <div class="panel panel-default">
        <!--Ocorrências-->
        <div class="class1">
          <div class="panel-heading1">
              <ul class="menu cf">
                <li><p>Ocorrências recentes:</p></li>     
              </ul>
          </div>
            
          <div class="panel-body">
              <asp:DataList ID="DataListOcorrencias" runat="server" RepeatDirection="Horizontal">
                  <ItemTemplate>
                      <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/img/mapa.png" />
                      <br />
                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tipo") %>' CssClass="tipoocor"></asp:Label>
                      <br />
                      <asp:Button ID="ButtonIr" runat="server" CommandArgument='<%# Eval("Id") %>' Text='<%# Eval("Id") %>' />
                  </ItemTemplate>
              </asp:DataList>
          </div>
        </div>
        <div class="class1">
           <div class="panel-heading1">
              <ul class="menu cf">
                <li><p>Chamados recentes:</p></li>     
              </ul>
          </div>
          <!--Chamados-->  
          <div class="panel-body">
              <asp:DataList ID="DataListChamados" runat="server" RepeatDirection="Horizontal">
                  <ItemTemplate>
                      <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl="~/img/mapa.png" />
                      <br />
                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tipo") %>' CssClass="tipoocor"></asp:Label>
                      <br />
                      <asp:Button ID="ButtonIr" runat="server" CommandArgument='<%# Eval("Id") %>' Text='<%# Eval("Id") %>' />
                  </ItemTemplate>
              </asp:DataList>
          </div>
          </div>
       </div>  

    </div>
</asp:Content>
