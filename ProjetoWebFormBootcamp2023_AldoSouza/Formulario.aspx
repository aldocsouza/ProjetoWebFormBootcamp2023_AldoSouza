<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="ProjetoWebFormBootcamp2023_AldoSouza.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            max-width: 100vw;
            font-family: sans-serif;
            background-color: 	#DCDCDC;
        }
        .auto-style1 {
            height: 279px;
            width: 424px;
        }
        .auto-style2 {
            height: 62px;
            width: 424px;
            text-align: center;
        }
        .auto-style3 {
            height: 477px;
            margin: auto;
        }
        #form1{
            max-width: 100%;
            margin: auto; 
            padding: 3rem;
            box-shadow: 0px 0px 10px #353535;
            background-color: #cfdbe2;

        }
        .auto-style4 {
            width: 424px;
            height: 45px;
            text-align: center;
            font-size: 25px;
        }
        .auto-style5 {
            width: 47%;
        }
        .auto-style6 {
            width: 424px;
            height: 88px;
            text-align: center;
            font-size: 25px;
        }

        #btnCblDiasSemana{
            background-color: #4b91ea;
            transition: background-color .2s ease-in-out, 
                        box-shadow .2s ease-in-out, 
                        color .2s ease-in-out;
        }

        #btnCblDiasSemana:hover{
            color: white;
            background-color: #5d9cec;
            box-shadow: 0px 0px 10px #353535;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style5">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style6">ESCOLHA OS DIAS QUE DESEJA TRABALHAR</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:CheckBoxList ID="cblCheckBoxSemana" runat="server" Height="290px" Width="424px" BackColor="#FFCC99" BorderStyle="Ridge" CellPadding="10" CellSpacing="2" Font-Bold="True" Font-Size="Large" ForeColor="#000066" RepeatColumns="2">
                            <asp:ListItem Value="0">Domingo</asp:ListItem>
                            <asp:ListItem Value="1">Segunda-feira</asp:ListItem>
                            <asp:ListItem Value="2">Terça-feira</asp:ListItem>
                            <asp:ListItem Value="3">Quarta-feira</asp:ListItem>
                            <asp:ListItem Value="4">Quinta-feira</asp:ListItem>
                            <asp:ListItem Value="5">Sexta-feira</asp:ListItem>
                            <asp:ListItem Value="6">Sábado</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnCblDiasSemana" runat="server" Text="Dias Selecionados" Height="57px" OnClick="btnCblDiasSemana_Click" Width="322px" BorderStyle="Solid" Font-Size="Large" />
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblCblDiasSemana" runat="server" Font-Size="Medium" ForeColor="Lime" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
