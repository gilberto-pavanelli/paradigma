<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="XmlUtils.aspx.cs" Inherits="Questao_3.XmlUtils" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Exemplos de uso do Framework (XML Utils)
    </h2>
    <br />
    <asp:FileUpload id="FileUploadImportacao" runat="server" 
        meta:resourcekey="FileUploadImportacaoResource1" />
    <br />
    <br />
    <asp:Button runat="server" id="ButtonImportar" text="Upload xml" 
    onclick="ButtonImportar_Click" meta:resourcekey="ButtonImportarResource1"  />
    <br /><br />
   
</asp:Content>
