using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonutShop
{
    public partial class Register : System.Web.UI.Page
        //if the user is new need to register
    {
        Donutclass objclass = new Donutclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginDonut_Click(object sender, EventArgs e)
        {//after successful regisgter the page will be redirected to Login.aspx which will allow user to log in
            Response.Redirect("Login.aspx");
        }

        protected void Donutregister_Click(object sender, EventArgs e)
        { //register button will do the register.
            objclass.useername(Donutlogin.Text, Donutpass.Text);
            objclass.Reguser(Donutmobile.Text);
            Response.Redirect("Login.aspx");
        }
    }
}