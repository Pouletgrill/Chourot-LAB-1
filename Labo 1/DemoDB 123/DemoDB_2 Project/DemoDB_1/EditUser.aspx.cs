using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoDB_1
{
    public partial class EditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) LoadEditUserForm();
        }

        private void LoadEditUserForm()
        {
            if (Session["Selected_ID"] != null)
            {
                // Création d'une nouvelle instance de Users (reliée à la table MainDB.Users)
                Users users = new Users((String)Application["MaindDB"], this);
                // Conserver dans l'objet session afin qu'au prochain postback on puisse y référer
                Session["Users"] = users;
                if (users.SelectByID((String)Session["Selected_ID"]))
                {
                    TB_ID.Text = users.ID.ToString();
                    TB_FullName.Text = users.FullName;
                    TB_Username.Text = users.UserName;
                    TB_Password.Text = users.Password;
                    TB_Email.Text = users.Email;
                }
            }
        }

        private void UpdateUser()
        {
            if ((Session["Selected_ID"] != null) && (Session["Users"]!=null))
            {
                Users users = (Users)Session["Users"];
                users.ID = long.Parse(TB_ID.Text);
                users.FullName = TB_FullName.Text;
                users.UserName = TB_Username.Text;
                users.Password = TB_Password.Text;
                users.Email = TB_Email.Text;
                users.Update();
                Session["User"] = null;            //pour pas avoir de fuite de mémoire
                Session["Selected_ID"] = null;     //idem
            }
            Response.Redirect("ListUsers.aspx");
        }

        private void DeleteUser()
        {
            if ((Session["Selected_ID"] != null) && (Session["Users"]!=null))
            {
                ((Users)Session["Users"]).DeleteRecordByID((String)Session["Selected_ID"]);
                Session["User"] = null;
                Session["Selected_ID"] = null;
            }
            Response.Redirect("ListUsers.aspx");
        }

        protected void BTN_Submit_Delete_Click(object sender, EventArgs e)
        {
            DeleteUser();
        }

        protected void BTN_Submit_Update_Click(object sender, EventArgs e)
        {
            UpdateUser();
        }

        protected void BTN_Submit_Retour_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListUsers.aspx");
        }
    }
}