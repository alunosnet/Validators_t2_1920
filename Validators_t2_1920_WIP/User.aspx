<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Validators_t2_1920_WIP.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>área do user</h1>
            <% Response.Write(Session["email"].ToString()); %>
            <a href="Logout.aspx">Terminar sessão</a>
        </div>
    </form>
</body>
</html>
