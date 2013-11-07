using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Framework.XMLUtils;
using System.Xml;
using System.Configuration;

namespace Questao_3
{
    public partial class XmlUtils : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonImportar_Click(object sender, EventArgs e)
        {
            //if (FileUploadImportacao.HasFile)
            //{
            //    try
            //    {
            //        // executar upload
            //        string filename = Path.GetFileName(FileUploadImportacao.FileName);
            //        FileUploadImportacao.SaveAs(Server.MapPath("~/uploads/") + filename);

                    XmlDocument oDoc = new XmlDocument();
                    oDoc.Load(Server.MapPath("~/uploads/") + "importacao.xml");
                    // importar xml
                    Importacao.Importar(oDoc);
                   
                //}
                //catch (Exception ex)
                //{
                //    // tratar erro
                //    throw ex;
                //}
            //}
        }
    }
}