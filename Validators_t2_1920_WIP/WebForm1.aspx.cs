using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validators_t2_1920_WIP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string nome = args.Value.Trim();

            if(nome.Length<3)
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //validar matrícula
            string matricula = args.Value.Trim();
            //validar tamanho
            if (matricula.Length < 8)
            {
                args.IsValid = false;
                return;
            }
            //validar posição dos -
            if (matricula[2] != '-' || matricula[5]!='-')
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }
    }
}