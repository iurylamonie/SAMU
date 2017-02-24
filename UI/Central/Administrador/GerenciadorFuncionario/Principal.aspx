<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Central.Administrador.GerenciadorFuncionario.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li class="active">Gerenciador de Funcionarios</li>
            </ol>
        </div>

    <div class="opcoesprincipal">
            <div id="opcao3" class="opcao">
                <a href="NovoFuncionario.aspx">
			    <div id="imgopcao5" class="imgopcao"></div>
                </a>
			    <a class="tituloopcao" href="#">Adicionar Funcionario</a>            
		    </div>
     </div>

     <!--Menus-->
        <div class="row">
          <div class="col-xs-6 col-sm-4">
              <div class="panel panel--default">
                
                  <div class="cabessalhopainelnovochamado" id="cabessalhoesquerdanovochamado">
                      <ul class="menu cf">
                        <li><p>Administradores</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewAdministradores" runat="server" DataSourceID="ObjectDataSourceAdministradores" AutoGenerateColumns="False" OnRowCommand="GridViewAdministradores_RowCommand">
                          <Columns>
                              <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                              <asp:BoundField DataField="Cpf" HeaderText="CPF" SortExpression="Cpf" />
                              <asp:ButtonField CommandName="Deletar" ControlStyle-CssClass="btn btn-danger" Text="Deletar" ButtonType="Button">
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                              </asp:ButtonField>
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceAdministradores"  runat="server" SelectMethod="ListarUsuarios" TypeName="Funcionalidade.Usuario">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="0" Name="_tipo" Type="Int32" />
                          </SelectParameters>
                      </asp:ObjectDataSource>
                  </div>
           
              </div>  
          </div>
       
            <div class="col-xs-6 col-sm-4">
            <div class="panel panel--default">

                  <div class="cabessalhopainelnovochamado">
                      <ul class="menu cf">
                        <li><p>Atendentes</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewAtendentes" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceAtendentes" OnRowCommand="GridViewAtendentes_RowCommand">
                          <Columns>
                              <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                              <asp:BoundField DataField="Cpf" HeaderText="CPF" SortExpression="Cpf" />
                              <asp:ButtonField CommandName="Deletar" ControlStyle-CssClass="btn btn-danger" Text="Deletar" ButtonType="Button">
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                              </asp:ButtonField>
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceAtendentes" runat="server" SelectMethod="ListarUsuarios" TypeName="Funcionalidade.Usuario">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="1" Name="_tipo" Type="Int32" />
                          </SelectParameters>
                      </asp:ObjectDataSource>
                  </div>
           
              </div> 
          </div>

          <div class="col-xs-6 col-sm-4 ">
            <div class="panel panel--default">

                  <div class="cabessalhopainelnovochamado">
                      <ul class="menu cf">
                        <li><p>Socorristas</p></li>     
                      </ul>
                  </div>

                  <div class="panel-body">
                      <asp:GridView ID="GridViewSocorristas" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceSocorristas" OnRowCommand="GridViewSocorristas_RowCommand">
                          <Columns>
                              <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                              <asp:BoundField DataField="Cpf" HeaderText="CPF" SortExpression="Cpf" />
                              <asp:ButtonField CommandName="Deletar" ControlStyle-CssClass="btn btn-danger" Text="Deletar" ButtonType="Button">
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                              </asp:ButtonField>
                          </Columns>
                      </asp:GridView>
                      <asp:ObjectDataSource ID="ObjectDataSourceSocorristas" runat="server" SelectMethod="ListarUsuarios" TypeName="Funcionalidade.Usuario">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="2" Name="_tipo" Type="Int32" />
                          </SelectParameters>
                      </asp:ObjectDataSource>
                  </div>
           
              </div> 
          </div>
         </div>
    

</asp:Content>
