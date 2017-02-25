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

        <div class="panel panel--default">
        <!--Ocorrências-->
        <div class="class1">
          <div class="panel-heading1">
              <ul class="menu cf">
                <li><p>Ocorrências recentes:</p></li>     
              </ul>
          </div>
            
          <div class="panel-body">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceOcorrencias" OnRowCommand="GridView1_RowCommand" AllowPaging="True">
                  <Columns>
                      <asp:BoundField DataField="Id" HeaderText="Código" SortExpression="Id" />
                      <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                      <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                      <asp:BoundField DataField="Endereco" HeaderText="Endereço" SortExpression="Endereco" />
                      <asp:BoundField DataField="Situacao" HeaderText="Situação" SortExpression="Situacao" />
                      <asp:ButtonField CommandName="Detalhar" ControlStyle-CssClass="btn btn-info" Text="Detalhar" ButtonType="Button" />
                  </Columns>
              </asp:GridView>
              <asp:ObjectDataSource ID="ObjectDataSourceOcorrencias" runat="server" SelectMethod="Listar" TypeName="Funcionalidade.Ocorrencia">
                  <SelectParameters>
                      <asp:SessionParameter Name="_usuario_id" SessionField="id" Type="Int32" />
                  </SelectParameters>
              </asp:ObjectDataSource>
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
              <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceChamado" OnRowCommand="GridView2_RowCommand" AllowPaging="True">
                  <Columns>
                      <asp:BoundField DataField="Id" HeaderText="Código" SortExpression="Id" />
                      <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                      <asp:BoundField DataField="Hospital_id" HeaderText="Có. Hospital" SortExpression="Hospital_id" />
                      <asp:BoundField DataField="Ocorrencia_id" HeaderText="Có. Ocorrencia" SortExpression="Ocorrencia_id" />
                      <asp:BoundField DataField="VeiculoAtendimento_id" HeaderText="Có. Ambulância" SortExpression="VeiculoAtendimento_id" />
                      <asp:ButtonField ControlStyle-CssClass="btn btn-info" CommandName="Detalhar" Text="Detalhar" ButtonType="Button" />
                  </Columns>
              </asp:GridView>
              <asp:ObjectDataSource ID="ObjectDataSourceChamado" runat="server" SelectMethod="Listar" TypeName="Funcionalidade.Chamado">
                  <SelectParameters>
                      <asp:SessionParameter Name="_usuario_id" SessionField="id" Type="Int32" />
                  </SelectParameters>
              </asp:ObjectDataSource>
          </div>
          </div>
       </div>  

    </div>
</asp:Content>
