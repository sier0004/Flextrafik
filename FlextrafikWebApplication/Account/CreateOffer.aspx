<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateOffer.aspx.cs" Inherits="FlextrafikWebApplication.CreateOffer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Opret et nyt tilbud</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CarID" CssClass="col-md-2 control-label">Vogn-ID</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="CarID" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CarID"
                    CssClass="text-danger" ErrorMessage="Du skal angive et vogn-ID." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="OfferNumber" CssClass="col-md-2 control-label">Tilbudsnummer</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="OfferNumber" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="OfferNumber"
                    CssClass="text-danger" ErrorMessage="Du skal inkludere et tilbudsnummer." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="GuaranteeCarNumber" CssClass="col-md-2 control-label">Garantivogn nummer</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="GuaranteeCarNumber" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="GuaranteeCarNumber"
                    CssClass="text-danger" ErrorMessage="Du skal angive et garantivogn nummer." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RegistrationNumber" CssClass="col-md-2 control-label">Registreringsnr.</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RegistrationNumber" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="RegistrationNumber"
                    CssClass="text-danger" ErrorMessage="Du skal angive et registreringsnr." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ContactTelephone" CssClass="col-md-2 control-label">Telefonnummer</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ContactTelephone" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ContactTelephone"
                    CssClass="text-danger" ErrorMessage="Du skal angive et telefonnummer." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server">Vogntype</asp:Label>
            <br />  
            <div class="col-md-10">
                <br />  
                <asp:RadioButton ID="CarType1" runat="server" CssClass="col-md-2 control-label" Text="Type 1" />
            </div>
            <div class="col-md-10">
                <asp:RadioButton ID="CarType2" runat="server" CssClass="col-md-2 control-label" Text="Type 2" />
            </div>
            <div class="col-md-10">
                <asp:RadioButton ID="CarType3" runat="server" CssClass="col-md-2 control-label" Text="Type 3" />
            </div>
            <div class="col-md-10">
                <asp:RadioButton ID="CarType4" runat="server" CssClass="col-md-2 control-label" Text="Type 4" />
            </div>
            <div class="col-md-10">
                <asp:RadioButton ID="CarType5" runat="server" CssClass="col-md-2 control-label" Text="Type 5" />
            </div>
            <div class="col-md-10">
                <asp:RadioButton ID="CarType6" runat="server"  Text="Type 6 (med trappemaskine)" />
            </div>
            <br />  
            <div class="col-md-offset-2 col-md-10">
                <br />  
                <asp:Button ID="CreateOfferButton" runat="server" Text="Opret" OnClick="CreateOfferButton_Click" />
            </div>  
        </div>
    </div>
</asp:Content>
