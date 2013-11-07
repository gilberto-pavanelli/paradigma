﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Concursados.aspx.cs" Inherits="Questao_2.Concursados" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HyperLink NavigateUrl="ConcursadosEdit.aspx" Text="Inserir novo" 
    runat="server" meta:resourcekey="HyperLinkResource1" />
    <br />
    <br />
    <asp:GridView runat="server" AllowPaging="True" AutoGenerateColumns="False" 
        DataSourceID="ObjectDataSourceConcursados" 
    meta:resourcekey="GridViewResource1" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                meta:resourcekey="CommandFieldResource1" />
           
            <asp:BoundField DataField="id_Funcionario" Visible="false" HeaderText="id_Funcionario" 
                SortExpression="id_Funcionario" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" 
                meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="DataNascimento" HeaderText="DataNascimento"  DataFormatString="{0:dd/MM/yyyy}"
                SortExpression="DataNascimento" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="DataAdmissao" HeaderText="DataAdmissao"  DataFormatString="{0:dd/MM/yyyy}"
                SortExpression="DataAdmissao" meta:resourcekey="BoundFieldResource4" />
            <asp:BoundField DataField="ValeRefeicao" HeaderText="ValeRefeicao"  DataFormatString="{0:C2}"
                SortExpression="ValeRefeicao" meta:resourcekey="BoundFieldResource5" />
            <asp:BoundField DataField="ValeTransporte" HeaderText="ValeTransporte"  DataFormatString="{0:C2}"
                SortExpression="ValeTransporte" meta:resourcekey="BoundFieldResource6" />
            <asp:BoundField DataField="Salario" HeaderText="Salario"  DataFormatString="{0:C2}"
                SortExpression="Salario" meta:resourcekey="BoundFieldResource7" />
                 <asp:BoundField DataField="ValorGratificacao" 
                HeaderText="ValorGratificacao"  DataFormatString="{0:C2}"
                SortExpression="ValorGratificacao" 
                meta:resourcekey="BoundFieldResource8" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSourceConcursados" runat="server" 
        DataObjectTypeName="Questao_2.Concursado" DeleteMethod="DeletaConcursado" 
        SelectMethod="RetornaConcursados" TypeName="Questao_2.EmpresaGamaBLL" 
        UpdateMethod="AtualizaConcursado" />
</asp:Content>
