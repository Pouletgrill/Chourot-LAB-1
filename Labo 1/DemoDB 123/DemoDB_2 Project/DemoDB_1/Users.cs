using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

namespace DemoDB_1
{
    public class Users:SqlExpressUtilities.SqlExpressWrapper
    {
        public long ID { get; set; }
        public String FullName{get; set;}
        public String UserName{get; set;}
        public String Password{get; set;}
        public String Email{get; set;}
        public Users(String connexionString, System.Web.UI.Page Page) :
               base(connexionString, Page)
        {
            SQLTableName = "USERS";
        }

        public override void GetValues()
        {
            ID = long.Parse(FieldsValues[0]);
            FullName = FieldsValues[1];
            UserName = FieldsValues[2];
            Password = FieldsValues[3];
            Email = FieldsValues[4];
        }

        public override void Insert()
        {
            InsertRecord(FullName, UserName, Password, Email);
        }

        public override void Update()
        {
            UpdateRecord(ID, FullName, UserName, Password, Email);
        }
    }
}