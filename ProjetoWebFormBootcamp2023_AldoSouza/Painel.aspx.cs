using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWebFormBootcamp2023_AldoSouza
{
    public partial class Painel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
        }

        protected void btnProximoP2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
        }

        protected void btnVoltarP3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
        }

        protected void btnProximoP3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
        }

        protected void btnVoltarP4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
        }

        protected void btnEnviarP4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
            lblAviso.Text = "AVISO: Seus dados foram enviados com sucesso!";
        }
    }
}