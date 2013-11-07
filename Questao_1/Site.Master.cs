using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Questao_1
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // retirar menu para cadastro de colaborador e relatorio se usuario nao for admim
            // esta protegido pelo webconfig porem somente para nao aparacer
            if (Page.User.Identity.Name.ToLower() != "admin")
            {
                NavigationMenu.Items.RemoveAt(0);
                NavigationMenu.Items.RemoveAt(1);
            }

            CarregaUsuarioSessao();
        }

        public void CarregaUsuarioSessao()
        {
            // Carrega id_Usuario na sessao
            if (Page.User.Identity.IsAuthenticated)
            {
                MembershipUser oMember = Membership.GetUser();
                Session["id_User"] = oMember.ProviderUserKey.ToString();
            }
        }
    }
}
