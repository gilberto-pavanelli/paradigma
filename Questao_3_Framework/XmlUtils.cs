using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Data.SqlClient;
using Questao_3_Modelo;

namespace Framework.XMLUtils
{
    public class Importacao
    {

        public static void Importar(XmlDocument oXml)
        {
            try
            {
                // criacao do modelo (persistencia)
                ASPNETDBEntities oContext = new ASPNETDBEntities();
                
                // loop nos nós do xml para leitura e posterior gravacao
                XmlNodeList oNodeRegistros = oXml.SelectNodes("/importacao/tabela/registros/registro");
                String sCodigo =String.Empty;
                String sDescricao = String.Empty;
                foreach (XmlNode oNodeRegistro in oNodeRegistros)
                {
                    foreach (XmlNode oNodeCampo in oNodeRegistro.ChildNodes)
                    {

                        if (oNodeCampo.Attributes["nome"].Value == "Codigo")
                        {
                            sCodigo = oNodeCampo.Attributes["valor"].Value;
                        }
                        if (oNodeCampo.Attributes["nome"].Value == "Descricao")
                        {
                            sDescricao = oNodeCampo.Attributes["valor"].Value;
                        }
                       
                    }
                    if (!String.IsNullOrEmpty(sCodigo) && !String.IsNullOrEmpty(sDescricao))
                    {
                        Produtos oProduto = new Produtos();
                        oProduto.id_Produto = Convert.ToInt16(sCodigo);
                        oProduto.Descricao = sDescricao;

                        oContext.AddToProdutos(oProduto);
                    }
                }
                // persistir dados
                oContext.SaveChanges();
            }
            catch (Exception ex)
            {
                // tratar erro
                throw ex;
            }
        }

        public static void Importar(String sXml)
        {
            try
            {
                // carregar xml a partir da String
                XmlDocument oDoc = new XmlDocument();
                oDoc.Load(sXml);

                Importar(oDoc);
            }
            catch (Exception ex)
            {
                // tratar erro
                throw ex;
            }




        }

    }
}

