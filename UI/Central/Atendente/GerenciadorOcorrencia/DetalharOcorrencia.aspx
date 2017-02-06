<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetalharOcorrencia.aspx.cs" Inherits="Central.Atendente.GerenciadorOcorrencia.DetalharOcorrencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!--Migalha de Pão-->
    <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li><a href="Principal.aspx">Gerenciador de Ocorrências</a></li>
                <li class="active">Detalhes da Ocorrência</li>
            </ol>
    </div>
    
    <div class="panel panel-info">
        
        <div class="panel-heading panel-title">
            <asp:Label ID="LabelNumeroOcorrencia" Text="Ocorrência Numero X" runat="server" />
        </div>

        <div class="panel-body">           
            <div class="row">                   
                <div class="col-xs-6 col-sm-6">
                    <div class="panel panel--default">
                        <div class="cabessalhopainel">
                            <ul class="menu cf">
                                <li><p>Detalhas da Ocorrência</p></li>     
                            </ul>
                        </div>
                        <div class="panel-body">
                            <a class="titulosinput">Tipo de Ocorrência:</a> <asp:Label ID="LabelTipo" runat="server" /> <asp:TextBox ID="TextBoxTipo" Enabled="false" runat="server" /> <br />
                            <a class="titulosinput">Nome do Solicitante:</a> <asp:Label ID="LabelNomeSolicitante" runat="server" />  <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxNomeSolicitante" runat ="server" /> <br />
                            <a class="titulosinput">Nome da(s) Vítima(s):</a> <asp:Label ID="LabelNomeVitima" runat="server" /> <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxNomeNomeVitima" runat ="server" /> <br />
                            <a class="titulosinput">Quantidade de Vítimas:</a> <asp:Label ID="LabelQuantidadeVitimas" runat="server" /> <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxQuantidaVitimas" runat ="server" /> <br />               
                            <asp:Label ID="LabelCEP" runat="server" Text="CEP:"/> <asp:Label ID="LabelCEPinf" runat="server" /> <asp:TextBox ID="TextBoxCEP" runat="server" Enabled="false"/> <br />
                            <asp:Label ID="LabelEndereco" runat="server" Text="Endereco (Cidade, Bairro, Rua, Número):" Visible="true"/> <asp:Label ID="LabelEnderecoinf" runat="server" /><br /><asp:TextBox ID="TextBoxEndereco" runat="server" Enabled="false" TextMode="MultiLine"/> <br />                                                      
                            <a class="titulosinput">Informação Adicional</a> <br />
                            <asp:Label ID="LabelInfoAdicional" runat="server" />
                            <asp:TextBox CssClass="inputs" ID="TextBoxInfAdicional" runat ="server" Enabled="false" TextMode="MultiLine" Height="156px" Width="360px" />	  <br />  
                            <asp:Button id="ButtonEditar" Class="buttonocorr" Text="Editar" runat="server" OnClick="ButtonEditar_Click"/>
                            <asp:Button id="ButtonConfirar" Class="buttonocorr" runat="server" Text="Confirmar" Enabled="false" OnClick="ButtonConfirar_Click"/>
                        </div>
                    </div>                    
                </div>

                <div class="col-xs-6 col-sm-6">
                    <div class="panel panel--default">
                        <div class="cabessalhopainel">
                            <ul class="menu cf">
                                <li><p>Chamados da Ocorrência</p></li>     
                            </ul>
                        </div>
                        <div class="panel-body">
                            <asp:GridView ID="GridViewChamados" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSourceChamados" OnRowCommand="GridViewChamados_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Código do Chamado" SortExpression="Id" />
                                    <asp:ButtonField CommandName="Detalhar" Text="Detalhar" />
                                </Columns>
                            </asp:GridView>
                            <asp:ObjectDataSource ID="ObjectDataSourceChamados" runat="server" SelectMethod="ListarPorOcorrencia" TypeName="Funcionalidade.Chamado">
                                <SelectParameters>
                                    <asp:SessionParameter Name="_ocorrencia_id" SessionField="idOcorrencia" Type="Int32" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                            <asp:Button ID="ButtonNovoChamado" Class="buttonocorr" runat="server" Text="Novo Chamado" OnClick="ButtonNovoChamado_Click" />
                        </div>
                    </div>                    
                </div>
            </div>        
        </div>

    </div>

</asp:Content>
