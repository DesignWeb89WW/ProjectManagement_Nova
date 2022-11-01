<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Nested_Menu.master" CodeBehind="Ann_Form.aspx.vb" Inherits="ProjectManagement_Nova.Ann_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphnest_headcss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphnest_main" runat="server">
    <div id="editor" runat="server"></div>
    <asp:TextBox ID="TxtAnnc_Title" runat="server"></asp:TextBox>
    <asp:TextBox CssClass="ckedit" ID="descriptionTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:Literal ID="lttest" runat="server"></asp:Literal>
    <%--<div>
        <ckeditor:ckeditorcontrol id="CKEditor1" basepath="/ckeditor/" runat="server">
        </ckeditor:ckeditorcontrol>
    </div>--%>

    <asp:Button ID="BtnCreate" runat="server" Text="Insert" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphnest_js" runat="server">
    <script type="text/javascript">
        CKEDITOR.replace('<%=descriptionTextBox.ClientID%>');
    </script>
</asp:Content>
