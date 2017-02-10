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
   
     <div class="opcoesprincipal">
        <div id="opcao3" class="opcao">
            <a href="NovoChamado.aspx">
			<div id="imgopcao3" class="imgopcao"></div>
            </a>
			<a class="tituloopcao" href="#">Novo Chamado</a>
            
		</div>
    </div>
        
     <!--Menus-->
        <div class="row">
          <div class="col-xs-6 col-sm-6">
             
              <div class="panel panel--default">
                
                  <div class="cabessalhopainel">
                      <ul class="menu cf">
                        <li><p>Chamados</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewChamados" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceChamados" OnRowCommand="GridViewChamados_RowCommand">
                          <Columns>
                              <asp:BoundField DataField="Id" HeaderText="Código do Chamado" SortExpression="Id" />
                              <asp:BoundField DataField="Hospital_id" HeaderText="Có. Hospital" SortExpression="Hospital_id" />
                              <asp:BoundField DataField="Ocorrencia_id" HeaderText="Có. Ocorrência" SortExpression="Ocorrencia_id" />
                              <asp:BoundField DataField="VeiculoAtendimento_id" HeaderText="Có. Ambulância" SortExpression="VeiculoAtendimento_id" />
                              <asp:ButtonField CommandName="Detalhar" Text="Detalhar" />
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceChamados" runat="server" SelectMethod="Listar" TypeName="Funcionalidade.Chamado">
                          <SelectParameters>
                              <asp:SessionParameter DefaultValue="" Name="_usuario_id" SessionField="id" Type="Int32" />
                          </SelectParameters>
                      </asp:ObjectDataSource>
                  </div>
           
              </div>  
          </div>
       
            <div class="col-xs-6 col-sm-6">
            <div class="panel panel--default">

                  <div class="cabessalhopainel">
                      <ul class="menu cf">
                        <li><p>Ocorrências sem Chamados</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewOcorrencia" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceOcorrencia" OnRowCommand="GridViewOcorrencia_RowCommand">
                          <Columns>
                              <asp:BoundField DataField="Id" HeaderText="Código da Ocorrência" SortExpression="Id" />
                              <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                              <asp:BoundField DataField="Endereco" HeaderText="Endereço" SortExpression="Endereco" />
                              <asp:ButtonField CommandName="Criar" Text="Criar Chamado" />
                              <asp:ButtonField CommandName="Detalhar" Text="Detalhar" />
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceOcorrencia" runat="server" SelectMethod="ListarSemChamado" TypeName="Funcionalidade.Ocorrencia">
                          <SelectParameters>
                              <asp:SessionParameter DefaultValue="" Name="_usuario_id" SessionField="id" Type="Int32" />
                          </SelectParameters>
                      </asp:ObjectDataSource>
                  </div>
           
              </div> 
          </div>

          
          
         </div>

</asp:Content>
