<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Validators_t2_1920_WIP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--Nome-->
            Nome:<asp:TextBox ID="tbNome" MaxLength="40" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Campo de preenchimento obrigatório."
                ControlToValidate="tbNome" Display="Dynamic" ></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ErrorMessage="O nome tem de ter no minimo 3 letras."
                ControlToValidate="tbNome" Display="Dynamic"
                OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <!--Nome-->
            <!--Data nascimento-->
            <br />Data Nascimento:<asp:TextBox ID="tbData" TextMode="Date" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Campo de preenchimento obrigatório."
                ControlToValidate="tbData" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="A data não é válida." ControlToValidate="tbData"
                Type="Date" MinimumValue="01-01-1900" 
                MaximumValue="31-12-2050" Display="Dynamic"></asp:RangeValidator>
            <!--Data nascimento-->
            <!--Vencimento-->
            <br />Vencimento:<asp:TextBox ID="tbVencimento" TextMode="Number" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Campo de preenchimento obrigatório"
                ControlToValidate="tbVencimento"
                Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ErrorMessage="Vencimento deve estar entre 0 e 10000"
                type="Currency" MinimumValue="0" MaximumValue="10000"
                ControlToValidate="tbVencimento" Display="Dynamic"></asp:RangeValidator>
            <!--Vencimento-->
            <!--Email-->
            <br />Email:<asp:TextBox ID="tbEmail" TextMode="Email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="Campo de preenchimento obrigatório"
                ControlToValidate="tbEmail" Display="Dynamic"></asp:RequiredFieldValidator>
            <!--Email-->
            <!--Matricula-->
            <br />Matrícula:<asp:TextBox MaxLength="8" ID="tbMatricula" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="Campo de preenchimento obrigatório"
                ControlToValidate="tbMatricula" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator2" runat="server" 
                ErrorMessage="Matrícula inválida" OnServerValidate="CustomValidator2_ServerValidate"
                ControlToValidate="tbMatricula" Display="Dynamic"></asp:CustomValidator>
            <!--Matricula-->
            <br /><asp:Button ID="Button1" runat="server" Text="Aceitar" />
        </div>
    </form>
</body>
</html>
