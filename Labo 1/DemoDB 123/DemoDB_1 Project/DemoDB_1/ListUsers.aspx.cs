using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoDB_1
{
    public partial class ListUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListeUsers();
        }
            
        public void ListeUsers()
        {
            string DB_Path = Server.MapPath(@"~\App_Data\MainDB.mdf");
            string ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename='" + DB_Path + "';Integrated Security=True";

            Users users = new Users(ConnectionString, this);
            users.SelectAll();
            try
            {
                Table grid = new Table();
                PN_ListUsers.Controls.Add(grid);
                TableRow tr;
                TableCell td;
                tr = new TableRow();
                grid.Rows.Add(tr);
                for (int f = 0; f < users.FieldsNames.Count; f++)
                {
                    td = new TableCell();
                    tr.Cells.Add(td);
                    td.Text = users.FieldsNames[f];
                }
                
                while (users.Next())
                {
                    tr = new TableRow();
                    grid.Rows.Add(tr);
                    for (int f = 0; f < users.FieldsValues.Count; f++)
                    {
                        td = new TableCell();
                        tr.Cells.Add(td);
                        td.Text = users.FieldsValues[f];
                    }
                }
            }
            catch (Exception)
            {
                Response.Write("Erreur d'accès!!!");
            }
            finally
            {
                users.EndQuerySQL();
            }
        }

        protected void BTN_GotoInscription_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inscription.aspx");
        }
    }
}