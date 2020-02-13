<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="produto.aspx.cs" Inherits="Validators_t2_1920_WIP.produto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Produto</h2>
            <!--Nome-->
            <br />Nome:<!-- >2 && <40 -->
            <asp:TextBox runat="server" ID="tbNome" MaxLength="40" />
            <asp:RequiredFieldValidator ControlToValidate="tbNome" Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo obrigatório."></asp:RequiredFieldValidator>  
            <asp:CustomValidator OnServerValidate="CustomValidator1_ServerValidate" 
                ID="CustomValidator1" runat="server" ControlToValidate="tbNome"
                ErrorMessage="Nome muito pequeno."></asp:CustomValidator>
            <!--Nome-->
            <!--Descrição-->
            <br />Descrição: <!-- >3 && <80 -->
            <asp:TextBox runat="server" ID="tbDescricao" 
                MaxLength="80" TextMode="MultiLine" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo obrigatório." 
                ControlToValidate="tbDescricao" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator2" runat="server" 
                ErrorMessage="Descrição muito pequena"
                ControlToValidate="tbDescricao"
                OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            <!--Descrição-->
            <!--Preço compra-->
            <br />Preço Compra: <!-- >=0 -->
            <asp:TextBox runat="server" ID="tbPrecoCompra" TextMode="Number" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Campo obrigatório." ControlToValidate="tbPrecoCompra"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator3" runat="server" 
                ErrorMessage="Preço não é válido" 
                ControlToValidate="tbPrecoCompra"
                OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
            <!--Preço compra-->
            <!--Preço venda-->
            <br />Preço Venda: <!-- >=0 && >=preço compra-->
            <asp:TextBox runat="server" ID="tbPrecoVenda" TextMode="Number" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                ErrorMessage="Campo obrigatório"
                ControlToValidate="tbPrecoVenda"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="Preço não é válido"
                ControlToValidate="tbPrecoVenda"
                Type="Currency" MinimumValue="0" MaximumValue="10000"
                ></asp:RangeValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ErrorMessage="Preço de venda deve superior ao preço compra"
                ControlToValidate="tbPrecoVenda"
                ControlToCompare="tbPrecoCompra"
                Operator="GreaterThanEqual"
                Type="Currency"
                ></asp:CompareValidator>
            <!--Preço venda-->
            <!--Prazo validade-->
            <br />Prazo Validade: <!-- >data atual -->
            <asp:TextBox runat="server" ID="tbData" TextMode="Date" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ErrorMessage="Campo obrigatório"
                ControlToValidate="tbData"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator4" runat="server" 
                ErrorMessage="Data não é válida"
                ControlToValidate="tbData"
                OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
            <!--Prazo validade-->
            <br />Quantidade: <!-- >=0 -->
            <asp:TextBox runat="server" ID="tbQuantidade" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="Campo obrigatório"
                ControlToValidate="tbQuantidade"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ErrorMessage="Quantidade não é válida" Type="Double"
                ControlToValidate="tbQuantidade" MinimumValue="0"
                MaximumValue="10000"
                ></asp:RangeValidator><br /><asp:Button runat="server" ID="bt1" Text="Guardar" />
        </div>
    </form>
</body>
</html>
