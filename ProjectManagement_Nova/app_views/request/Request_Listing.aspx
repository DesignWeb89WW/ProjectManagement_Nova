<%@ Page Title="Requests" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Request_Listing.aspx.vb" Inherits="ProjectManagement_Nova.Request_Listing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_main" runat="server">
    <aside class="mb-1 nova-card-counter hide">
        <ul class="list-none d-flex d-flex-align-items-center flex-gap">
            <li>
                <dl class="card card-panel">
                    <dt class="card-title">MR in Total</dt>
                    <dd>12</dd>
                </dl>
            </li>
            <li>
                <dl class="card card-panel">
                    <dt class="card-title">SR in Total</dt>
                    <dd>12</dd>
                </dl>
            </li>
        </ul>
        <ul class="list-none d-flex d-flex-align-items-center flex-gap">
            <li>
                <dl class="card card-panel">
                    <dt class="card-title">In Progress</dt>
                    <dd>0</dd>
                </dl>
            </li>
            <li>
                <dl class="card card-panel">
                    <dt class="card-title">Completed</dt>
                    <dd>3</dd>
                </dl>
            </li>
            <li>
                <dl class="card card-panel">
                    <dt class="card-title">Maintenance</dt>
                    <dd>12</dd>
                </dl>
            </li>
        </ul>
    </aside>

    <aside>
        <ul class="nova-tabs">
            <li>
                <asp:HyperLink CssClass="nova-tab-link active" ID="HyperLink1" runat="server">Maintenance</asp:HyperLink>
            </li>
            <li>
                <asp:HyperLink CssClass="nova-tab-link" ID="HyperLink3" runat="server">Production Logging</asp:HyperLink>
            </li>
            <li>
                <asp:HyperLink CssClass="nova-tab-link" ID="HyperLink2" runat="server">Servicing</asp:HyperLink>
            </li>
        </ul>
    </aside>
    <section class="bg-white pad1">
        <p>Go By priority then status</p>
        <p>Critical, High, Medium, Low</p>
        <%--<asp:Panel CssClass="nova-tab-pane" ID="Panel2" runat="server">
            
        </asp:Panel>
        <asp:Panel CssClass="nova-tab-pane" ID="Panel3" runat="server"></asp:Panel>
        <asp:Panel CssClass="nova-tab-pane" ID="Panel1" runat="server"></asp:Panel>--%>
        <table class="border">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Priority</th>
                    <th>Subject</th>
                    <th>Project</th>
                    <th>Status</th>
                    <th>Progress</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>23465</td>
                    <td>
                        <span>Critical</span>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink4" NavigateUrl="~/requests/edit/1" runat="server">HyperLink</asp:HyperLink>
                    </td>
                    <td>SEMSS</td>
                    <td>Maintenance</td>
                    <td>
                        <div class="nova-progress">
                            <div class="nova-progress-bar">
                            </div>
                                <span class="nova-progress-text">20%</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>23465</td>
                    <td>
                        <span>Normal</span>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink5" NavigateUrl="~/requests/edit/1" runat="server">HyperLink</asp:HyperLink>
                    </td>
                    <td>SEMSS</td>
                    <td>Maintenance</td>
                    <td>
                        <div class="nova-progress">
                            <div class="nova-progress-bar" style="width: 45%">
                            </div>
                                <span class="nova-progress-text">45%</span>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </section>
</asp:Content>
