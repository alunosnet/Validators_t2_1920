using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validators_t2_1920_WIP
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //testar se fez login
            if (Session["email"] == null)
                Response.Redirect("index.aspx");
            //testar perfil
            if (Session["perfil"].ToString() != "user")
                Response.Redirect("index.aspx");
        }
    }
}