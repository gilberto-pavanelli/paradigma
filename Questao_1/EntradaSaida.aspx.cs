using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Questao_1
{
    public partial class EntradaSaida : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            // filtrar grid para registros dos usuarios
            if (Session["id_User"] == null)
            {
                ((SiteMaster)Page.Master).CarregaUsuarioSessao();
            }
            SqlDataSourceEntradaSaida.SelectCommand = "SELECT * FROM [Registros] WHERE ([id_User] = '" + Session["id_User"] + "') ORDER BY DataRegistro";
        }

        protected void ButtonRegistrar_Click(object sender, EventArgs e)
        {

            // chamar sp para registro
            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("sp_registrarHora", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@id_User", SqlDbType.VarChar).Value = Session["id_User"];
                    if (RadioButtonListTipo.SelectedIndex == 0)
                        cmd.Parameters.Add("@tipo", SqlDbType.VarChar).Value = "Entrada";
                    else
                        cmd.Parameters.Add("@tipo", SqlDbType.VarChar).Value = "Saída";

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            GridViewRegistros.DataBind();
        }

       

       
       


    }
}