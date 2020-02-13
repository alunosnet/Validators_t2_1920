using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validators_t2_1920_WIP
{
    public partial class produto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string nome = args.Value;

            if (nome.Length < 3)
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string descricao = args.Value;

            if (descricao.Length < 4)
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            decimal preco = decimal.Parse(args.Value);

            if (preco < 0)
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime data = DateTime.Parse(args.Value);

            if (data < DateTime.Now.Date)
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }
    }
}