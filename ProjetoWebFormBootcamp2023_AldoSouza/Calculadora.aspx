<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="ProjetoWebFormBootcamp2023_AldoSouza.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            min-height: 100vh;
        }
        .auto-style1 {
            width: 447px;
            height: 45px;
        }

        .auto-style2 {
            width: 48%;
            margin: auto;
            text-align: center;
            background-color: cadetblue;
            height: 394px;
            font-family: sans-serif;
            box-shadow: 0px 0px 10px #353535;

        }
        
        #form1{
            padding: 1rem;
        }

        .auto-style3-resultado{
            background-color: #353535;
            height: 65px;
            border: 5px solid black;
            width: 447px;
        }

        #lblResultado{
            color: white;
            font-size: 3rem;
            display: block;
        }

        .auto-style5 {
            padding-left: 0px;
        }
        .auto-style6 {
            width: 943px;
        }

        #txtbNumero1, #txtbNumero2{
            font-size: 2rem;
            border: 2px solid #2b4772;
        }

        #txtbNumero1:focus, #txtbNumero2:focus{
            border: none;
            outline: 2px solid lightgreen;
            box-shadow: 0px 0px 5px #353535;
        }

        .auto-style8 {
            width: 447px;
            height: 91px;
        }

        #btnCalcOperacao{
            background-color: lightgreen;
            font-size: 2rem;
        }

        #btnCalcOperacao:hover{
            background-color: mediumspringgreen;
            box-shadow: 0px 0px 10px #353535;
        }

        #ddlOperacoes:focus{
            border: none;
            outline: 2px solid lightgreen;
            box-shadow: 0px 0px 5px #353535;
        }

        .auto-style9 {
            width: 447px;
            height: 77px;
        }
        .auto-style10 {
            width: 447px;
            height: 61px;
        }

        .auto-style11 {
            width: 447px;
            height: 62px;
        }
        .auto-style12 {
            margin-top: 0px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style6">
        <table class="auto-style2">
            <tr>
                <td class="auto-style9"><asp:Label ID="lblTitulo" runat="server" Text="CALCULADORA" Font-Size="XX-Large" Font-Bold="True" Font-Strikeout="False" ForeColor="White"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style3-resultado"><asp:Label ID="lblResultado" runat="server" Height="100%" Width="100%"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style10"><asp:TextBox ID="txtbNumero1" runat="server" Height="33px" Width="224px" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddlOperacoes" runat="server" Width="191px" CssClass="auto-style5" Height="30px" BackColor="#CCCCCC" EnableTheming="True" Font-Bold="True" Font-Italic="False" Font-Names="Arial" Font-Size="Large" ForeColor="Red">
                        <asp:ListItem Selected="True" Value="0">SOMA (+)</asp:ListItem>
                        <asp:ListItem Value="1">SUBTRAÇÃO (-)</asp:ListItem>
                        <asp:ListItem Value="2">MULTIPLICAÇÃO (x)</asp:ListItem>
                        <asp:ListItem Value="3">DIVISÃO ( / )</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><asp:TextBox ID="txtbNumero2" runat="server" Height="39px" TextMode="Number" Width="223px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style8"><asp:Button ID="btnCalcOperacao" runat="server" Height="54px" OnClick="btnCalcOperacao_Click" Text="Calcular" Width="218px" BorderStyle="None" CssClass="auto-style12" Font-Size="Large" /></td>
            </tr>
        </table>
        <br />

    </form>
</body>
</html>
