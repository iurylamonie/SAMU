<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Central.Atendente.GerenciadorOcorrencia.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
 
        <!--Migalha de Pão-->
        <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li class="active">Gerenciador de Ocorrências</li>
            </ol>
        </div>
        <div class="center">
             <div class="opcoesprincipal" >
                    <div id="opcao2" class="opcao">
                        <a href="NovaOcorrencia.aspx">
                            <div id="imgopcao2" class="imgopcao"></div>
                        </a>
                        <a class="tituloopcao">Nova Ocorrência</a>
                    </div>

                </div>
        </div>

        <!--Menus-->
        <div class="row">
          <div class="col-xs-6 col-sm-4">
              <div class="panel panel--default">
                
                  <div class="cabessalhopainelnovochamado" id="cabessalhoesquerdanovochamado">
                      <ul class="menu cf">
                        <li><p>Minhas Ocorrências</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewOcorrencias" CssClass="table table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceListarOcorrencia" AllowPaging="True" HorizontalAlign="Center" OnRowCommand="GridViewOcorrencias_RowCommand">
                          <Columns>
                              <asp:BoundField DataField="Id" HeaderText="Código" SortExpression="Id" />
                              <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                              <asp:BoundField DataField="Tipo" HeaderText="Tipo da Ocorrência" SortExpression="Tipo" />
                              <asp:BoundField DataField="Situacao" HeaderText="Situação" SortExpression="Situacao" />
                              <asp:ButtonField CommandName="Detalhar" Text="Detalhar" />
                              <asp:ButtonField CommandName="Excluir" Text="Excluir" />
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceListarOcorrencia" runat="server" SelectMethod="Listar" TypeName="Funcionalidade.Ocorrencia">
                          <SelectParameters>
                              <asp:SessionParameter DefaultValue="" Name="_usuario_id" SessionField="id" Type="Int32" />
                          </SelectParameters>
                      </asp:ObjectDataSource>
                  </div>
           
              </div>  
          </div>
       
            <div class="col-xs-6 col-sm-4">
            <div class="panel panel--default">

                  <div class="cabessalhopainelnovochamado">
                      <ul class="menu cf">
                        <li><p>Ocorrências sem Chamados</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewOcorrenciaSemChamado" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceListarSemChamado" OnRowCommand="GridViewOcorrenciaSemChamado_RowCommand" >
                          <Columns>
                              <asp:BoundField DataField="Id" HeaderText="Código" SortExpression="Id" />
                              <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                              <asp:BoundField DataField="Tipo" HeaderText="Tipo da Ocorrência" SortExpression="Tipo" />
                              <asp:ButtonField CommandName="Detalhar" Text="Detalhar" />
                              <asp:ButtonField CommandName="Excluir" Text="Excluir" />
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceListarSemChamado" runat="server" SelectMethod="ListarSemChamado" TypeName="Funcionalidade.Ocorrencia">
                          <SelectParameters>
                              <asp:SessionParameter DefaultValue="" Name="_usuario_id" SessionField="id" Type="Int32" />
                          </SelectParameters>
                      </asp:ObjectDataSource>
                  </div>
           
              </div> 
          </div>

          <div class="col-xs-6 col-sm-4 ">
            <div class="panel panel--default">

                  <div class="cabessalhopainelnovochamado">
                      <ul class="menu cf">
                        <li><p>Ocorrências Finalizadas</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewOcorrenciasFinalizadas" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceFinalizados" OnRowCommand="GridViewOcorrenciasFinalizadas_RowCommand" >
                          <Columns>
                              <asp:BoundField DataField="Id" HeaderText="Código" SortExpression="Id" />
                              <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                              <asp:BoundField DataField="Tipo" HeaderText="Tipo da Ocorrência" SortExpression="Tipo" />
                              <asp:ButtonField CommandName="Detalhar" Text="Detalhar" />
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceFinalizados" runat="server" SelectMethod="ListarFinalizados" TypeName="Funcionalidade.Ocorrencia">
                          <SelectParameters>
                              <asp:SessionParameter DefaultValue="" Name="_usuario_id" SessionField="id" Type="Int32" />
                          </SelectParameters>
                      </asp:ObjectDataSource>
                  </div>
           
              </div> 
          </div>
         </div>
    </div>
   
</asp:Content>
