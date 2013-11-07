<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ConcursadosEdit.aspx.cs" Inherits="Questao_2.ConcursadosEdit" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView runat="server" DefaultMode="Insert" 
    DataSourceID="ObjectDataSourceConcursados" meta:resourcekey="FormViewResource1">
        <EditItemTemplate>
            Nome:
            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' 
                meta:resourcekey="NomeTextBoxResource1" />
            <br />
            DataNascimento:
            <asp:TextBox ID="DataNascimentoTextBox" runat="server" 
                Text='<%# Bind("DataNascimento") %>' 
                meta:resourcekey="DataNascimentoTextBoxResource1" />
            <br />
            DataAdmissao:
            <asp:TextBox ID="DataAdmissaoTextBox" runat="server" 
                Text='<%# Bind("DataAdmissao") %>' 
                meta:resourcekey="DataAdmissaoTextBoxResource1" />
            <br />
            ValeRefeicao:
            <asp:TextBox ID="ValeRefeicaoTextBox" runat="server" 
                Text='<%# Bind("ValeRefeicao") %>' 
                meta:resourcekey="ValeRefeicaoTextBoxResource1" />
            <br />
            ValeTransporte:
            <asp:TextBox ID="ValeTransporteTextBox" runat="server" 
                Text='<%# Bind("ValeTransporte") %>' 
                meta:resourcekey="ValeTransporteTextBoxResource1" />
            <br />
            Salario:
            <asp:TextBox ID="SalarioTextBox" runat="server" Text='<%# Bind("Salario") %>' 
                meta:resourcekey="SalarioTextBoxResource1" />
            <br />
            ValorGratificacao:
            <asp:TextBox ID="ValorGratificacaoTextBox" runat="server" 
                Text='<%# Bind("ValorGratificacao") %>' 
                meta:resourcekey="ValorGratificacaoTextBoxResource1" />
            <br />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update"
                Text="Update" meta:resourcekey="UpdateButtonResource1" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="Cancel" 
                meta:resourcekey="UpdateCancelButtonResource1" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Nome:
            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' 
                meta:resourcekey="NomeTextBoxResource2" />
            <br />
            DataNascimento:
            <asp:TextBox ID="DataNascimentoTextBox" runat="server" 
                Text='<%# Bind("DataNascimento") %>' 
                meta:resourcekey="DataNascimentoTextBoxResource2" />
            <br />
            DataAdmissao:
            <asp:TextBox ID="DataAdmissaoTextBox" runat="server" 
                Text='<%# Bind("DataAdmissao") %>' 
                meta:resourcekey="DataAdmissaoTextBoxResource2" />
            <br />
            ValeRefeicao:
            <asp:TextBox ID="ValeRefeicaoTextBox" runat="server" 
                Text='<%# Bind("ValeRefeicao") %>' 
                meta:resourcekey="ValeRefeicaoTextBoxResource2" />
            <br />
            ValeTransporte:
            <asp:TextBox ID="ValeTransporteTextBox" runat="server" 
                Text='<%# Bind("ValeTransporte") %>' 
                meta:resourcekey="ValeTransporteTextBoxResource2" />
            <br />
            Salario:
            <asp:TextBox ID="SalarioTextBox" runat="server" Text='<%# Bind("Salario") %>' 
                meta:resourcekey="SalarioTextBoxResource2" />
            <br />
             ValorGratificacao:
            <asp:TextBox ID="ValorGratificacaoTextBox" runat="server" 
                Text='<%# Bind("ValorGratificacao") %>' 
                meta:resourcekey="ValorGratificacaoTextBoxResource2" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert"
                Text="Insert" meta:resourcekey="InsertButtonResource1" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                CommandName="Cancel" Text="Cancel" 
                meta:resourcekey="InsertCancelButtonResource1" />
        </InsertItemTemplate>
        <ItemTemplate>
            ValorGratificacao:
            <asp:Label ID="ValorGratificacaoLabel" runat="server" 
                Text='<%# Bind("ValorGratificacao") %>' 
                meta:resourcekey="ValorGratificacaoLabelResource1" />
            <br />
            id_Funcionario:
            <asp:Label ID="id_FuncionarioLabel" runat="server" 
                Text='<%# Bind("id_Funcionario") %>' 
                meta:resourcekey="id_FuncionarioLabelResource1" />
            <br />
            Nome:
            <asp:Label ID="NomeLabel" runat="server" Text='<%# Bind("Nome") %>' 
                meta:resourcekey="NomeLabelResource1" />
            <br />
            DataNascimento:
            <asp:Label ID="DataNascimentoLabel" runat="server" 
                Text='<%# Bind("DataNascimento") %>' 
                meta:resourcekey="DataNascimentoLabelResource1" />
            <br />
            DataAdmissao:
            <asp:Label ID="DataAdmissaoLabel" runat="server" 
                Text='<%# Bind("DataAdmissao") %>' 
                meta:resourcekey="DataAdmissaoLabelResource1" />
            <br />
            ValeRefeicao:
            <asp:Label ID="ValeRefeicaoLabel" runat="server" 
                Text='<%# Bind("ValeRefeicao") %>' 
                meta:resourcekey="ValeRefeicaoLabelResource1" />
            <br />
            ValeTransporte:
            <asp:Label ID="ValeTransporteLabel" runat="server" 
                Text='<%# Bind("ValeTransporte") %>' 
                meta:resourcekey="ValeTransporteLabelResource1" />
            <br />
            Salario:
            <asp:Label ID="SalarioLabel" runat="server" Text='<%# Bind("Salario") %>' 
                meta:resourcekey="SalarioLabelResource1" />
            <br />
            EntityState:
            <asp:Label ID="EntityStateLabel" runat="server" 
                Text='<%# Bind("EntityState") %>' 
                meta:resourcekey="EntityStateLabelResource1" />
            <br />
            EntityKey:
            <asp:Label ID="EntityKeyLabel" runat="server" Text='<%# Bind("EntityKey") %>' 
                meta:resourcekey="EntityKeyLabelResource1" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                Text="Edit" meta:resourcekey="EditButtonResource1" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                Text="Delete" meta:resourcekey="DeleteButtonResource1" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectDataSourceConcursados" runat="server" DataObjectTypeName="Questao_2.Concursado"
        DeleteMethod="DeletaConcursado" SelectMethod="RetornaConcursados" TypeName="Questao_2.EmpresaGamaBLL"
        UpdateMethod="AtualizaConcursado" InsertMethod="InsereConcursados" />
</asp:Content>
