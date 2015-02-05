using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Labo_1
{
   public partial class CreateUser : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {
         ListeUsers();   
      }
      public void ListeUsers()
      {
         // Création d'une nouvelle instance de Users (reliée à la table MainDB.Users)
         Users users = new Users((String)Application["MaindDB"], this);
         users.SelectAll();
         users.MakeGridView(PN_ListUsers, "EditUser.aspx");
      }

      protected void BTN_GotoInscription_Click(object sender, EventArgs e)
      {
         Response.Redirect("Inscription.aspx");
      }
   }
}