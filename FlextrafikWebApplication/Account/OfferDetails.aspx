<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OfferDetails.aspx.cs" Inherits="FlextrafikWebApplication.Account.OfferDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="carDetail" runat="server" ItemType="FlextrafikWebApplication.Models.Car" SelectMethod ="GetCar" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.CarID %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>&nbsp;</td>  
                    <td style="vertical-align: top; text-align:left;">
                        <span><b>Vogn-ID:</b>&nbsp;<%#:Item.CarID %></span>
                        <br />
                        <span><b>Tilbudsnummer:</b>&nbsp;<%#:Item.OfferNumber %></span>
                        <br />
                        <span><b>Garantivogn nummer:</b>&nbsp;<%#:Item.GuaranteeCarNumber %></span>
                        <br />
                        <span><b>Registreringsnr.:</b>&nbsp;<%#:Item.RegistrationNumber %></span>
                        <br />
                        <span><b>Telefonnummer:</b>&nbsp;<%#:Item.ContactTelephone %></span>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
