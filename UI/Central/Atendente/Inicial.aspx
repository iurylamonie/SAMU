<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Inicial.aspx.cs" Inherits="Central.Atendente.Inicial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <ol class="breadcrumb">
      <li class="active">Início</li>
      <!-- <li><a href="#">Biblioteca</a></li> -->
    </ol>
   </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <ul class="menu cf">
                <li><p>O que você deseja gerenciar?</p></li>     
            </ul>
        </div>
    </div>   
</asp:Content>
