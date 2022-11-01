<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Project_Listing.aspx.vb" Inherits="ProjectManagement_Nova.Project_Listing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_main" runat="server">
    <article>
        <aside class="mb-1 nova-card-counter">
            <ul class="list-none d-flex d-flex-align-items-center flex-gap">
                <li>
                    <dl class="card card-panel">
                        <dt class="card-title">Projects in Total</dt>
                        <dd>12</dd>
                    </dl>
                </li>
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
            <asp:HyperLink ID="HyperLink2" NavigateUrl="~/projects/new" runat="server">New</asp:HyperLink>
        </aside>
        <section>
            <table class="border">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" value="Select All" role="checkbox" />
                        </th>
                        <th>Project</th>
                        <th>Tasks</th>
                        <th>Project Status</th>
                        <th>Mainetance Status</th>
                        <th>Activity</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </td>
                        <td>
                            <dl>
                                <dt>
                                    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/projects/view/1" runat="server">Project Name</asp:HyperLink>
                                </dt>
                                <dd>Updated 1 hour ago</dd>
                            </dl>
                        </td>
                        <td>200</td>
                        <td>Completed</td>
                        <td>Ongoing</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                        </td>
                        <td>
                            <dl>
                                <dt>Project Name</dt>
                                <dd>Updated 1 hour ago</dd>
                            </dl>
                        </td>
                        <td>200</td>
                        <td>Completed</td>
                        <td>Ongoing</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox ID="CheckBox3" runat="server" />
                        </td>
                        <td>
                            <dl>
                                <dt>Project Name</dt>
                                <dd>Updated 1 hour ago</dd>
                            </dl>
                        </td>
                        <td>200</td>
                        <td>Completed</td>
                        <td>Ongoing</td>
                        <td>3</td>
                    </tr>
                </tbody>
            </table>
        </section>
    </article>
</asp:Content>
