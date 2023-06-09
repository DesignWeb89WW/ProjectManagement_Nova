<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Ann_Form.aspx.vb" Inherits="ProjectManagement_Nova.Ann_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_headcss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphnest_main" runat="server">
    <section class="nova-article">
        <header class="pad1">Announcement Form</header>
        <div class="pad"1>
            
            <ul class="list-none">
                <li class="form-row">
                    <label class="form-label">Title</label>
                    <div class="col">
                        <asp:TextBox ID="TxtAnnc_Title" runat="server"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <label class="form-label">Title</label>
                    <div class="col">
                        <asp:TextBox CssClass="ckedit" ID="descriptionTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </li>
                <li class="form-row">
                    <div class="col offset">
                        <asp:Button ID="BtnCreate" runat="server" Text="Insert" />
                    </div>
                </li>
            </ul>
            <asp:Literal ID="lttest" runat="server"></asp:Literal>
            
        </div>
    </section>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphnest_js" runat="server">
    <script type="text/javascript">
        CKEDITOR.replace('<%=descriptionTextBox.ClientID%>');
    </script>
</asp:Content>
