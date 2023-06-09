<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Ann_Listing.aspx.vb" Inherits="ProjectManagement_Nova.Ann_Listing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_headcss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphnest_main" runat="server">
    <table class="border">
        <thead>
            <tr>
                <th>#</th>
                <th>Title</th>
                <th>Date Created</th>
                <th>View</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="RptAnnounce" runat="server" OnItemDataBound="RptAnnounce_ItemDataBound">
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("annc_title") %></td>
                        <td><%# Eval("date_created") %></td>
                        <td>
                            <a class="js-modal-callup-tgt" href='#pop_<%# Container.ItemIndex + 1 %>'>Select</a>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("idnum", "~/announcements/edit/{0}") %>'>Edit</asp:HyperLink>
                            <aside class="nova-modal js-modal" id="pop_<%# Container.ItemIndex + 1 %>">
                                <section class="nova-modal-dialog">
                                    <header class="nova-modal-header">
                                        <h3 class="title"><%# Eval("annc_title") %></h3>
                                    </header>
                                    <div class="nova-modal-content">
                                        <asp:Literal ID="ltitem_content" runat="server" Text=''></asp:Literal>
                                        <asp:HiddenField ID="hdfitem_acccontent" runat="server" Value='<%# Eval("annc_content") %>' />
                                    </div>
                                    <footer class="nova-modal-footer">
                                        <button type="button" class="js-modal-closeall">Close</button>
                                    </footer>
                                </section>
                            </aside>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphnest_js" runat="server">
    
</asp:Content>
