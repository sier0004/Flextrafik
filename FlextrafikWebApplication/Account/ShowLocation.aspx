<%@ Page Title="Hjemsteder" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowLocation.aspx.cs" Inherits="FlextrafikWebApplication.Account.ShowLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="locations" runat="server" 
                DataKeyNames="LocationID" GroupItemCount="4"
                ItemType="FlextrafikWebApplication.Models.Location" SelectMethod="GetLocations">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>Ingen data.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                 <%--   <a href="OfferDetails.aspx?carID=<%#:Item.CarID%>">
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="OfferDetails.aspx?carID=<%#:Item.CarID%>">
                                        <span>
                                            <%#:Item.CarID%>
                                        </span>
                                    </a>--%>
                                    <br />
                                    <span>
                                        <b>Vejnavn: </b><%#:Item.StreetName%>
                                        <br />
                                        <b>Vejnummer: </b><%#:Item.StreetNumber%>
                                        <br />
                                        <b>Postnummer: </b><%#:Item.PostalCode%> 
                                        <br />
                                        <b>By: </b><%#:Item.City%> 
                                        <br />
                                        <b>Kommune: </b><%#:Item.Municipality%> 
                                    </span>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>
