using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoDB_1
{
    public partial class Inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public void AddUsers()
        {
            string DB_Path = Server.MapPath(@"~\App_Data\MainDB.mdf");
            string ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename='" + DB_Path + "';Integrated Security=True";

            Users users = new Users(ConnectionString, this);
            users.InsertRecord( TB_FullName.Text, TB_Username.Text,TB_Password.Text,TB_Email.Text);
        }

        protected void BTN_Submit_Click(object sender, EventArgs e)
        {
            AddUsers();
            Response.Redirect("ListUsers.aspx");
        }
    }
}