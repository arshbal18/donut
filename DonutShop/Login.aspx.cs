using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonutShop
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginDonut_Click(object sender, EventArgs e)
        {
            

            DonutsShopEntities2  db = new DonutsShopEntities2();
            //selects username from the user table and pass it to the query
            string query = (from c in db.UserTables 
                            where c.Username == Donutlogin.Text && c.Password == Donutpass .Text
                            select c.Username).FirstOrDefault();
            if (query != null)
            {
                Response.Redirect("Donut.aspx");//if the query is verified from the user table
            }
    
            else
                Response.Write("Wrong Details"); //if the query is invalid which means the details is not in the user table
        }

        protected void Donutregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx"); // if the user details is not cant login need to register will redirect to register.aspx
        }
    }
}