<%@ Page Title="Project Details" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Project_View.aspx.vb" Inherits="ProjectManagement_Nova.Project_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_main" runat="server">
    <article class="nova-article">
        <header class="nova-project-header">
            <h1 class="project-name">Project Name</h1>
            <h4 class="project-client">Client: MOE</h4>
        </header>
        <section class="nova-project-content">
            <ul class="nova-tabs js-tabs" role="tablist">
                <li>
                    <a class="nova-tab-link active" role="tab" data-content="pvtab" href="#overview">Overview</a>
                </li>
                <li>
                    <a class="nova-tab-link" role="tab" data-content="pvtab" href="#files">Files</a>
                </li>
                <li>
                    <a class="nova-tab-link" role="tab" data-content="pvtab" href="#activity">Activity</a>
                </li>
                <li>
                    <a class="nova-tab-link" role="tab" data-content="pvtab" href="#issues">Related issues</a>
                </li>
            </ul>
            <ul class="nova-tabs-content" id="pvtab">
                <li class="nova-tab-pane js-pane active" id="overview">
                    <section class="mb-2">
                        <asp:HyperLink CssClass="btn" ID="hpledit_desc" NavigateUrl="~/projects/edit/1" runat="server">Edit</asp:HyperLink>
                        <h4>Description</h4>

                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis in risus sed nulla facilisis accumsan molestie at nulla. Morbi in mollis velit. Curabitur tempus mauris vel maximus volutpat. Cras molestie vitae nisi sit amet laoreet. Fusce ac sapien a lectus commodo malesuada quis at mauris. Ut faucibus, felis non malesuada consequat, mi libero euismod ex, vel fringilla ligula tortor sed odio. Vestibulum sagittis sed ex ut imperdiet.</p>
                        <p>Ut risus nibh, tristique sit amet mauris ut, commodo tincidunt odio. Duis aliquam dui eu molestie ultrices. Aliquam sapien sem, molestie vel finibus eget, luctus ac magna. Fusce et ullamcorper felis, a eleifend magna. Fusce quis sapien quis arcu mattis interdum. Nullam id massa non magna finibus sagittis id at felis. Etiam ac tellus diam. Duis non diam mattis, tempus neque non, tristique nisl. Aliquam erat volutpat. Ut non tincidunt libero, non imperdiet massa. Nunc ac laoreet ante, eget venenatis ante. Donec justo diam, bibendum sit amet nisi finibus, aliquam maximus ligula.</p>
                        <p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam pellentesque porta nisi ut vehicula. Cras id pharetra nibh. Aliquam erat volutpat. Sed dignissim eleifend diam, quis venenatis sapien facilisis quis. Nam nisi turpis, imperdiet iaculis dictum eget, placerat sit amet nibh. Curabitur vulputate arcu diam, ut fermentum eros aliquam sit amet. Vestibulum sem mauris, ultrices efficitur sapien blandit, volutpat auctor ligula. Proin mauris mi, aliquam posuere porttitor a, sagittis id mauris.</p>
                        <p>Aliquam condimentum elit mauris, in venenatis ipsum blandit sed. Nam egestas ex iaculis urna luctus lacinia. Nam aliquet ipsum erat, ac suscipit diam vestibulum facilisis. In ut semper nisl, sit amet imperdiet sem. Quisque euismod eget ipsum et viverra. Sed consectetur neque elit, at placerat quam vulputate in. Integer malesuada blandit tortor, non finibus leo facilisis sed. Curabitur iaculis nunc massa, in sagittis mi vestibulum ut. Curabitur et ullamcorper magna. Duis feugiat luctus leo eget dictum. Morbi id lacus in diam tincidunt condimentum nec a ante. Phasellus sed erat et eros dictum hendrerit quis sit amet ex. Ut venenatis tincidunt erat. In aliquet erat sed tortor rhoncus dictum. Sed blandit volutpat ante, vel tempus leo sodales a. Vivamus tincidunt fringilla odio, nec laoreet nisi vulputate id.</p>
                        <p>Ut eu ligula felis. Mauris eu ornare nibh, a hendrerit sem. Integer ornare lorem condimentum ligula imperdiet laoreet. Duis vel turpis ac tellus auctor dignissim. Donec bibendum mauris magna, sit amet venenatis nibh aliquam vitae. Mauris venenatis enim nisl, sed placerat metus fringilla a. Etiam rutrum magna libero, nec efficitur purus pharetra vitae. Phasellus orci elit, lacinia semper scelerisque non, varius ac massa. Fusce sit amet pretium nisl. Vivamus efficitur pulvinar justo, at vulputate quam fringilla nec. Nullam sodales lorem non tristique scelerisque.</p>
                        <hr />
                        <table class="border">
                            <tbody>
                                <tr>
                                    <th colspan="3">Status</th>
                                </tr>
                                <tr>
                                    <th>Project Status</th>
                                    <th>Completion Date</th>
                                    <th>Maintenance Status</th>
                                </tr>
                                <tr>
                                    <td>Completed</td>
                                    <td>November 2022</td>
                                    <td>Ongoing</td>
                                </tr>
                            </tbody>
                        </table>
                    </section>

                    <section>
                        <h4>Related Members</h4>
                    </section>
                </li>
                <li class="nova-tab-pane js-pane" id="files">
                    <aside class="mb-1">
                        <div class="input-group">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:Button ID="Button1" runat="server" Text="Upload" />
                        </div>
                    </aside>
                    <h4>Files Uploaded</h4>
                    <table class="border">
                        <thead>
                            <tr>
                                <th>File Name</th>
                                <th>File Type</th>
                                <th>Location</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                    </table>
                </li>
                <li class="nova-tab-pane js-pane" id="activity">
                    <dl>
                        <dt style="font-size: 1.2rem; padding-bottom: 1rem;">Today</dt>
                        <dd>
                            <table class="border">
                                <thead>
                                    <tr>
                                        <th>Datetime</th>
                                        <th>Person</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Datetime</td>
                                        <td>Person</td>
                                        <td>Action</td>
                                    </tr>
                                    <tr>
                                        <td>Datetime</td>
                                        <td>Person</td>
                                        <td>Action</td>
                                    </tr>
                                </tbody>
                            </table>
                        </dd>
                    </dl>
                </li>
                <li class="nova-tab-pane js-pane" id="issues">
                    <table class="border">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Type</th>
                                <th>Subject</th>
                                <th>Date Started</th>
                                <th>Date Closed</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>12311</td>
                                <td>SR</td>
                                <td>
                                    <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                                </td>
                                <td>
                                    <%= Date.Now.ToLongDateString %>
                                </td>
                                <td>
                                    <%= Date.Now.ToLongDateString %>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </li>
            </ul>
        </section>
    </article>
</asp:Content>
