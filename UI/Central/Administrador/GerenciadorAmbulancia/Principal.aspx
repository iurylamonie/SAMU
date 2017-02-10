<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Central.Administrador.GerenciadorAmbulancia.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li class="active">Gerenciador de Ambulâncias</li>
            </ol>
        </div>

      <div class="opcoesprincipal">
            <div id="opcao3" class="opcao">
                <a href="NovoFuncionario.aspx">
			    <div id="imgopcao3" class="imgopcao"></div>
                </a>
			    <a class="tituloopcao" href="#">Adicionar Ambulância</a>            
		    </div>
     </div>

    <div class="row">

         <div class="col-xs-6 col-sm-4">
              <div class="panel panel--default">
                
                  <div class="cabessalhopainelnovochamado" id="cabessalhoesquerdanovochamado">
                      <ul class="menu cf">
                        <li><p>Ambulâncias</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewAmbulancias" runat="server" DataSourceID="ObjectDataSourceAmbulancias"></asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceAmbulancias" runat="server"></asp:ObjectDataSource>
                  </div>
           
              </div>  
          </div>
       

    </div>
</asp:Content>
