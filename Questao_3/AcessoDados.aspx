<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="AcessoDados.aspx.cs" Inherits="Questao_3.AcessoDadosPage" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label Text="Código" AssociatedControlID="TextBoxCodigo" runat="server" 
        meta:resourcekey="LabelResource1" />
    <asp:TextBox ID="TextBoxCodigo" runat="server" 
        meta:resourcekey="TextBoxCodigoResource1"></asp:TextBox>
    <asp:Label Text="Descrição" runat="server" meta:resourcekey="LabelResource2" />
    <asp:TextBox ID="TextBoxDescricao" runat="server" 
        meta:resourcekey="TextBoxDescricaoResource1"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="ButtonGravar" Text="Gravar" runat="server" 
        onclick="ButtonGravar_Click" meta:resourcekey="ButtonGravarResource1" />
    <br />
    <br />
    <asp:Label ID="LabelMessage" runat="server" 
        meta:resourcekey="LabelMessageResource1" />
</asp:Content>
