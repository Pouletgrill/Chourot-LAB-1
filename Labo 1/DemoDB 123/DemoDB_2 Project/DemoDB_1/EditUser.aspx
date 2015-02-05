<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="DemoDB_1.EditUser" %>

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
            .submit {
                width:125px;
            }
      </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h3>Modification...</h3>
        <hr />

        <table >
            <tr>
                <td> <asp:Label ID="Label2" runat="server" Text="ID:"></asp:Label> </td>
                <td> <asp:TextBox ID="TB_ID" runat="server" ReadOnly="True"></asp:TextBox> </td>
            </tr>
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
                <td> <asp:Button ID="BTN_Submit_Update" runat="server" Text="Mettre à jour..." CssClass="submit" OnClick="BTN_Submit_Update_Click"/> </td>
            </tr>
             <tr>
                <td></td>
                <td> <asp:Button ID="BTN_Submit_Delete" runat="server" Text="Effacer..." CssClass="submit"
                     OnClientClick=" return confirm('Voulez-vous vraiment effacer cet enregistrement?')" OnClick="BTN_Submit_Delete_Click" /> </td>
            </tr>
             <tr>
                <td></td>
                <td> <asp:Button ID="BTN_Submit_Retour" runat="server" Text="Annuler..." CssClass="submit" OnClick="BTN_Submit_Retour_Click"/> </td>
            </tr>
       </table>
       <hr />
       <br />
    </div>
    </form>
</body>
</html>
