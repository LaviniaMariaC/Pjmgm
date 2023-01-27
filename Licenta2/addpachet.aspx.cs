using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Licenta2
{
    public partial class addpachet : System.Web.UI.Page
    {
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
       

        protected void Page_Load(object sender, EventArgs e)
        { lblrez.Visible=false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(CS1);
            string gry = "select nume, parola, telefon, email, tip from Utilizator where email='" + txtemail.Text + "'";
            con1.Open();
            SqlCommand cmd1 = new SqlCommand(gry, con1);
            SqlDataReader rd;
            rd = cmd1.ExecuteReader();
            if (rd.Read())
            {
                 



                if (txtemail.Text != " ")
                {
                     
                    string status = "neverificat";
                    string luna = "1";
                     
                    String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))

                    {

                       


                        SqlCommand cmd = new SqlCommand("insert into pachete values('" + txtemail.Text + "','" + droppachet.Text + "','" + luna + "','"+ status + "')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblrez.ForeColor = Color.Green;
                        lblrez.Text = "Rezervare efectuată cu succes!";
                    }
                }






            }
            else
            {
               
                lblrez.ForeColor = Color.Red;
                lblrez.Text = "Email utilizator incorect!";
                Button1.Visible = true;

            }

        }

        protected void droppachet_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}