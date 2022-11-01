<%@ Page Title="My Overview" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="My_Overview.aspx.vb" Inherits="ProjectManagement_Nova.My_Overview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_headcss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphnest_main" runat="server">
    <article>
        <section class="card mb-1">
            <header class="card-head">
                <h2 class="card-head-title">Associated Projects</h2>
            </header>
            <div class="card-body">
                <table class="border">
                    <thead>
                        <tr>
                            <th>Project</th>
                            <th>Assigned Role(s)</th>
                            <th>Registered on</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </section>
        <section class="card mb-1">
            <header class="card-head">
                <h2 class="card-head-title">Issues Assigned to me</h2>
            </header>
            <div class="card-body">
                <table class="border">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Project</th>
                            <th>Tracker</th>
                            <th>Status</th>
                            <th>Subject</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </section>
        <section class="card mb-1">
            <header class="card-head">
                <h2 class="card-head-title">Issues Reported by me</h2>
            </header>
            <div class="card-body">
                <table class="border">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Project</th>
                            <th>Tracker</th>
                            <th>Status</th>
                            <th>Subject</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </section>
    </article>
</asp:Content>
