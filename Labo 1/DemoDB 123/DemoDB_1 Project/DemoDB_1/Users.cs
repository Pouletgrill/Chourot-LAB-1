using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace DemoDB_1
{
    public class Users:SqlExpressUtilities.SqlExpressWrapper
    {
        public Users(String connexionString, System.Web.UI.Page Page):
               base(connexionString,Page)
        {
            SQLTableName = "USERS";
            //base.Init();
        }
    }
}