<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditarDados.aspx.cs" Inherits="Central.Atendente.EditarDados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
            <ol class="breadcrumb">
                <li><a href="Inicial.aspx">Início</a></li>
                <li class="active">Meu Dados</li>
            </ol>
        </div>
     <div class="panel panel-info">
        
        <div class="panel-heading panel-title">
            <asp:Label ID="LabelNomeFuncionario" Text="Nome" runat="server" />
        </div>

        <div class="panel-body">           
            <div class="row">                   
                <div class="col-xs-6 col-sm-6">
                    <div class="panel panel--default">
                        <div class="cabessalhopainel">
                            <ul class="menu cf">
                                <li><p>Meus Dados</p></li>     
                            </ul>
                        </div>
                        <div class="panel-body">
                            <a class="titulosinput">Nome:</a> <asp:Label ID="LabelNome" runat="server" /> <br />
                            <a class="titulosinput">CPF:</a> <asp:Label ID="LabelCPF" runat="server" />      <br />
                            <br />
                            <asp:Button ID="ButtonAlterarSenha" runat="server" Text="Alterar Senha" OnClick="ButtonAlterarSenha_Click" />  <br />

                            <asp:TextBox CssClass="inputs" Enabled="false" ID="TextBoxNovaSenha" runat ="server" visible="false"/> <br /> 
                            <asp:Button ID="ButtonCancelar" runat="server" Text="Cancelar" visible ="false" OnClick="ButtonCancelar_Click" />
                            <asp:Button ID="ButtonConfirmar" runat="server" Text="Confirmar" visible ="false" OnClick="ButtonConfirmar_Click" />                         
                        </div>
                    </div>                    
                </div>
                </div>
            </div>
         </div>
</asp:Content>
