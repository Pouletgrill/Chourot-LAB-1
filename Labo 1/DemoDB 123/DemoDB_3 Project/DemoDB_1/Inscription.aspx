﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="DemoDB_1.Inscription" %>
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
        .thumbnail {
            width:140px;
        }
     </style>
    <script>
        function PreLoadImage(e) {
            var imageTarget = document.getElementById("IMG_Avatar");
            var input = document.getElementById("FU_Avatar");
            if (imageTarget != null) {
                var fReader = new FileReader();
                fReader.readAsDataURL(input.files[0]);
                fReader.onloadend = function (event) {
                    // the event.target.result contains the image data 
                    imageTarget.src = event.target.result;

                }
            }
            return true;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Inscription...</h3>
        <hr />
        <table >
            <tr>
                <td> <asp:Label ID="Label1" runat="server" Text="Nom complet:"></asp:Label> </td>
                <td> <asp:TextBox ID="TB_FullName" runat="server"></asp:TextBox> </td>
                <td rowspan ="4">
                    <asp:Image ID="IMG_Avatar" runat="server" CssClass="thumbnail" ImageUrl="~/Images/ADD.png" />
                </td>
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
                <td> <asp:Button ID="BTN_Submit" runat="server" Text="Soumettre..." CssClass="submit" OnClick="BTN_Submit_Click" /> </td>
                <td>
                    <asp:FileUpload ID="FU_Avatar" runat="server" onchange="PreLoadImage();" ClientIDMode="Static"/>
                </td>
            </tr>
             <tr>
                <td></td>
                <td> <asp:Button ID="BTN_Cancel" runat="server" Text="Annuler..."  CssClass="submit" OnClick="BTN_Cancel_Click"/> </td>
                 <td></td>
            </tr>
       </table>
       <hr />
        <br />
    </div>
    </form>
</body>
</html>
