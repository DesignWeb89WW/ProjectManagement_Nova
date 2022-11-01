<%@ Page Title="Project Form - Update" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Project_Form.aspx.vb" Inherits="ProjectManagement_Nova.Project_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_headcss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphnest_main" runat="server">
    <article class="nova-article">
        <aside>
            <ul class="nova-tabs">
                <li>
                    <asp:HyperLink CssClass="nova-tab-link" ID="hpltab_primary" runat="server">Primary Details</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink CssClass="nova-tab-link" ID="hpltab_maintenance" runat="server">Maintenance Details</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink CssClass="nova-tab-link" ID="hpltab_file" runat="server">File Upload</asp:HyperLink>
                </li>
            </ul>
        </aside>
        <asp:Panel CssClass="pad1" ID="Pnl_Detail" runat="server" Visible="true">
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
                            <asp:ListItem>Closed</asp:ListItem>
                            <asp:ListItem>Completed</asp:ListItem>
                            <asp:ListItem>Debunked</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">Completion Date</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </div>
                </li>
            </ul>
            <hr />
            <ul class="list-none">
                <li class="form-row">
                    <label class="form-label">Members</label>
                    <div class="col">
                        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                    </div>
                </li>
                <li class="form-row">
                    <div class="col offset">
                        <asp:Button ID="BtnStep1_Update" runat="server" Text="Update Details" />
                    </div>
                </li>
            </ul>
        </asp:Panel>
        <asp:Panel CssClass="pad1" ID="Pnl_Maintenance" runat="server" Visible="false">
            <ul class="list-none">
                <li class="form-row">
                    <label class="form-label">Start Date</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">End Date</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">Status</label>
                    <div class="col">
                        <asp:RadioButtonList CssClass="checklist-buttons" RepeatDirection="Horizontal" ID="RadioButtonList2" runat="server">
                            <asp:ListItem Selected="True">Debugging</asp:ListItem>
                            <asp:ListItem>Ongoing Maintenance</asp:ListItem>
                            <asp:ListItem>Completed</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </li>
                <li class="form-row">
                    <div class="col offset">
                        <asp:Button ID="BtnStep2_Update" runat="server" Text="Update Details" />
                    </div>
                </li>
            </ul>
        </asp:Panel>
        <asp:Panel CssClass="pad1" ID="Pnl_File" runat="server" Visible="false">
            <div class="form-row mb-1">
                <label class="form-label">Upload Document</label>
                <div class="col">
                    <div class="input-group">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col offset">
                    <asp:Button ID="BtnUpload" runat="server" Text="Upload File" />
                </div>
            </div>
            <table class="border">
                <thead>
                    <tr>
                        <th colspan="4">Uploaded Files</th>
                    </tr>
                    <tr>
                        <th>File Name</th>
                        <th>File Type</th>
                        <th>Location</th>
                        <th>Action</th>
                    </tr>
                </thead>
            </table>
        </asp:Panel>
    </article>
</asp:Content>
