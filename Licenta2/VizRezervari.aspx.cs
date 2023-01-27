using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace Licenta2
{
    public partial class VizRezervari : System.Web.UI.Page
    {     
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            iun.Visible = false;
            iul.Visible = false;
            aug.Visible = false;
            sep.Visible = false;
            oct.Visible = false;
            noi.Visible = false;
            dec.Visible = false;

            TextBox1.Text = "255";
            TextBox2.Text = "355.5";
            TextBox3.Text = "0";
            TextBox4.Text = "0";
            TextBox5.Text = "0";

            String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
               
                using (SqlCommand cmd = new SqlCommand("select Email, NumeP, Serviciu, Dataf, OraP from Rezervari where month(Dataf)=06  order by dataf desc", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtDateiun = new DataTable();
                        sda.Fill(dtDateiun);
                        iun.DataSource = dtDateiun;
                        iun.DataBind();
                    }

                }
                using (SqlCommand cmd = new SqlCommand("select Email, NumeP, Serviciu, Dataf, OraP from Rezervari where month(Dataf)=07  order by dataf desc", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtDateiul = new DataTable();
                        sda.Fill(dtDateiul);
                        iul.DataSource = dtDateiul;
                        iul.DataBind();
                    }

                }
                using (SqlCommand cmd = new SqlCommand("select Email, NumeP, Serviciu, Dataf, OraP from Rezervari where month(Dataf)=08  order by dataf desc", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtDateaug = new DataTable();
                        sda.Fill(dtDateaug);
                        aug.DataSource = dtDateaug;
                        aug.DataBind();
                    }
                   

                }
                using (SqlCommand cmd = new SqlCommand("select Email, NumeP, Serviciu, Dataf, OraP from Rezervari where month(Dataf)=09  order by dataf desc", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtDatesep = new DataTable();
                        sda.Fill(dtDatesep);
                        sep.DataSource = dtDatesep;
                        sep.DataBind();
                    }

                }
                using (SqlCommand cmd = new SqlCommand("select Email, NumeP, Serviciu, Dataf, OraP from Rezervari where month(Dataf)=10  order by dataf desc", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtDateoct = new DataTable();
                        sda.Fill(dtDateoct);
                        oct.DataSource = dtDateoct;
                        oct.DataBind();
                    }

                }
                using (SqlCommand cmd = new SqlCommand("select Email, NumeP, Serviciu, Dataf, OraP from Rezervari where month(Dataf)=11  order by dataf desc", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtDatenoi = new DataTable();
                        sda.Fill(dtDatenoi);
                        noi.DataSource = dtDatenoi;
                        noi.DataBind();
                    }

                }
                using (SqlCommand cmd = new SqlCommand("select Email, NumeP, Serviciu, Dataf, OraP from Rezervari where month(Dataf)=12  order by dataf desc", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtDatedec = new DataTable();
                        sda.Fill(dtDatedec);
                        dec.DataSource = dtDatedec;
                        dec.DataBind();
                    }

                }

            }
        }

        protected void btniun_Click(object sender, EventArgs e)
        {
            iun.Visible = true;
        }

        protected void btniul_Click(object sender, EventArgs e)
        {
            iul.Visible = true;
        }

        protected void btnaug_Click(object sender, EventArgs e)
        {
            aug.Visible = true;
        }

        protected void btnsep_Click(object sender, EventArgs e)
        {
            sep.Visible = true;
        }

        protected void btnoct_Click(object sender, EventArgs e)
        {
            oct.Visible = true;
        }

        protected void btnnoi_Click(object sender, EventArgs e)
        {
            noi.Visible = true;
        }

        protected void btndec_Click(object sender, EventArgs e)
        {
            dec.Visible = true;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}