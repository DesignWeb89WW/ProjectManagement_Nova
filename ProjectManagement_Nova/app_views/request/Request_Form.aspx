<%@ Page Title="Request Details" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Request_Form.aspx.vb" Inherits="ProjectManagement_Nova.Request_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_main" runat="server">
    <article class="nova-article pad1">
        <ul class="nova-tabs head-margin" runat="server" id="reqTabs">
            <li>
                <asp:HyperLink CssClass="nova-tab-link" ID="hpltab_d" runat="server">Details</asp:HyperLink>
            </li>
            <li>
                <asp:HyperLink CssClass="nova-tab-link" ID="hpltab_f" runat="server">File Upload</asp:HyperLink>
            </li>
        </ul>

        <asp:Panel CssClass="pad1" ID="Pnl_Detail" runat="server" Visible="true">
            <fieldset class="border">
                <legend>Primary Details</legend>

                <ul class="list-none">
                    <li class="form-row">
                        <label class="form-label">Request Type</label>
                        <div class="col">
                            <asp:RadioButtonList CssClass="checklist-buttons" RepeatDirection="Horizontal" ID="RadioButtonList1" runat="server">
                                <asp:ListItem Selected="True">MR</asp:ListItem>
                                <asp:ListItem>PR</asp:ListItem>
                                <asp:ListItem>SR</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Target Server</label>
                        <div class="col">
                            <asp:RadioButtonList CssClass="checklist-buttons" RepeatDirection="Horizontal" ID="RadioButtonList2" runat="server">
                                <asp:ListItem Selected="True">UAT</asp:ListItem>
                                <asp:ListItem>PROD</asp:ListItem>
                                <asp:ListItem Value="NA">Not Applicable</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Project</label>
                        <div class="col">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Select Project</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Subject</label>
                        <div class="col">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Description of Request</label>
                        <div class="col">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Reported By</label>
                        <div class="col">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Reported On</label>
                        <div class="col">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Status</label>
                        <div class="col">
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>New</asp:ListItem>
                                <asp:ListItem>Ongoing</asp:ListItem>
                                <asp:ListItem>Pending Endorsement</asp:ListItem>
                                <asp:ListItem>Pending Closure</asp:ListItem>
                                <asp:ListItem>Closed</asp:ListItem>
                                <asp:ListItem>Completed</asp:ListItem>
                                <asp:ListItem>Rejected</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Priority</label>
                        <div class="col">
                            <asp:RadioButtonList CssClass="checklist-buttons" RepeatDirection="Horizontal" ID="RadioButtonList3" runat="server">
                                <asp:ListItem Selected="True">Low</asp:ListItem>
                                <asp:ListItem>Medium</asp:ListItem>
                                <asp:ListItem>High</asp:ListItem>
                                <asp:ListItem>Critical</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Members (based on project assignment)</label>
                        <div class="col">
                            <asp:CheckBoxList CssClass="asp-checklist" ID="CheckBoxList1" RepeatDirection="Vertical" runat="server">
                                <asp:ListItem>Name</asp:ListItem>
                                <asp:ListItem>Name</asp:ListItem>
                                <asp:ListItem>Name</asp:ListItem>
                                <asp:ListItem>Name</asp:ListItem>
                            </asp:CheckBoxList>
                        </div>
                    </li>
                </ul>
            </fieldset>

            <fieldset class="border">
                <legend>Period</legend>

                <ul class="list-none">
                    <li class="form-row">
                        <label class="form-label">Start Date</label>
                        <div class="col">
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Estimated Due Date</label>
                        <div class="col">
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Estimated time</label>
                        <div class="col">
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Progress (%)</label>
                        <div class="col">
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem>0</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </li>
                </ul>
            </fieldset>

            <fieldset class="border">
                <legend>Resolution</legend>
                <ul class="list-none">
                    <li class="form-row">
                        <label class="form-label">Close Date</label>
                        <div class="col">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </div>
                    </li>
                    <li class="form-row">
                        <label class="form-label">Resolution Remarks</label>
                        <div class="col">
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </div>
                    </li>
                </ul>
            </fieldset>
            <div class="text-center">
            <asp:Button ID="Button2" runat="server" Text="Submit" />
            </div>
        </asp:Panel>
        <asp:Panel CssClass="pad1" ID="Pnl_File" runat="server" Visible="false">
            <fieldset class="border">
                <legend>Upload Files</legend>
                <div class="form-row">
                    <label class="form-label">Upload File</label>
                    <div class="col">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>
                <div class="form-row">
                    <label class="form-label">Optional Description / Remarks</label>
                    <div class="col">
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col offset">
                        <asp:Button ID="Button1" runat="server" Text="Upload" />
                    </div>
                </div>
            </fieldset>
            <table class="border">
                <tbody>
                    <tr>
                        <td>Uploaded File</td>
                        <td>Description</td>
                        <td>Date Added</td>
                        <td>
                            <input type="checkbox" value="Select All" />
                        </td>
                    </tr>
                </tbody>
            </table>

        </asp:Panel>
    </article>
</asp:Content>
