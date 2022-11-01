<%@ Page Title="Sign in" Language="vb" AutoEventWireup="false" MasterPageFile="~/app_templates/Main.Master" CodeBehind="Sign-In.aspx.vb" Inherits="ProjectManagement_Nova.Sign_In" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
    <style type="text/css">
        .login-wrapper {
            margin: 1rem auto;
            max-width: 700px;
        }

        .login-dialog {
            background-color: #fff;
            border: 1px solid #ddd;
            position: relative;
        }

        .login-section-pane {
            padding: 1rem;
        }

        .title {
            text-align: center;
        }

        .stack [type="text"]:first-child {
            border-bottom-left-radius: 0;
            border-bottom-right-radius: 0;
        }
        
        .stack [type="text"]:last-child {
            border-top: 0;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" runat="server">
    <div class="login-wrapper">
        <article class="login-dialog">
            <aside></aside>
            <section class="login-section">
                <asp:Panel CssClass="login-section-pane" ID="Panel1" runat="server">
                    <h1 class="title">Sign In</h1>

                    <ul class="form-list-stack">
                        <li>
                            <label>Emaile</label>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <label>Password</label>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <label>Captcha</label>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </li>
                    </ul>
                    <asp:Button ID="BtnSignin" runat="server" Text="Sign In" />
                </asp:Panel>
                <asp:Panel CssClass="login-section-pane" ID="Panel2" runat="server">
                    <h1 class="title">Registration</h1>

                    <ul class="form-list-stack">
                        <li>
                            <label>First Name</label>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <label>Last Name</label>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <label>Email Address</label>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </li>
                    </ul>
                    <asp:Button ID="BtnRegister" runat="server" Text="Register" />
                </asp:Panel>
            </section>
        </article>
    </div>
    <!--// .End Sign-in, registration -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_footer_scripts" runat="server">
</asp:Content>
