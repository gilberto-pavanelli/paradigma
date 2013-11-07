<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TerceirizadoEdit.aspx.cs" Inherits="Questao_2.TerceirizadoEdit" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent"  runat="server">
    <asp:FormView DefaultMode="Insert" ID="FormViewTerceirizados" runat="server" 
        DataSourceID="ObjectDataSource1" 
        meta:resourcekey="FormViewTerceirizadosResource1">
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
        AuxilioFaculdade:
        <asp:TextBox ID="AuxilioFaculdadeTextBox" runat="server" 
            Text='<%# Bind("AuxilioFaculdade") %>' 
            meta:resourcekey="AuxilioFaculdadeTextBoxResource1" />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" 
            CommandName="Update" Text="Update" 
            meta:resourcekey="UpdateButtonResource1" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="Cancel" 
            meta:resourcekey="UpdateCancelButtonResource1" />
    </EditItemTemplate>
        <InsertItemTemplate>
           
           
            Nome:
            <asp:TextBox ID="NomeTextBox" runat="server" Text='<%# Bind("Nome") %>' 
                meta:resourcekey="NomeTextBoxResource2" />
            <br />
            DataNascimento:
            <asp:TextBox ID="DataNascimentoTextBox" runat="server"  
                Text='<%# Bind("DataNascimento", "{0:dd/MM/yyyy}") %>' 
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
           AuxilioFaculdade:
            <asp:TextBox ID="AuxilioFaculdadeTextBox" runat="server" 
                Text='<%# Bind("AuxilioFaculdade") %>' 
                meta:resourcekey="AuxilioFaculdadeTextBoxResource2" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" 
                CommandName="Insert" Text="Insert" 
                meta:resourcekey="InsertButtonResource1" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                meta:resourcekey="InsertCancelButtonResource1" />
        </InsertItemTemplate>
        <ItemTemplate>
           
            
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
             AuxilioFaculdade:
            <asp:Label ID="AuxilioFaculdadeLabel" runat="server" 
                Text='<%# Bind("AuxilioFaculdade") %>' 
                meta:resourcekey="AuxilioFaculdadeLabelResource1" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" meta:resourcekey="EditButtonResource1" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" 
                meta:resourcekey="DeleteButtonResource1" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="New" meta:resourcekey="NewButtonResource1" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectDataSourceTerceirizados" runat="server" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="old{0}"
        DataObjectTypeName="Questao_2.Terceirizado" DeleteMethod="DeletaTerceirizado" 
        InsertMethod="InsereTerceirizados" SelectMethod="RetornaTerceirizadoPorCodigo" 
        TypeName="Questao_2.EmpresaGamaBLL" UpdateMethod="AtualizaTerceirizado">
        <SelectParameters>
            <asp:QueryStringParameter DbType="Guid" Name="oCodigo" 
                QueryStringField="codigo" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="oTerceirizado" Type="Object" />
            <asp:Parameter Name="oldoTerceirizado" Type="Object" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
