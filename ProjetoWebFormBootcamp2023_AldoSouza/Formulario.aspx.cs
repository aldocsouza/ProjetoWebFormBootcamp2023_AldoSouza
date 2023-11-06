using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWebFormBootcamp2023_AldoSouza
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCblDiasSemana_Click(object sender, EventArgs e)
        {
            lblCblDiasSemana.Text = "Os dias da Semana Escolhidos foram: <br>";

            foreach(ListItem item in cblCheckBoxSemana.Items)
            {
                if (item.Selected)
                {
                    lblCblDiasSemana.Text += " - " + item.Text + "<br>";
                }
            }
        }
    }
}