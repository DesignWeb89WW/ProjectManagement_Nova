<%@ Page Title="Dashboard" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Dash.aspx.vb" Inherits="ProjectManagement_Nova.Dash" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphnest_headcss" runat="server">
    <style>
        .col .card {
            margin-bottom: .5rem;
        }

        .height100 {
            height: calc(100% - .5rem);
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_main" runat="server">
    <section class="mb-1">
        <div class="row up-md-ratio-1-3">
            <div class="col text-center">
                <ul class="row up-md-2">
                    <li class="col">
                        <div class="card card-panel">
                            <div style="font-size: 1.3rem;">20</div>
                            <div style="font-size: 1.15rem;">Projects</div>
                        </div>
                    </li>
                    <li class="col">
                        <div class="card card-panel">
                            <div style="font-size: 1.3rem;">20</div>
                            <div style="font-size: 1.15rem;">Projects</div>
                        </div>
                    </li>
                    <%--</ul>
                <ul class="row up-md-2">--%>
                    <li class="col">
                        <div class="card card-panel">
                            <div style="font-size: 1.3rem;">20</div>
                            <div style="font-size: 1.15rem;">Projects</div>
                        </div>
                    </li>
                    <li class="col">
                        <div class="card card-panel">
                            <div style="font-size: 1.3rem;">20</div>
                            <div style="font-size: 1.15rem;">Projects</div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col">
                <div class="card-panel card height100">
                    Bar chart for Mr / SR
                </div>
            </div>
        </div>
    </section>

    <section class="mb-1">
        <div class="card">
            <div class="card-head">
                <h4 class="card-head-title">Recent Announcements</h4>
            </div>
            <div class="card-body">
                <ul class="list-none">
                    <asp:Repeater ID="RptAnnounce" runat="server" OnItemDataBound="RptAnnounce_ItemDataBound">
                        <ItemTemplate>
                            <li>
                                <h3><%# Eval("annc_title") %></h3>
                                <asp:Literal ID="ltitem_news" runat="server" Text='<%# Eval("annc_content") %>'></asp:Literal>
                            </li>
                        </ItemTemplate>
                        <SeparatorTemplate>
                            <li class="divider">
                                <i class="sr-only">Seperator</i>
                            </li>
                        </SeparatorTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </section>

    <section>
        <ul class="row">
            <li class="col">
                <div class="card">
                    <div class="card-head">
                        <h4 class="card-head-title">Recent Activity</h4>
                    </div>
                    <div class="card-body">sdsds</div>
                </div>
            </li>
            <li class="col">
                <div class="card">
                    <div class="card-head">
                        <h4 class="card-head-title">Recent Users</h4>
                    </div>
                    <div class="card-body">sdsds</div>
                </div>
            </li>
            <li class="col">
                <div class="card">
                    <div class="card-head">
                        <h4 class="card-head-title">Top Projects</h4>
                    </div>
                    <div class="card-body">sdsds</div>
                </div>
            </li>
        </ul>
    </section>
</asp:Content>
