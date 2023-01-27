using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

namespace Licenta2
{
    public partial class Contactlog : System.Web.UI.Page
    {
        String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            BingUType();
        }
        private void BingUType()
        {
            using (SqlConnection con1 = new SqlConnection(CS1))
            {
                SqlCommand cmd1 = new SqlCommand("select *from TipU", con1);
                con1.Open();
                SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                sda1.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    ddltip.DataSource = dt;
                    ddltip.DataTextField = "TipNume";
                    ddltip.DataValueField = "TipId";
                    ddltip.DataBind();
                    ddltip.Items.Insert(0, new ListItem("Selectați", "0"));
                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtNume.Text != "" & txtemaill.Text != "" && txtsub.Text != "" && txtmes.Text != "" && deacord.Checked)
            {

                String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into mesaje values('" + txtNume.Text + "','" + txtemaill.Text + "','" + txtsub.Text + "','" + txtmes.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    txtNume.Text ="";
                    txtemaill.Text = "";
                    txtsub.Text = "";
                    txtmes.Text = "";
                    lblcnpAdd.ForeColor = Color.Green;
                    lblcnpAdd.Text = "Mulțumim pentru mesaj!";
                }
            }


            else

            {
                {
                    lblcnpAdd.ForeColor = Color.Red;
                    lblcnpAdd.Text = "Completați toate câmpurile și  aveți grijă să bifați căsuța!";
                }
            }
        }

        protected void deacord_CheckedChanged(object sender, EventArgs e)
        {

        }
    }

}
