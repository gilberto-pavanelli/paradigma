<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ControlesWeb.aspx.cs" Inherits="Questao_3.ControlesWeb" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<%@ Register Assembly="Questao_3_Framework_ControlesWeb" Namespace="Framework_ControlesWeb"
    TagPrefix="Framework" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Exemplos de uso do Framework (Controles Web)
    </h2>
    <br />
    <framework:gtextbox id='GTextBox' width="300px" runat="server" 
        text='Exemplo TextBox ReadOnly = False' meta:resourcekey="GTextBoxResource1"></framework:gtextbox>
    <br />
    <framework:gtextbox id='GTextBoxReadOnly' width="300px" readonly="True" 
        runat="server" text='Exemplo TextBox ReadOnly = True' 
        meta:resourcekey="GTextBoxReadOnlyResource1"></framework:gtextbox>
    <br />
    <br />
    <framework:gbutton id='GButton' ExigirConfirmacao="False" runat="server" 
        text='ExigirConfirmacao = False' meta:resourcekey="GButtonResource1"   />
    <br />
    <br />
    <framework:gbutton id='GButtonExigirConfirmacao' exigirconfirmacao="True" 
        runat="server" text='ExigirConfirmacao = True'
        onclick="GButton_Click" 
        meta:resourcekey="GButtonExigirConfirmacaoResource1" />
    <br />
    <asp:Label ID="LabelMessage" runat="server" 
        meta:resourcekey="LabelMessageResource1" />
</asp:Content>
