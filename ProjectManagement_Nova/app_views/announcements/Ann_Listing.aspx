<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Ann_Listing.aspx.vb" Inherits="ProjectManagement_Nova.Ann_Listing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_headcss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphnest_main" runat="server">
    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Title</th>
                <th>Date Created</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="RptAnnounce" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td></td>
                                <td><%# Eval("annc_title") %></td>
                                <td></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphnest_js" runat="server">
</asp:Content>
