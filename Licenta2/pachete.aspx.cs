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
    public partial class pachete : System.Web.UI.Page
    {
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Label3.Visible = false;
            lbldataP.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using (SqlConnection con1 = new SqlConnection(CS1))
            {
                string status = "neverificat";
                SqlCommand cmd1 = new SqlCommand("select nume, parola, telefon, email, tip from Utilizator where email='" + txtemail.Text + "'", con1);
                con1.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {







                    String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))

                    {
                        


                        SqlCommand cmd = new SqlCommand("insert into pachete values('" + txtemail.Text + "','" + "Simplu - Păr Scurt" + "','" + 3 + "','" + status + "')"
                            , con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Label3.ForeColor = Color.Green;
                        Label3.Text = "Cerere efectuată cu succes!";
                        Label2.Visible = true;
                        Label3.Visible = true;
                    }







                }
                else
                {

                    lbldataP.ForeColor = Color.Red;
                    lbldataP.Text = "Email utilizator incorect!";


                }
            }
        }
        protected void btnparmed_Click(object sender, EventArgs e)
        {
            using (SqlConnection con1 = new SqlConnection(CS1))
            {
                string status = "neverificat";
                SqlCommand cmd1 = new SqlCommand("select nume, parola, telefon, email, tip from Utilizator where email='" + txtemail.Text + "'", con1);
                con1.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {


                    String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))

                    {



                        SqlCommand cmd = new SqlCommand("insert into pachete values('" + txtemail.Text + "','" + "Simplu - Păr Mediu" + "','" + 3 + "','" + status + "')"
                            , con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Label3.ForeColor = Color.Green;
                        Label3.Text = "Cerere efectuată cu succes!";
                        Label2.Visible = true;
                        Label3.Visible = true;
                    }
                }







                else
                {

                    Label3.ForeColor = Color.Red;
                    Label3.Text = "Email utilizator incorect!";


                }
            }
        }

        protected void btnplung_Click(object sender, EventArgs e)
        {

            using (SqlConnection con1 = new SqlConnection(CS1))
            {
                string status = "neverificat";
                SqlCommand cmd1 = new SqlCommand("select nume, parola, telefon, email, tip from Utilizator where email='" + txtemail.Text + "'", con1);
                con1.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {


                    String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))

                    {



                        SqlCommand cmd = new SqlCommand("insert into pachete values('" + txtemail.Text + "','" + "Simplu - Păr Lung" + "','" + 3 + "','" + status + "')"
                            , con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Label3.ForeColor = Color.Green;
                        Label3.Text = "Cerere efectuată cu succes!";
                        Label2.Visible = true;
                        Label3.Visible = true;
                    }







                }
                else
                {

                    Label3.ForeColor = Color.Red;
                    Label3.Text = "Email utilizator incorect!";


                }
            }

        }

        protected void btnhaicupr_Click(object sender, EventArgs e)
        {

            using (SqlConnection con1 = new SqlConnection(CS1))
            {
                string status = "neverificat";
                SqlCommand cmd1 = new SqlCommand("select nume, parola, telefon, email, tip from Utilizator where email='" + txtemail.Text + "'", con1);
                con1.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {


                    String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))

                    {



                        SqlCommand cmd = new SqlCommand("insert into pachete values('" + txtemail.Text + "','" + "1+1" + "','" + 3 + "','" + status + "')"
                            , con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Label3.ForeColor = Color.Green;
                        Label3.Text = "Cerere efectuată cu succes!";
                        Label2.Visible = true;
                        Label3.Visible = true;
                    }
                }







                else
                {

                    Label3.ForeColor = Color.Red;
                    Label3.Text = "Email utilizator incorect!";


                }
            }
        }

        protected void btnmanipedi_Click(object sender, EventArgs e)
        {


            using (SqlConnection con1 = new SqlConnection(CS1))
            {
                string status = "neverificat";
                SqlCommand cmd1 = new SqlCommand("select nume, parola, telefon, email, tip from Utilizator where email='" + txtemail.Text + "'", con1);
                con1.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {


                    String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(CS))

                        {



                            SqlCommand cmd = new SqlCommand("insert into pachete values('" + txtemail.Text + "','" + "Mani+pedi" + "','" + 3 + "','" + status + "')"
                                , con);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            Label3.ForeColor = Color.Green;
                            Label3.Text = "Cerere efectuată cu succes!";
                            Label2.Visible = true;
                            Label3.Visible = true;
                        }
                    }






                
                else
                {

                    Label3.ForeColor = Color.Red;
                    Label3.Text = "Email utilizator incorect!";


                }
            }
        }
    }
}