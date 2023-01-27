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
    public partial class RezervariC : System.Web.UI.Page
    {
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS2 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS3 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        public static String CS4 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = " ";
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select email, numep, serviciu, dataf,orap  from Rezervari where email='" + txtEmail.Text + "'";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(gry, con1);
            SqlDataReader rd;
            rd = cmd1.ExecuteReader();
            if (rd.Read())
            {
                String CS11 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                using (SqlConnection con11 = new SqlConnection(CS11))
                {
                    using (SqlCommand cmd11 = new SqlCommand("select email, numeP, Serviciu, Dataf, OraP from Rezervari where email='" + txtEmail.Text + "'", con11))
                    {
                        using (SqlDataAdapter sda11 = new SqlDataAdapter(cmd11))
                        {
                            DataTable dtDateP = new DataTable();
                            sda11.Fill(dtDateP);
                            Repeater1.DataSource = dtDateP;
                            Repeater1.DataBind();
                        }

                    }
                }
            }
            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "Adăugați Email utilizator!";
            }
        }
        //-selectare rezervari facute
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Avertisment.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select nume, parola, telefon, email, tip from Utilizator where email='" + TextBox1.Text + "'";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(gry, con1);
            SqlDataReader rd;
            rd = cmd1.ExecuteReader();
            if (rd.Read())
            {
                SqlConnection con2 = new SqlConnection(CS2);
                string gry2 = "select TipServiciu from Abonamente where TipServiciu='" + txtAPrenume.Text + "'";
                con2.Open();
                SqlCommand cmd2 = new SqlCommand(gry2, con2);
                SqlDataReader rd2;
                rd2 = cmd2.ExecuteReader();
                if (rd2.Read())
                {
                    
                }
            }
            else
            {
                Label9.ForeColor = Color.Red;
                Label9.Text = "Nume utilizator invalid!";
            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
                txtZi.Text = Calendar1.SelectedDate.ToString("d");
            }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select email, numeP, Serviciu, Dataf, OraP from Rezervari where email='" + TextBox1.Text + "'";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(gry, con1);
            SqlDataReader rd;
            rd = cmd1.ExecuteReader();
            if (rd.Read())
            {
               
                        SqlConnection con4 = new SqlConnection(CS4);
                        string gry4 = "delete Rezervari where Email='" + TextBox1.Text + "' and  Serviciu='" + txtAPrenume.Text + "' and  Dataf='" + txtZi.Text + "' and  OraP='" + txtora1.Text + "' ";
                        con4.Open();
                        SqlCommand cmd4 = new SqlCommand(gry4, con4);
                        SqlDataReader rd4;
                        rd4 = cmd4.ExecuteReader();
                        Label9.Text = "Ștergere realizată cu succes!";
                        Label9.ForeColor = Color.Green;


                     }
                    
                
            
            else
            {
                Label9.ForeColor = Color.Red;
                Label9.Text = "Datele introduse nu sunt corecte!";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtora1.Text = DropDownList1.SelectedValue.ToString();
        }
    }
}