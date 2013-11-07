<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="relatorio.aspx.cs" Inherits="Questao_1.relatorio" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Relatório de registros de entrada e saída
    </h2>
    <br />
    <br />
    <fieldset>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSourceRegistros">
            <HeaderTemplate>
                <table>
                    <thead>
                        <td>
                            Nome
                        </td>
                        <td>
                            Tipo
                        </td>
                        <td>
                            Data / Hora
                        </td>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                
                <tr>
                    <td>
                        <%# Eval("UserName") %>
                    </td>
                    <td>
                        <%# Eval("Tipo") %>
                    </td>
                    <td>
                        <%# Eval("DataRegistro")%>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table></FooterTemplate>
        </asp:Repeater>
    </fieldset>
    <asp:SqlDataSource ID="SqlDataSourceRegistros" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT aspnet_Users.UserName, Registros.DataRegistro, Registros.Tipo FROM Registros INNER JOIN aspnet_Users ON Registros.id_User = aspnet_Users.UserId ORDER BY Registros.DataRegistro, aspnet_Users.UserName">
    </asp:SqlDataSource>
</asp:Content>
