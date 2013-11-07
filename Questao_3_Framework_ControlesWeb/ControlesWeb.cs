using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.UI.WebControls;
using System.Web.UI;

[assembly: TagPrefix("Framework_ControlesWeb", "Framework")]
namespace Framework_ControlesWeb
{
    [ToolboxData("<{0}:GTextBox ID='GTextBox' Text='Text' runat=\"server\"> </{0}:GTextBox>")]
    public class GTextBox : TextBox
    {
        public override void RenderControl(HtmlTextWriter writer)
        {
            if (!this.ReadOnly)
            {
                base.RenderControl(writer);
            }
            else
            {
                // renderizar span
                writer.Write(string.Format("<span id=\"{0}\" class=\"{1}\">{2}</span>",
                                this.ClientID,
                                this.CssClass,
                                this.Text));
            }
        }
    }

    [ToolboxData("<{0}:GButton ID='GButton' Text='Text' runat=\"server\"> </{0}:GButton>")]
    public class GButton : Button
    {
     
        public Boolean ExigirConfirmacao 
        {
            get
            {
                // verificar se existe no viewstate
                object exigirConfirmacao = this.ViewState["ExigirConfirmacao"];
                if (exigirConfirmacao != null)
                    return (bool)this.ViewState["ExigirConfirmacao"];
                else
                    return true;
            }
            set
            {
                // adicionar ExigirConfirmacao no viewState 
                ViewState["ExigirConfirmacao"] = value;
            }
        }

        protected override void AddAttributesToRender(HtmlTextWriter writer)
        {

            if (this.ExigirConfirmacao == true)
            {
                // adicionar script
                string sScript = @"return confirm('Confirma a operação?')";
                writer.AddAttribute(HtmlTextWriterAttribute.Onclick, sScript);
            }
            base.AddAttributesToRender(writer);
        }

        
    }
}
