using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validators_t2_1920_WIP
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //testar se tem sessão iniciada
            if (Session["email"] == null)
                divLogout.Visible = false;
            else
                divLogin.Visible = false;
        }

        protected void btLogin_Click(object sender, EventArgs e)
        {
            //validar o login
            string email = tbEmail.Text;
            string password = tbPassword.Text;

            //administrador
            if(email=="admin@gmail.com" && password == "12345")
            {
                Session["email"] = email;
                Session["perfil"] = "admin";
                Session["DataLogin"] = DateTime.Now;
                //redirecionar para area admin
                Response.Redirect("Admin.aspx");
            }
            //utilizador
            if (email == "joaquim@gmail.com" && password == "12345")
            {
                Session["email"] = email;
                Session["perfil"] = "user";
                Session["DataLogin"] = DateTime.Now;
                //redirecionar para area admin
                Response.Redirect("User.aspx");
            }
            //login falhou
            lbErro.Text = "O login falhou. Tente novamente.";
        }
    }
}