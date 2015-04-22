<%@ Page Title="Registrer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FlextrafikWebApplication.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Opret en ny konto</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="Du skal angive en email." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CompanyName" CssClass="col-md-2 control-label">Firmanavn</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CompanyName" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CompanyName"
                    CssClass="text-danger" ErrorMessage="Du skal angive et firmanavn." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="SecondaryCompany" CssClass="col-md-2 control-label">Evt. sekundært firma</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="SecondaryCompany" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="SecondaryCompany" CssClass="text-danger" />
            </div>
        </div>
        <p></p>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CVR" CssClass="col-md-2 control-label">CVR-nr.</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CVR" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CVR"
                    CssClass="text-danger" ErrorMessage="Du skal angive et CVR-nummer." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Adgangskode</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Du skal oprette en adgangskode." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Bekræft adgangskode</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Du skal oprette en adgangskode." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Adgangskoder skal være ens." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Registrer" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
