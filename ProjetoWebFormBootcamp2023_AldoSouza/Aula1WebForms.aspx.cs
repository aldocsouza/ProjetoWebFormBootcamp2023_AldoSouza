using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ProjetoWebFormBootcamp2023_AldoSouza
{
    public partial class Aula1WebForms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Vamos alimentar a nossa DropDownList
            //if (!IsPostBack) //Faz com que não se repita os campos
            //{
            //(ID da Lista).Items.Add (new ListItem("texto", "value"))

            //ddlEstados.Items.Add(new ListItem("Macapá", "1"));
            //ddlEstados.Items.Add(new ListItem("Minas Gerais", "3"));
            //ddlEstados.Items.Add(new ListItem("Mato Grosso", "4"));
            //ddlEstados.Items.Add(new ListItem("Rio Grande do Sul", "5"));
            //ddlEstados.Items.Add(new ListItem("Tocantins", "6"));
            //ddlEstados.Items.Add(new ListItem("Amazonas", "2"));

            //Vamos alimentar a Dropdown com uma DATATABLE;
            //DataTable dt = new DataTable();
            //Adicionando colunas no Datatable;
            //dt.Columns.Add("Estado", typeof(string));
            // dt.Columns.Add("valor", typeof(int));

            //Adicionando Linhas a minha tabela;
            //dt.Rows.Add("", "0");
            // dt.Rows.Add("Distrito Federal", "1");
            //dt.Rows.Add("Pará", "2");
            //dt.Rows.Add("Minas Gerais", "3");
            //dt.Rows.Add("Rio Grande do Sul", "4");

            //Vamos vincular o nosso DataTable com a DropwDownList
            //(Id da DropDownList).DataSource = nome da fonte dados;
            //(Id da DropDownList).DataTextField = (nome da fonte de dados).Columns["Coluna para o Usuário"].ToString();
            //(Id da DropDownList).DataValueField = (nome da fonte de dados).Columns["Coluna para o Valor"].ToString();
            //(Id da DropDownList).DataBind;

            //ddlEstados.DataSource = dt;
            // ddlEstados.DataTextField = dt.Columns["Estado"].ToString();
            //ddlEstados.DataValueField = dt.Columns["Valor"].ToString();
            // ddlEstados.DataBind(); //Aqui é vinculado a minha fonte de dados com a Dropdo wn


            //Vamos alimentar a Dropdown com uma Lista;
            //List<string> (nome da lista) = new List<string>();
            //(nome da lista).Add("O elemento da Lista");
            if (!IsPostBack)
            { 
                List<string> lst1Estados = new List<string>();
                lst1Estados.Add("--Selecione o Estado--");
                lst1Estados.Add("Pará");
                lst1Estados.Add("Rio de Janeiro");
                lst1Estados.Add("Bahia");
                lst1Estados.Add("Amapá");

                List<string> lst2Estados = new List<string>();
                //Está é outra forma de fazer inserção de dados na Dropdown
                //(nome da lista).Insert(indice, "O elemento da Lista");
                lst2Estados.Insert(0, "--Selecione o Estado--");
                lst2Estados.Insert(1, "São Paulo");
                lst2Estados.Insert(2, "Pernambuco");
                lst2Estados.Insert(3, "Espirito Santo");
                lst2Estados.Insert(4, "Sergipe");

                //Vinculação da Lista com a dropdown
                ddlEstados.DataSource = lst1Estados;
                ddlEstados.DataBind();
            }
        }

        protected void TxtbNome_TextChanged(object sender, EventArgs e)
        {
          

        }

        protected void btnQuantidade_Click(object sender, EventArgs e)
        {
            //Items.Count (Faz as contagens de Itens)
            //(Id da Label).Text = "Frase para exibir na tela" + (Id da ListBox).Items.Count.ToString();
            lblResutaldoNaTela.Text = "A quantidade de itens na Lista é: " + LbxNomes.Items.Count.ToString();
        }

        protected void btnTextoSelecionado_Click(object sender, EventArgs e)
        {
            //SelectedItem.Text (Com que exiba o Item selecionado)
            //(Id da Label).Text = "Frase para exibir na tela" + (Id da ListBox).SelectedItem.Text.ToString();
            //lblResultadoTextoSelecionado.Text = "Você selecioneu os seguites Nomes: <br>" + LbxNomes.SelectedItem.Text.ToString();

            //Análise para adicionar na tela os itens selecionados
            foreach(ListItem item in LbxNomes.Items)
            {
                if (item.Selected)
                {
                    Response.Write("Você selecionou o(s) seguinte(s) itens: <br>" + item);
                    
                }
            }

        }

        protected void BtnNomeEnviar_Click(object sender, EventArgs e)
        {
            //Response.Write(ID_do_TextBox.Text);
            Response.Write(TxtbNome.Text);
        }

        protected void btnDdlTextoSelecionado_Click1(object sender, EventArgs e)
        {
            //ESTE FICOU COMO DESAFIO PARA MOSTRAR O ESTAO SELECIONADO USANDO A DROPDOWNLIST COM UMA LISTA
            //Resolvido: Na "Page Load" basta colocar o código da Lista entre um "if(!IsPostBack){}" que estará resolvido;
            lblDdlResultadoNaTela.Text = "O estado é: <br>" + ddlEstados.SelectedItem.Text.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (chkCheckBox.Checked)
            {
                lblChkResultadoNaTela.Text = "AVISO: Você clicou no Checkbox!";
            }
            else
            {
                lblChkResultadoNaTela.Text = "AVISO: Você ÑÂO clicou no Checkbox!";
            }
        }

        protected void btnClbLinguagens_Click(object sender, EventArgs e)
        {
            //1º Forma
            lblClbResultadoNaTela.Text = "As linguagens selecionadas foram: <br/>";
           //foreach (ListItem item in chkCheckBoxList.Items)
           //{
           //     if (item.Selected)
           //     {
           //         lblClbResultadoNaTela.Text += item.Text + "<br/>";
           //     }
           // }

            //2º Forma
            for(int i = 0; i < chkCheckBoxList.Items.Count; i++)
            {
                if (chkCheckBoxList.Items[i].Selected)
                {
                    lblClbResultadoNaTela.Text += chkCheckBoxList.Items[i].Text + "<br>";
                }
            }
        }

        protected void btnRadbFornecedor_Click(object sender, EventArgs e)
        {
            if (radbPessoaFisica.Checked)
            {
                lblRadbResultadoNaTela.Text = "Tipo do Fornecedor é: " + radbPessoaFisica.Text;
            }
            else
            {
                lblRadbResultadoNaTela.Text = "Tipo do Fornecedor é: " + radbPessoaJuridica.Text;
            }
        }
    }
}
