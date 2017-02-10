<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Central.Administrador.GerenciadorHospital.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li class="active">Gerenciador de Hospitais</li>
            </ol>
        </div>

    <div class="opcoesprincipal">
            <div id="opcao3" class="opcao">
                <a href="NovoHospital.aspx">
			    <div id="imgopcao3" class="imgopcao"></div>
                </a>
			    <a class="tituloopcao" href="#">Adicionar Hospital</a>            
		    </div>
     </div>

    <div class="row">
          <div class="col-xs-6 col-sm-4">
              <div class="panel panel--default">
                
                  <div class="cabessalhopainelnovochamado" id="cabessalhoesquerdanovochamado">
                      <ul class="menu cf">
                        <li><p>Hospitais</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                    
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceHospital" OnRowCommand="GridView1_RowCommand">
                          <Columns>
                              <asp:BoundField DataField="Id" HeaderText="Código" SortExpression="Id" />
                              <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                              <asp:BoundField DataField="Endereco" HeaderText="Endereço" SortExpression="Endereco" />
                              <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                              <asp:ButtonField CommandName="Deletar" Text="Deletar" />
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceHospital" runat="server" SelectMethod="Listar" TypeName="Funcionalidade.Hospital"></asp:ObjectDataSource>
                    
                  </div>
           
              </div>  
          </div>
        </div>
</asp:Content>
