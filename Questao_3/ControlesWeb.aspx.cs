using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Questao_3
{
    public partial class ControlesWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GButton_Click(object sender, EventArgs e)
        {
            LabelMessage.Text = "Postback confirmado";
        }
    }
}