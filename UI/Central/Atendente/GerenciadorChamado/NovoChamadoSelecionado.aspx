<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NovoChamadoSelecionado.aspx.cs" Inherits="Central.Atendente.GerenciadorChamado.NovoChamadoSelecionado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Migalha de Pão-->
     <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li><a href="Principal.aspx">Gerenciador de Chamados</a></li>
                <li class="active">Novo Chamado</li>
            </ol>
    </div>

    <div class="panel panel-info">
       
        <div class="panel-heading panel-title" id="heading-painel-1a">
            <asp:Label ID="LabelNumeroOcorrencia" Text="Ocorrência Numero X - Criando Chamado" runat="server" />
        </div>

         <!--Menus-->
        <div class="row">
          <div class="col-xs-6 col-sm-4">
              <div class="panel panel--default">
                
                  <div class="panel-heading center-block">
                      <ul class="menu cf">
                        <li><p>Escolha à Ambulância</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewAmbulancia" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceAmbulancia" OnRowCommand="GridViewAmbulancia_RowCommand">
                          <Columns>
                              <asp:BoundField DataField="Id" HeaderText="Código do Veiculo" SortExpression="Id" />
                              <asp:BoundField DataField="Localizacao" HeaderText="Localização" SortExpression="Localizacao" />
                              <asp:ButtonField CommandName="Adicionar" ControlStyle-CssClass="btn btn-primary" Text="Adicionar" ButtonType="Button" />
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceAmbulancia" runat="server" SelectMethod="Listar" TypeName="Funcionalidade.VeiculoAtendimento"></asp:ObjectDataSource>
                  </div>
           
              </div>  
          </div>
       
            <div class="col-xs-6 col-sm-4">
            <div class="panel panel--default">

                  <div class="panel-heading">
                      <ul class="menu cf">
                        <li><p>Escolha o Hospital</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewHospital" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceHospital" OnRowCommand="GridViewHospital_RowCommand">
                          <Columns>
                              <asp:BoundField DataField="Id" HeaderText="Código" SortExpression="Id" />
                              <asp:BoundField DataField="Nome" HeaderText="Nome do Hospital" SortExpression="Nome" />
                              <asp:BoundField DataField="Tipo" HeaderText="Tipo do Hospital" SortExpression="Tipo" />
                              <asp:ButtonField CommandName="Adicionar" ControlStyle-CssClass="btn btn-primary" Text="Adicionar" ButtonType="Button" />
                          </Columns>
                      </asp:GridView>

                      <asp:ObjectDataSource ID="ObjectDataSourceHospital" runat="server" SelectMethod="Listar" TypeName="Funcionalidade.Hospital"></asp:ObjectDataSource>

                  </div>
           
              </div> 
          </div>

            

          <div class="col-xs-6 col-sm-4 ">
            <div class="panel panel--default">

                  <div class="panel-heading">
                      <ul class="menu cf">
                        <li><p>Detalhes do Chamado</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:Label ID="LabelAviso" runat="server" Visible="false" Text="Escolha a Ocorrência, Ambulância e o Hospital!" /> <br />

                      <a class="titulosinput">Tipo de Ocorrência: </a> <asp:Label ID="LabelTipo" runat="server" /> <br />
                      <a class="titulosinput">Nome do Solicitante: </a> <asp:Label ID="LabelNomeSolicitante" runat="server" />  <br />
                      <a class="titulosinput">Nome da(s) Vítima(s): </a> <asp:Label ID="LabelNomeVitima" runat="server" /> <br />
                      <a class="titulosinput">Código da Ambulância(a ser solicitada): </a> <asp:Label ID="LabelAmbulancia" runat="server" /> <br />
                      <a class="titulosinput">Nome do Hospital: </a> <asp:Label ID="LabelHospital" runat="server" /> <br />
                      <br />
                       <asp:Button id="ButtonCancelar" Class="buttonocorr" Text="Cancelar" runat="server"/>
                       <asp:Button id="ButtonCriar" Class="buttonocorr" runat="server" Text="Criar" OnClick="ButtonCriar_Click" /><br />
                  </div>
           
              </div> 
          </div>

           
         </div>

</asp:Content>
