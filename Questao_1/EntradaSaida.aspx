<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="EntradaSaida.aspx.cs" Inherits="Questao_1.EntradaSaida" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td  valign="top">
                <fieldset>
                    <legend>Regsitro de entrada e saída</legend>
                    <asp:RadioButtonList runat="server" ID="RadioButtonListTipo" 
                        RepeatDirection="Horizontal" meta:resourcekey="RadioButtonListTipoResource1">
                        <asp:ListItem meta:resourcekey="ListItemResource1">Entrada</asp:ListItem>
                        <asp:ListItem meta:resourcekey="ListItemResource2">Saída</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <br />
                    <asp:Button Text="Registrar" ID="ButtonRegistrar" runat="server" 
                        OnClick="ButtonRegistrar_Click" meta:resourcekey="ButtonRegistrarResource1">
                    </asp:Button>
                </fieldset>
            </td>
            <td valign="top">
                <fieldset>
                    <legend>Registros</legend>
                    <asp:GridView ID="GridViewRegistros" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Registro"
                        DataSourceID="SqlDataSourceEntradaSaida" AllowPaging="True" 
                        AllowSorting="True" meta:resourcekey="GridViewRegistrosResource1">
                        <Columns>
                            <asp:BoundField DataField="id_Registro" Visible="false" HeaderText="id_Registro"
                                ReadOnly="True" SortExpression="id_Registro" 
                                meta:resourcekey="BoundFieldResource1" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" 
                                meta:resourcekey="BoundFieldResource2" />
                            <asp:BoundField DataField="DataRegistro" HeaderText="DataRegistro" 
                                SortExpression="DataRegistro" meta:resourcekey="BoundFieldResource3" />
                            <asp:BoundField DataField="id_User" HeaderText="id_User" Visible="false" 
                                SortExpression="id_User" meta:resourcekey="BoundFieldResource4" />
                        </Columns>
                    </asp:GridView>
                </fieldset>
            </td>
           
        </tr>
    </table>
    
    <asp:SqlDataSource ID="SqlDataSourceEntradaSaida" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        
        SelectCommand="SELECT id_Registro, Tipo, DataRegistro, id_User FROM Registros WHERE (id_User = @id_User) AND (DataRegistro = @DataRegistro)">
        <SelectParameters>
            <asp:SessionParameter Name="id_User" SessionField="id_User" Type="Object" />
           
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>
