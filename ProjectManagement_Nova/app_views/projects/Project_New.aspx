<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Project_New.aspx.vb" Inherits="ProjectManagement_Nova.Project_New" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_headcss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphnest_main" runat="server">
    <article class="nova-article">
        <header class="marg-header nova-article-header">
            <h4 style="margin: 0;">New Project</h4>
        </header>
        <div class="pad1">
            <ul class="list-none">
                <li class="form-row">
                    <label class="form-label">Project Name</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">Client</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">Description</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">Official Start Date</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">Status</label>
                    <div class="col">
                        <asp:RadioButtonList CssClass="checklist-buttons" RepeatDirection="Horizontal" ID="RadioButtonList1" runat="server">
                            <asp:ListItem Selected="True">New</asp:ListItem>
                            <asp:ListItem>In Progress</asp:ListItem>
                            <asp:ListItem>Pending Closure</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </li>
                <li class="form-row">
                    <div class="col offset">
                        <asp:Button ID="BtnNew" runat="server" Text="Generate New Project" />
                    </div>
                </li>
            </ul>
        </div>
    </article>
</asp:Content>
