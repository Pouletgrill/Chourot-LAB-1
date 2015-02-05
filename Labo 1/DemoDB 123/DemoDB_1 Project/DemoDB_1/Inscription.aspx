<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="DemoDB_1.Inscription" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        table {
            border-collapse: collapse;
        }
        table, th, td {
            font-family:Arial;
            font-size:12px;
            padding:5px;
        }
        table td:first-child{
           text-align:right;
        }
      </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Inscription...</h3>
        <hr />
        <br />
        <table >
            <tr>
                <td> <asp:Label ID="Label1" runat="server" Text="Nom complet:"></asp:Label> </td>
                <td> <asp:TextBox ID="TB_FullName" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label3" runat="server" Text="Nom d'usager:"></asp:Label> </td>
                <td> <asp:TextBox ID="TB_Username" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label4" runat="server" Text="Mot de passe:"></asp:Label> </td>
                <td> <asp:TextBox ID="TB_Password" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td> <asp:Label ID="Label5" runat="server" Text="Adresse de courriel:"></asp:Label> </td>
                <td>  <asp:TextBox ID="TB_Email" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td></td>
                <td> <asp:Button ID="BTN_Submit" runat="server" Text="Soumettre..." OnClick="BTN_Submit_Click" /> </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
