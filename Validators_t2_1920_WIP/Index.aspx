<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Validators_t2_1920_WIP.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div runat="server" id="divLogin">
                Email:<asp:TextBox runat="server" ID="tbEmail" TextMode="Email" />
                <br />Password:<asp:TextBox runat="server" ID="tbPassword" TextMode="Password" />
                <br /><asp:Button runat="server" ID="btLogin"
                    Text="Login" OnClick="btLogin_Click" />
                <br /><asp:Label runat="server" ID="lbErro" />
            </div>
            <div runat="server" id="divLogout">
                <% Response.Write(Session["email"].ToString()); %>
                <a href="Logout.aspx">Terminar sessão</a>
            </div>
        </div>
    </form>
</body>
</html>
