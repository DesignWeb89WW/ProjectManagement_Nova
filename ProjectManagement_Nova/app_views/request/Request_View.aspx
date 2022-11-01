<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Request_View.aspx.vb" Inherits="ProjectManagement_Nova.Request_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_headcss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphnest_main" runat="server">
    <article class="nova-article">
        <header class="nova-article-header">
            <h2>Request Subject and Num</h2>
        </header>
        <div class="pad1">
            <ul class="row up-md-2">
                <li class="col">
                    <div class="form-row">
                        <strong class="form-label">Type</strong>
                        <div class="col">
                            <asp:Label CssClass="text-control" ID="Label1" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </li>
                <li class="col">
                    <div class="form-row">
                        <strong class="form-label">Type</strong>
                        <div class="col">
                            <asp:Label CssClass="text-control" ID="Label2" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </li>
                <li class="col">
                    <div class="form-row">
                        <strong class="form-label">Type</strong>
                        <div class="col">
                            <asp:Label CssClass="text-control" ID="Label3" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </li>
                <li class="col">
                    <div class="form-row">
                        <strong class="form-label">Type</strong>
                        <div class="col">
                            <asp:Label CssClass="text-control" ID="Label4" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </li>
                <li class="col">
                    <div class="form-row">
                        <strong class="form-label">Type</strong>
                        <div class="col">
                            <asp:Label CssClass="text-control" ID="Label5" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </li>
            </ul>
            <hr />
            <h4>Description</h4>
                <p><asp:Literal ID="Literal1" runat="server"></asp:Literal></p>
            <h4>Files Uploaded</h4>
            <table class="border">
                <thead>
                    <tr>
                        <th>File</th>
                        <th>Uploaded</th>
                        <th>Optional Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>SQL_Test.sql</td>
                        <td>October 17 2022</td>
                        <td>Find the information from Production</td>
                        <td>Remove</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </article>
</asp:Content>
