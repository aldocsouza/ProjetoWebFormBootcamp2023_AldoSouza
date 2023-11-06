<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Painel.aspx.cs" Inherits="ProjetoWebFormBootcamp2023_AldoSouza.Painel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
           font-family: Arial;
        }
        .auto-style1 {
            width: 414px;
        }

        #form1{
            margin: auto;
            padding-left: 15px;
            box-shadow: 0px 0px 10px #353535;
        }
        .auto-style2 {
            width: 100%;
            margin-right: 0px;
        }
        
        .label-text{
            font-size: 20px;
            height: 65px;
        }

        .auto-style9 {
            height: 60px;
        }

        #btnProximoP2, #btnVoltarP3, 
        #btnProximoP3, #btnVoltarP4, 
        #btnEnviarP4{
            background-color: lightseagreen;
            height: 40px;
            width: 80px;
            border: none;
            font-size: 16px;
            transition: background-color .2s ease-in-out, 
                        box-shadow .2s ease-in-out, 
                        color .2s ease-in-out;
        }

        #btnProximoP2:hover, #btnVoltarP3:hover, 
        #btnProximoP3:hover, #btnVoltarP4:hover, 
        #btnEnviarP4:hover{
            color: white;
            background-color: #5d9cec;
            box-shadow: 0px 0px 10px #353535;
        }

        #txtbNome, #txtbSobrenome,
        #txtbGenero, #txtbCelular,
        #txtbEndereco, #txtbCidade,
        #txtbCEP, #txtbUsuario,
        #txtbSenha{
            font-size: 16px;
            transition: border .2s ease-in-out, outline .2s ease-in-out;
        }

        #txtbNome:focus, #txtbSobrenome:focus,
        #txtbGenero:focus, #txtbCelular:focus,
        #txtbEndereco:focus, #txtbCidade:focus,
        #txtbCEP:focus, #txtbUsuario:focus,
        #txtbSenha:focus{
            border: 2px outset lime;
            outline: 2px outset lime;
        }
        
        .auto-style12 {
            width: 104px;
            height: 60px;
        }
        .auto-style13 {
            height: 60px;
            width: 408px;
        }
        .auto-style14 {
            width: 104px;
            height: 40px;
        }
        .auto-style15 {
            height: 40px;
            width: 280px;
        }
        .auto-style17 {
            width: 280px;
            height: 20px;
        }
        .auto-style18 {
            height: 19px;
            width: 105px;
        }
        .auto-style19 {
            width: 103px;
            height: 20px;
        }
        
        .auto-style5, auto-style9,
        auto-style5{
            background-color: lightseagreen;
        }

        .auto-style22 {
            height: 60px;
            width: 280px;
        }
        .auto-style25 {
            width: 408px;
        }
        .auto-style27 {
            height: 19px;
            width: 280px;
        }
        .auto-style31 {
            margin-left: 0px;
            margin-top: 14px;
        }
        .auto-style32 {
            width: 105px;
        }
        .auto-style33 {
            width: 103px;
        }
        .auto-style34 {
            width: 104px;
        }

        .auto-style36 {
            width: 280px;
        }
        .auto-style39 {
            height: 60px;
            background-color: lightseagreen;
        }
        .auto-style40 {
            margin-top: 15px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <table class="auto-style2">
            <tr>
                <td class="auto-style25"><h1 style="text-align: center;">Painel em ASP.NET</h1></td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:Panel ID="Panel2" runat="server">
                            <table>
                                <tr>
                                    <th colspan="2" class="auto-style39"><span class="label-text">Informações Pessoais</span></th>
                                </tr>
                                <tr>
                                    <td class="auto-style32">Nome:</td>
                                    <td class="auto-style36"><asp:TextBox ID="txtbNome" runat="server" Width="275px" Height="30px" CssClass="auto-style31" ValidateRequestMode="Enabled"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style32">Sobrenome:</td>
                                    <td class="auto-style36"><asp:TextBox ID="txtbSobrenome" runat="server" Width="275px" Height="30px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style32">Gênero:</td>
                                    <td class="auto-style36"><asp:TextBox ID="txtbGenero" runat="server" Width="275px" Height="30px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style32">Celular:</td>
                                    <td class="auto-style36"><asp:TextBox ID="txtbCelular" placeholder="(00) 0000-0000" runat="server" Width="275px" Height="30px" TextMode="Phone"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style18"></td>
                                    <td class="auto-style27">
                                        <asp:Button ID="btnProximoP2" runat="server" Text="Próximo" OnClick="btnProximoP2_Click"/>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="Panel3" runat="server">
                             <table>
                                <tr>
                                    <th colspan="2" class="auto-style9"><span class="label-text">Detalhes do Endereço</span></th>
                                </tr>
                                <tr>
                                    <td class="auto-style33">Endereço:</td>
                                    <td class="auto-style36"><asp:TextBox ID="txtbEndereco" runat="server" Width="275px" Height="30px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style33">Cidade:</td>
                                    <td class="auto-style36"><asp:TextBox ID="txtbCidade" runat="server" Width="275px" Height="30px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style33">CEP:</td>
                                    <td class="auto-style36"><asp:TextBox ID="txtbCEP" placeholder="00000-000" runat="server" Width="275px" Height="30px" TextMode="Number"></asp:TextBox></td>
                                </tr>
                                <tr>

                                    <td class="auto-style19">
                                        <asp:Button ID="btnVoltarP3" runat="server" Text="Voltar" OnClick="btnVoltarP3_Click" />
                                    </td>
                                    <td class="auto-style17">
                                        <asp:Button ID="btnProximoP3" runat="server" Text="Próximo" OnClick="btnProximoP3_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="Panel4" runat="server">
                             <table>
                                <tr>
                                    <th colspan="2" class="auto-style39">
                                        <span class="label-text">Área de Login</span>
                                    </th>
                                </tr>
                                <tr>
                                    <td class="auto-style34">Usuário:</td>
                                    <td class="auto-style36"><asp:TextBox ID="txtbUsuario" runat="server" Width="275px" Height="30px" CssClass="auto-style40"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">Senha:</td>
                                    <td class="auto-style15"><asp:TextBox ID="txtbSenha" runat="server" Width="275px" Height="30px" TextMode="Password" CausesValidation="True" ValidateRequestMode="Enabled"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="auto-style12">
                                        <asp:Button ID="btnVoltarP4" runat="server" Text="Voltar" OnClick="btnVoltarP4_Click" />
                                    </td>
                                    <td class="auto-style22">
                                        <asp:Button ID="btnEnviarP4" runat="server" Text="Enviar" OnClick="btnEnviarP4_Click"/>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lblAviso" runat="server" ForeColor="Lime"></asp:Label>
                </td>
            </tr>
        </table>

    </form>
</body>
</html>
