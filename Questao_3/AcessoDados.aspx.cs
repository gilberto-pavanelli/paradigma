using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Questao_3_Framework_AcessoDados;
using System.Data.SqlClient;
using System.Configuration;

namespace Questao_3
{
    public partial class AcessoDadosPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonGravar_Click(object sender, EventArgs e)
        {
            try
            {
                // criar objeto para envio a camada de acesso a dados
                Cliente oCliente = new Cliente();
                oCliente.Codigo = Convert.ToInt16(TextBoxCodigo.Text);
                oCliente.Descricao = TextBoxDescricao.Text;

                // retortna sql de insercao
                // retorno de string para desacoplar dll de acesso a dados da conexao
                String sSqlInsert = AcessoDados.Inserir(oCliente);


                //executa insert
                using (SqlConnection oConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(sSqlInsert, oConnection))
                    {
                        oConnection.Open();
                        cmd.ExecuteNonQuery();
                        if (oConnection.State == System.Data.ConnectionState.Open)
                            oConnection.Close();
                        LabelMessage.Text = "Operação executada com sucesso.";
                    }
                }
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message;
            }
            
        }
    }
}