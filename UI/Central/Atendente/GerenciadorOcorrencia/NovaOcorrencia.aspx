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
    
    <!-- Body da Ocorrência -->
    <div id="ocorr-body">
    <a class="titulosinput">Tipo de Ocorrência:</a>
        <asp:DropDownList ID="DropDownListTipo" runat="server">
            <asp:ListItem>P02-Acidente de transito com vítima</asp:ListItem>
            <asp:ListItem>P03-Acidente de transito sem vítima </asp:ListItem>
            <asp:ListItem>P04-Atropelamento </asp:ListItem>
            <asp:ListItem>P05-Vítima encarcerada em ferragens </asp:ListItem>
            <asp:ListItem>P99-Acidentes de trânsito diverso </asp:ListItem>
            <asp:ListItem>W32-Queda de Moto</asp:ListItem>
            <asp:ListItem>W18-Acidente ferroviário </asp:ListItem>
            <asp:ListItem>W19-Acidente aeroviário </asp:ListItem>
            <asp:ListItem>S59-Acidente de transportes diversos</asp:ListItem>
            <asp:ListItem>R21-Ferimento c/ ferramenta manual </asp:ListItem>
            <asp:ListItem>R22-Vítima de choque elétrico </asp:ListItem>
            <asp:ListItem>W03-Vítima presa à máquina ou equipamento </asp:ListItem>
            <asp:ListItem>R29-Ferimento com máquinas diversas</asp:ListItem>
            <asp:ListItem>R31-Vítima ferida por anima terrestre </asp:ListItem>
            <asp:ListItem>R32-Vítima ferida por inseto </asp:ListItem>
            <asp:ListItem>R51-Vítima ferida por animal aquático</asp:ListItem>
            <asp:ListItem>R52-Ferimento por arma de fogo </asp:ListItem>
            <asp:ListItem>R53-Ferimento por arma branca </asp:ListItem>
            <asp:ListItem>R54-Vítima de objeto lançado ou em queda </asp:ListItem>
            <asp:ListItem>R55-Ferimentos por instrumentos diversos</asp:ListItem>
            <asp:ListItem>W20-Queda de outro nível </asp:ListItem>
            <asp:ListItem>S54-Queda do mesmo nível </asp:ListItem>
            <asp:ListItem>W11-Queda de veículo em movimento </asp:ListItem>
            <asp:ListItem>V05-Salto de edifício ou outra estrutura </asp:ListItem>
            <asp:ListItem>R56-Mergulho ou pulo em água c/ traumatismo </asp:ListItem>
            <asp:ListItem>R59-Ocorrências diversas/queda, salto, empurrão</asp:ListItem>
            <asp:ListItem>R61-Overdose por medicamentos (legal) </asp:ListItem>
            <asp:ListItem>R62-Overdose por drogas (ilegal) </asp:ListItem>
            <asp:ListItem>R63-Ingestão de substância química </asp:ListItem>
            <asp:ListItem>R64-Intoxicação por exposição a gases </asp:ListItem>
            <asp:ListItem>R65-Diversos: ingestão, inalação, injeção</asp:ListItem>
            <asp:ListItem>R66-Ferimento por explosão </asp:ListItem>
            <asp:ListItem>R67-Ferimento por fogos de artifício </asp:ListItem>
            <asp:ListItem>R68-Exposição a produtos perigosos</asp:ListItem>
            <asp:ListItem>R71-Com bebidas, alimentos, óleo de cozinha </asp:ListItem>
            <asp:ListItem>R72-Com água </asp:ListItem>
            <asp:ListItem>R73-Com vapor d’agua </asp:ListItem>
            <asp:ListItem>R74-Com líquidos exceto água </asp:ListItem>
            <asp:ListItem>R75-Com ar ou gás </asp:ListItem>
            <asp:ListItem>R76-com motor máquina ou ferramenta</asp:ListItem> 
            <asp:ListItem>R77-Com aquecedor, radiador, tubulação </asp:ListItem>
            <asp:ListItem>R78-Por exposição direta á chama </asp:ListItem>
            <asp:ListItem>R79-Por fonte de calor ou substâncias diversas</asp:ListItem>
            <asp:ListItem>R81-Problemas cardíacos </asp:ListItem>
            <asp:ListItem>R82-Emergência respiratória </asp:ListItem>
            <asp:ListItem>R83-Parada cárdio respiratória </asp:ListItem>
            <asp:ListItem>R84-Crise convulsiva </asp:ListItem>
            <asp:ListItem>R85-Emergências clínicas diversas </asp:ListItem>
            <asp:ListItem>R02-Parturiente </asp:ListItem>
            <asp:ListItem>R03-Distúrbios de comportamento</asp:ListItem> 
            <asp:ListItem>R05-Mal súbito</asp:ListItem>
        </asp:DropDownList><br />
    <a class="titulosinput">Nome do Solicitante:</a> <asp:TextBox CssClass="marginbottom" ID="TextBoxNomeSolicitante" runat ="server" /> 
        <br />
    <a class="titulosinput">Quantidade de Vítimas:</a>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
            <asp:ListItem>32</asp:ListItem>
            <asp:ListItem>33</asp:ListItem>
            <asp:ListItem>34</asp:ListItem>
            <asp:ListItem>35</asp:ListItem>
            <asp:ListItem>36</asp:ListItem>
            <asp:ListItem>37</asp:ListItem>
            <asp:ListItem>38</asp:ListItem>
            <asp:ListItem>39</asp:ListItem>
            <asp:ListItem>40</asp:ListItem>
            <asp:ListItem>41</asp:ListItem>
            <asp:ListItem>42</asp:ListItem>
            <asp:ListItem>43</asp:ListItem>
            <asp:ListItem>44</asp:ListItem>
            <asp:ListItem>45</asp:ListItem>
            <asp:ListItem>46</asp:ListItem>
            <asp:ListItem>47</asp:ListItem>
            <asp:ListItem>48</asp:ListItem>
            <asp:ListItem>49</asp:ListItem>
            <asp:ListItem>50</asp:ListItem>
            <asp:ListItem>51</asp:ListItem>
            <asp:ListItem>52</asp:ListItem>
            <asp:ListItem>53</asp:ListItem>
            <asp:ListItem>54</asp:ListItem>
            <asp:ListItem>55</asp:ListItem>
            <asp:ListItem>56</asp:ListItem>
            <asp:ListItem>57</asp:ListItem>
            <asp:ListItem>58</asp:ListItem>
            <asp:ListItem>59</asp:ListItem>
            <asp:ListItem>60</asp:ListItem>
            <asp:ListItem>61</asp:ListItem>
            <asp:ListItem>62</asp:ListItem>
            <asp:ListItem>63</asp:ListItem>
            <asp:ListItem>64</asp:ListItem>
            <asp:ListItem>65</asp:ListItem>
            <asp:ListItem>66</asp:ListItem>
            <asp:ListItem>67</asp:ListItem>
            <asp:ListItem>68</asp:ListItem>
            <asp:ListItem>69</asp:ListItem>
            <asp:ListItem>70</asp:ListItem>
            <asp:ListItem>71</asp:ListItem>
            <asp:ListItem>72</asp:ListItem>
            <asp:ListItem>73</asp:ListItem>
            <asp:ListItem>74</asp:ListItem>
            <asp:ListItem>75</asp:ListItem>
            <asp:ListItem>76</asp:ListItem>
            <asp:ListItem>77</asp:ListItem>
            <asp:ListItem>78</asp:ListItem>
            <asp:ListItem>79</asp:ListItem>
            <asp:ListItem>80</asp:ListItem>
            <asp:ListItem>81</asp:ListItem>
            <asp:ListItem>82</asp:ListItem>
            <asp:ListItem>83</asp:ListItem>
            <asp:ListItem>84</asp:ListItem>
            <asp:ListItem>85</asp:ListItem>
            <asp:ListItem>86</asp:ListItem>
            <asp:ListItem>87</asp:ListItem>
            <asp:ListItem>88</asp:ListItem>
            <asp:ListItem>89</asp:ListItem>
            <asp:ListItem>90</asp:ListItem>
            <asp:ListItem>91</asp:ListItem>
            <asp:ListItem>92</asp:ListItem>
            <asp:ListItem>93</asp:ListItem>
            <asp:ListItem>94</asp:ListItem>
            <asp:ListItem>95</asp:ListItem>
            <asp:ListItem>96</asp:ListItem>
            <asp:ListItem>97</asp:ListItem>
            <asp:ListItem>98</asp:ListItem>
            <asp:ListItem>99</asp:ListItem>
            <asp:ListItem>100</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
    <a class="titulosinput">Nome da(s) Vítima(s):</a> <asp:TextBox CssClass="marginbottom" ID="TextBoxNomeNomeVitima" runat ="server" /> <br />
    <a class="titulosinputask">O que vai informar?</a>
    <asp:RadioButtonList Style="margin:0 auto;" ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True">
        <asp:ListItem Value="CEP">Informar CEP</asp:ListItem>
        <asp:ListItem Value="Nomes">Informar Nomes</asp:ListItem>
    </asp:RadioButtonList> <br />
    <asp:Label ID="LabelCEP" runat="server" Text="CEP:" Visible="false"/> <asp:TextBox ID="TextBoxCEP" runat="server" Visible="false" AutoPostBack="True" OnTextChanged="TextBoxCEP_TextChanged" CssClass="marginbottom" /> <asp:Label Id="LabelAvisoCep" runat="server" /><br />
    <asp:Label ID="LabelCidade" runat="server" Text="Cidade:" Visible="false"/> <asp:TextBox ID="TextBoxCidade" runat="server" Visible="false" CssClass="marginbottom" /> <br />
    <asp:Label ID="LabelBairro" runat="server" Text="Nome da Bairro:" Visible="false" CssClass="marginbottom" /> <asp:TextBox ID="TextBoxBairro" runat="server" Visible="false" CssClass="marginbottom" /> <br />
    <asp:Label ID="LabelRua" runat="server" Text="Nome da Rua:" Visible="false"/> <asp:TextBox ID="TextBoxRua" runat="server" Visible="false" CssClass="marginbottom" /> <br />
    <asp:Label ID="LabelNumeroResidencia" runat="server" Text="Número da Residencia:" Visible="false"/> <asp:TextBox ID="TextBoxNumeroResidencia" runat="server" Visible="false" CssClass="marginbottom" /> <br />
    <div class="divtitulosinputask">
        <a class="titulosinputask">Informação Adicional</a>
    </div>
    <asp:TextBox CssClass="inputs" ID="TextBoxInfAdicional" runat ="server" TextMode="MultiLine" Height="156px" Width="416px" />	  <br />  
    <div class="botoes-ocorrencia">
        <asp:Button id="ButtonLimpar" class="buttonocorr" Text="Limpar" runat="server"/>
        <asp:Button id="ButtonConfirar" class="buttonocorr" runat="server" Text="Confirmar" OnClick="ButtonConfirar_Click"/><br />
    </div>
    <div class="divtitulosinputask">
        <asp:Label ID="titulosinputask" runat="server"  Text="Deseja Realizar um Chamado?" Visible="false"/><br />
    </div>
    <div class="confchamado botoes-ocorrencia">
    <asp:Button ID="ButtonSim" class="buttonocorr" runat="server" Text="Sim" visible="false" OnClick="ButtonSim_Click"/>
    <asp:Button ID="ButtonNao" class="buttonocorr" runat="server" Text="Não" visible="false" OnClick="ButtonNao_Click"/>
    </div>
        </div>
</asp:Content>
