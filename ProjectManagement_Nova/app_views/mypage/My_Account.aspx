<%@ Page Title="My Account" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="My_Account.aspx.vb" Inherits="ProjectManagement_Nova.My_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_headcss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphnest_main" runat="server">
    <article class="nova-article card">
        <header class="card-head">
            <h1 class="card-head-title">Information</h1>
        </header>
        <section class="card-body">
            <ul class="list-none">
                <li class="form-row">
                    <label class="form-label">First Name</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">First Name</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">Family Name</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">Email</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">2FA</label>
                    <div class="col">
                        <asp:RadioButtonList CssClass="checklist-buttons" ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem Selected="True">No</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">Suspended</label>
                    <div class="col">
                        <asp:RadioButtonList CssClass="checklist-buttons" ID="RadioButtonList2" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem Selected="True">No</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </li>
                <li class="form-row">
                    <div class="col offset">
                        <asp:Button ID="Button1" runat="server" Text="Update" />
                    </div>
                </li>
            </ul>
        </section>
    </article>
</asp:Content>
