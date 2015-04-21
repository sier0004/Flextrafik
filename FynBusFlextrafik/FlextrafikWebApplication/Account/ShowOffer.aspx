<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowOffer.aspx.cs" Inherits="FlextrafikWebApplication.ShowOffer" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"></p>
        </asp:PlaceHolder>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Tilbudsoversigt</h4>
                <hr />
                <%--<dl class="dl-horizontal">
                    <dt>Tilbud:</dt>
                </dl>--%>
            </div>
        </div>
    </div>
</asp:Content>
