﻿<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="Questao_1.Account.Register" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="False" 
        OnCreatedUser="RegisterUser_CreatedUser" 
        meta:resourcekey="RegisterUserResource1">
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server" 
                meta:resourcekey="RegisterUserWizardStepResource1">
                <ContentTemplate>
                    <h2>
                        Criar novo colaborador
                    </h2>
                    <p>
                        Use o formulário abaixo para criar novo colaborador.
                    </p>
                    <p>
                        Senhas devem conter caracteres no mínimo.
                    </p>
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server" 
                        meta:resourcekey="ErrorMessageResource1"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" 
                         ValidationGroup="RegisterUserValidationGroup" 
                        meta:resourcekey="RegisterUserValidationSummaryResource1"/>
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>Informações do colaborador</legend>
                            <p>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" 
                                    meta:resourcekey="UserNameLabelResource1">Usuário:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry" 
                                    meta:resourcekey="UserNameResource1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                     CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                     ValidationGroup="RegisterUserValidationGroup" 
                                    meta:resourcekey="UserNameRequiredResource1">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email" 
                                    meta:resourcekey="EmailLabelResource1">E-mail:</asp:Label>
                                <asp:TextBox ID="Email" runat="server" CssClass="textEntry" 
                                    meta:resourcekey="EmailResource1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" 
                                     CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required." 
                                     ValidationGroup="RegisterUserValidationGroup" 
                                    meta:resourcekey="EmailRequiredResource1">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                                    meta:resourcekey="PasswordLabelResource1">Senha:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" 
                                    TextMode="Password" meta:resourcekey="PasswordResource1"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                     CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                                     ValidationGroup="RegisterUserValidationGroup" 
                                    meta:resourcekey="PasswordRequiredResource1">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword" 
                                    meta:resourcekey="ConfirmPasswordLabelResource1">Confirme a senha:</asp:Label>
                                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" 
                                    TextMode="Password" meta:resourcekey="ConfirmPasswordResource1"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" 
                                    CssClass="failureNotification" Display="Dynamic" 
                                     ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired" runat="server" 
                                     ToolTip="Confirm Password is required." 
                                    ValidationGroup="RegisterUserValidationGroup" 
                                    meta:resourcekey="ConfirmPasswordRequiredResource1">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                     CssClass="failureNotification" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                     ValidationGroup="RegisterUserValidationGroup" 
                                    meta:resourcekey="PasswordCompareResource1">*</asp:CompareValidator>
                            </p>
                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Criar" 
                                 ValidationGroup="RegisterUserValidationGroup" 
                                meta:resourcekey="CreateUserButtonResource1"/>
                        </p>
                    </div>
                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
<asp:CompleteWizardStep runat="server"></asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
