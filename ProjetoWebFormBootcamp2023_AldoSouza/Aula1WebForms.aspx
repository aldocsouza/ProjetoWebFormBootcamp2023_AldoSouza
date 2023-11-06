<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aula1WebForms.aspx.cs" Inherits="ProjetoWebFormBootcamp2023_AldoSouza.Aula1WebForms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        Seja bem-vindo ao Bootcamp IBID
    </title>
    <style type="text/css">
        #form1 {
        }
     </style>
</head>
<body>
    <script language="javascript">
        function Exibir() {
            let nome = document.getElementById("TxtbNome").value;
            alert(nome);
        }
    </script>
    <form id="form1" runat="server">
        <asp:Label ID="lblNome" runat="server" Width="60px" Text="Nome" Height="26px"  style="margin-top: 0px"></asp:Label>
        <asp:TextBox ID="TxtbNome" runat="server" OnTextChanged="TxtbNome_TextChanged" style="margin: 0px 15px 0px 0px;" Width="167px"></asp:TextBox>
        <asp:Button ID="BtnNomeEnviar" runat="server" Text="Enviar" OnClientClick="Exibir()" />
        <br />
        <asp:ListBox ID="LbxNomes" runat="server" Height="92px" Width="300px" SelectionMode="Multiple">
            <asp:ListItem Value="0"></asp:ListItem>
            <asp:ListItem Value="1">Cliente 1</asp:ListItem>
            <asp:ListItem Value="2">Cliente 2</asp:ListItem>
            <asp:ListItem Value="3">Cliente 3</asp:ListItem>
            <asp:ListItem Value="4">Cliente 4</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <asp:Button ID="btnQuantidade" runat="server" Text="Quantidade" OnClick="btnQuantidade_Click" Height="37px" Width="168px" />
        <div id="output">
            <asp:Label ID="lblResutaldoNaTela" runat="server"></asp:Label>
            <br />
        <hr />
        </div>
        <p>
            <asp:Button ID="btnTextoSelecionado" runat="server" OnClick="btnTextoSelecionado_Click" Text="Selecionado" Height="49px" Width="168px" />
        </p>
        <asp:Label ID="lblResultadoTextoSelecionado" runat="server"></asp:Label>
        <br />
        <br />
        <hr />
        <br />
        <asp:DropDownList ID="ddlEstados" runat="server" Height="22px" Width="161px">

        </asp:DropDownList>
        <br />
        <asp:Button ID="btnDdlTextoSelecionado" runat="server" Text="Texto Selecionado" OnClick="btnDdlTextoSelecionado_Click1" Height="45px" />
          <br />
             <asp:Label ID="lblDdlResultadoNaTela" runat="server"></asp:Label>
        <br />
        <br />
        <hr />
        <asp:CheckBox ID="chkCheckBox" runat="server" />
        <br />
        <asp:Button ID="btnChkVerificacao" runat="server" Height="40px" OnClick="Button1_Click" Text="Verificação" Width="159px" />
        <br />
        <br />
        <asp:Label ID="lblChkResultadoNaTela" runat="server"></asp:Label>
        <br />
        <br />
        <asp:CheckBoxList ID="chkCheckBoxList" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="387px">
            <asp:ListItem Value="0">C#</asp:ListItem>
            <asp:ListItem Value="1">JavaScript</asp:ListItem>
            <asp:ListItem Value="2">Java</asp:ListItem>
            <asp:ListItem Value="3">PHP</asp:ListItem>
            <asp:ListItem Value="4">Assembly</asp:ListItem>
            <asp:ListItem Value="5">Pascal</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="btnClbLinguagens" runat="server" Height="39px" OnClick="btnClbLinguagens_Click" Text="Linguagens Selecionadas" Width="336px" />
        <br />
        <br />
        <asp:Label ID="lblClbResultadoNaTela" runat="server"></asp:Label>
        <br />
        <hr />
        <br />
        <asp:RadioButton ID="radbPessoaFisica" runat="server" GroupName="Fornecedor" Text="Pessoa Física" />
&nbsp;&nbsp;
        <asp:RadioButton ID="radbPessoaJuridica" runat="server" GroupName="Fornecedor" Text="Pessoa Jurídica" />
        <br />
        <br />
        <asp:Button ID="btnRadbFornecedor" runat="server" Height="33px" OnClick="btnRadbFornecedor_Click" Text="Tipo Fornecedor" Width="334px" />
        <br />
        <br />
        <asp:Label ID="lblRadbResultadoNaTela" runat="server"></asp:Label>
        <br />
    </form>
    
</body>
</html>
