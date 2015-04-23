<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreatePrice.aspx.cs" Inherits="FlextrafikWebApplication.Account.CreatePrice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h2>Tilføj priser</h2>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="StartupFeeWeekday" CssClass="col-md-2 control-label">Opstartsgebyr (hverdag)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="StartupFeeWeekday" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="StartupFeeWeekday"
                    CssClass="text-danger" ErrorMessage="Du skal inkludere et opstartsgebyr (hverdag)." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RunningRateWeekday" CssClass="col-md-2 control-label">Timepris for køretid (hverdag)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RunningRateWeekday" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="RunningRateWeekday"
                    CssClass="text-danger" ErrorMessage="Du skal angive et timepris for køretid (hverdag)." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="WaitingRateWeekday" CssClass="col-md-2 control-label">Timepris for ventetid (hverdag)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="WaitingRateWeekday" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="WaitingRateWeekday"
                    CssClass="text-danger" ErrorMessage="Du skal angive et timepris for ventetid (hverdag)." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="StartupFeeEvening" CssClass="col-md-2 control-label">Opstartsgebyr (aften/nat)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="StartupFeeEvening" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="StartupFeeEvening"
                    CssClass="text-danger" ErrorMessage="Du skal inkludere et opstartsgebyr (aften/nat)." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RunningRateEvening" CssClass="col-md-2 control-label">Timepris for køretid (aften/nat)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RunningRateEvening" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="RunningRateEvening"
                    CssClass="text-danger" ErrorMessage="Du skal angive et timepris for køretid (aften/nat)." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="WaitingRateEvening" CssClass="col-md-2 control-label">Timepris for ventetid (aften/nat)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="WaitingRateEvening" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="WaitingRateEvening"
                    CssClass="text-danger" ErrorMessage="Du skal angive et timepris for ventetid (aften/nat)." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="StartupFeeWeekend" CssClass="col-md-2 control-label">Opstartsgebyr (weekend/helligdag)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="StartupFeeWeekend" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="StartupFeeWeekend"
                    CssClass="text-danger" ErrorMessage="Du skal inkludere opstartsgebyr (weekend/helligdag)." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RunningRateWeekend" CssClass="col-md-2 control-label">Timepris for køretid (weekend/helligdag)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RunningRateWeekend" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="RunningRateWeekend"
                    CssClass="text-danger" ErrorMessage="Du skal angive et timepris for køretid (weekend/helligdag)." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="WaitingRateWeekend" CssClass="col-md-2 control-label">Timepris for ventetid (weekend/helligdag)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="WaitingRateWeekend" TextMode="SingleLine" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="WaitingRateWeekend"
                    CssClass="text-danger" ErrorMessage="Du skal angive et timepris for ventetid (weekend/helligdag)." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="OtherInfo" CssClass="col-md-2 control-label">Yderligere oplysninger</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="OtherInfo" TextMode="SingleLine" CssClass="form-control" />
            </div>
        </div>
        <div class="col-md-offset-2 col-md-10">
            <br />
            <asp:Button ID="CreatePriceButton" runat="server" Text="Gem" OnClick="CreatePriceButton_Click" />
        </div>  
    </div>
</asp:Content>
