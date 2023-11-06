using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoWebFormBootcamp2023_AldoSouza
{
    public partial class Calculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcOperacao_Click(object sender, EventArgs e)
        {
            if (double.TryParse(txtbNumero1.Text, out double numero1) 
                && 
                double.TryParse(txtbNumero2.Text, out double numero2))
            {
                double calculo = 0;

                switch (ddlOperacoes.SelectedValue)
                {
                    case "0":
                        calculo = numero1 + numero2;
                         break;
                    case "1":
                        calculo = numero1 - numero2;
                        break;
                    case "2":
                        calculo = numero1 * numero2;
                        break;
                    case "3":
                        calculo = numero1 / numero2;
                        break;
                }
                lblResultado.Text = calculo.ToString();
            }
        }
    }
}