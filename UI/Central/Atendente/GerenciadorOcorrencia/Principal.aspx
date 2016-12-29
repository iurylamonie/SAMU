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
             <div id="opcoes">
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
              <div class="panel panel-default">
                
                  <div class="panel-heading center-block">
                      <ul class="menu cf">
                        <li><p>Minhas Ocorrências</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewOcorrencias" CssClass="table table-condensed" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceTest" AllowPaging="True" HorizontalAlign="Center" OnRowCommand="GridViewOcorrencias_RowCommand">
                          <Columns>
                              <asp:BoundField DataField="Id" HeaderText="Código" SortExpression="Id" />
                              <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                              <asp:BoundField DataField="NomeSolicitante" HeaderText="Nome do Solicitante" SortExpression="NomeSolicitante" />
                              <asp:ButtonField Text="Detalhar" CommandName="Detalhar">
                              <ControlStyle CssClass="btn btn-info" />
                              </asp:ButtonField>
                              <asp:ButtonField Text="Remover" CommandName="Remover">
                              <ControlStyle CssClass="btn btn-danger" />
                              </asp:ButtonField>
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceTest" runat="server" SelectMethod="Listar" TypeName="Central.Atendente.GerenciadorOcorrencia.Ocorrencia"></asp:ObjectDataSource>
                  </div>
           
              </div>  
          </div>
       
            <div class="col-xs-6 col-sm-4">
            <div class="panel panel-default">

                  <div class="panel-heading">
                      <ul class="menu cf">
                        <li><p>Ocorrências sem Chamados</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewOcorrenciaSemChamado" runat="server"></asp:GridView>
                  </div>
           
              </div> 
          </div>

          <div class="col-xs-6 col-sm-4 ">
            <div class="panel panel-default">

                  <div class="panel-heading">
                      <ul class="menu cf">
                        <li><p>Ocorrências Finalizadas</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewOcorrenciasFinalizadas" runat="server"></asp:GridView>
                  </div>
           
              </div> 
          </div>
         </div>
    </div>
   
</asp:Content>
