<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NovaOcorrencia.aspx.cs" Inherits="Central.Atendente.GerenciadorOcorrencia.NovaOcorrencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Migalha de Pão-->
    <div>
            <ol class="breadcrumb">
                <li><a href="../Inicial.aspx">Início</a></li>
                <li><a href="Principal.aspx">Gerenciador de Ocorrências</a></li>
                <li class="active">Nova Ocorrência</li>
            </ol>
    </div>

    <div>
	   <div class="panel panel-default">
           <div class="panel-heading center-block">
               Nova Ocorrência
           </div>
           <div class="panel-body">
                  <div id="ocorrenciasinputs">
					<table id="tbinputs">
						<tr>
							<td>
								<a class="titulosinput">Tipo de Ocorrência:</a>
							</td>
							<td>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>Pesquisar por Tipo</asp:ListItem>
                                </asp:DropDownList>
							</td>
						</tr>						
						<tr>
							<td>
								<a class="titulosinput">Nome do Solicitante:</a>
							</td>
							<td>
                                <asp:TextBox CssClass="inputs" ID="TextBoxNomeSolicitante" runat ="server" />								
							</td>
						</tr>
                        <tr>
							<td>
								<a class="titulosinput">Nome da(s) Vítima(s):</a>
							</td>
							<td>
                                <asp:TextBox CssClass="inputs" ID="TextBoxNomeNomeVitima" runat ="server" />								
							</td>
						</tr>
                        <tr>
							<td>
								<a class="titulosinput">Quantidade de Vítimas:</a>
							</td>
							<td>
								<asp:TextBox CssClass="inputs" ID="TextBoxQuantidaVitimas" runat ="server" />
							</td>
						</tr>
						<tr>
							<td>
								<a class="titulosinput">CEP:</a>
							</td>
							<td>
								<asp:TextBox CssClass="inputs" ID="TextBoxCEP" runat ="server" />
							</td>
						</tr>
						<tr>
							<td>
								<a class="titulosinput">Número da Residência:</a>
							</td>
							<td>
								<asp:TextBox CssClass="inputs" ID="TextBoxNumeroResidencia" runat ="server" />
							</td>
						</tr>
						<tr>
							<td>
								<a class="titulosinput">Rua:</a>
							</td>
							<td>
								<asp:TextBox CssClass="inputs" ID="TextBoxRua" runat ="server" />
							</td>
						</tr>
						<tr>
							<td>
								<a class="titulosinput">Bairro:</a>
							</td>
							<td>
								<asp:TextBox CssClass="inputs" ID="TextBoxNomeBairro" runat ="server" />
							</td>
						</tr>
						<tr>
							<td>
								<a class="titulosinput">Informação Adicional</a>
							</td>
						</tr>
					</table>
					<div id="divinforadic">
					    <asp:TextBox CssClass="inputs" ID="TextBoxInfAdicional" runat ="server" TextMode="MultiLine" Height="156px" Width="360px" />	
                    </div>
					<div id="buttons">
						<asp:Button id="ButtonLimpar" CssClass="buttones" Text="Limpar" runat="server"/>
						<asp:Button id="ButtonConfirar" CssClass="buttones  btn-success" runat="server" Text="Confirmar" />
					</div>

				</div>
           </div>
	   </div>
	 
        			
    </div>
</asp:Content>
