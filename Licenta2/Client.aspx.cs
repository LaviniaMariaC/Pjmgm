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
    public partial class Client1 : System.Web.UI.Page
    {
        string prestator, serviciu;
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            Button1.Visible = false;

            String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select TipServiciu, PretI,PretR, Durata,TipRed,PretR, prestator  from abonamente", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtDateP = new DataTable();
                        sda.Fill(dtDateP);
                        rptrDatep.DataSource = dtDateP;
                        rptrDatep.DataBind();

                       
                    }

                }
         
            }
            

        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {DateTime ziua = Calendar1.SelectedDate;
            txtZi.Text = Calendar1.SelectedDate.ToString("MM-dd-yyyy");
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select nume, parola, telefon, email, tip from Utilizator where email='" + txEmail.Text + "'";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(gry, con1);
            SqlDataReader rd;
            rd = cmd1.ExecuteReader();
            if (rd.Read())
            {
                prestator = prest.Text;
                
                 
             
            if (txEmail.Text != " " )
                { 
                    
                    
                    String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                     using (SqlConnection con = new SqlConnection(CS))

                    {

                        string zi = Convert.ToString(txtZi.Text);
         
                            
                        SqlCommand cmd = new SqlCommand("insert into Rezervari values('" + txEmail.Text + "','" +  prest.Text + "','" + tips.Text + "','" + zi + "','"  +oradrop.Text + "')"
                            , con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lbldataP.ForeColor = Color.Green;
                        lbldataP.Text = "Rezervare efectuată cu succes!";
                    }
                }
                
                




            }
            else
            {
                lbldatetime.Visible = false;
                lbldataP.ForeColor = Color.Red;
                lbldataP.Text = "Email utilizator incorect!";
                Button1.Visible = true;

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RezervariC.aspx");
        }

        protected void txtZi_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtora_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
         }

        protected void tips_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtdatetime_TextChanged(object sender, EventArgs e)
        {             

           
        }

        protected void verific_Click(object sender, EventArgs e)
        {
            lbldataP.Text = "";
            string mcon = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
            SqlConnection con2 = new SqlConnection(mcon);
            string mcon1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
            SqlConnection con21 = new SqlConnection(mcon1);
            string mcon2 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
            SqlConnection con22 = new SqlConnection(mcon2);
            con2.Open();
            con21.Open();
            con22.Open();

            SqlCommand cmdd = new SqlCommand("select dataf,orap from rezervari where dataf=@zi ", con2);
            SqlCommand cmdd1 = new SqlCommand("select dataf,orap from rezervari where orap = @ora ", con21);
            SqlCommand cmdd2 = new SqlCommand("select numep from rezervari where numep = @nume ", con22);

            cmdd.Parameters.AddWithValue("@zi", txtZi.Text);
            cmdd1.Parameters.AddWithValue("@ora", oradrop.Text);
            cmdd2.Parameters.AddWithValue("@nume", prest.Text);

            SqlDataReader read = cmdd.ExecuteReader();
            SqlDataReader read1 = cmdd1.ExecuteReader();
            SqlDataReader read2 = cmdd2.ExecuteReader();

            if (read.HasRows && read1.HasRows && read2.HasRows)
            {
                lbldatetime.Visible = true;
                lbldatetime.ForeColor = Color.Red;
                lbldatetime.Text = "Data si ora aleasa nu sunt disponibile!";
                Button1.Visible = false;

            }
            else
            {
                lbldatetime.ForeColor = Color.Green;

                lbldatetime.Visible = true;
                lbldatetime.Text = "Data si ora aleasa sunt disponibile!";
                Button1.Visible = true;
            }
        }

        protected void prest_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
    }
