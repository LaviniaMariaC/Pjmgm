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
    public partial class Inregistrare : System.Web.UI.Page
    {
        String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            btnAdd.Visible = false;

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


        public static string EncodePasswordToBase64(string password)
        {
            try
            {
                byte[] encData_byte = new byte[password.Length];
                encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
                string encodedData = Convert.ToBase64String(encData_byte);
                return encodedData;
            }
            catch (Exception ex)
            {
                throw new Exception("Error in base64Encode" + ex.Message);
            }
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {

            txtParola.Text = EncodePasswordToBase64(txtParola.Text);
            txtCparola.Text = EncodePasswordToBase64(txtCparola.Text);

           if (txtNume.Text != "" & txtParola.Text != "" && txtNr.Text != "" && txtEmail.Text != "" && txtCparola.Text != "" && ddltip.Text != "" && bifa.Checked && bifa1.Checked )
            {
              
               if (txtParola.Text == txtCparola.Text )
                {
                    String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("insert into Utilizator values('" + txtNume.Text + "','" + txtParola.Text + "','" + txtNr.Text + "','" + txtEmail.Text + "','" + ddltip.Text + "')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Response.Redirect("~/Autentificare.aspx");
                    }
                }
                else
                {
                    lblcnpAdd.ForeColor = Color.Red;
                    lblcnpAdd.Text = "Reintroduceți parola!";
                }
            }
            else
            {
                lblcnpAdd.ForeColor = Color.Red;
                lblcnpAdd.Text = "Completați toate câmpurile și aveți grijă să bifați căsuțele!";
            }  
        }

        protected void btnverif_Click(object sender, EventArgs e)
        {
             
                string mcon2 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
                SqlConnection con22 = new SqlConnection(mcon2);
                con22.Open();
                SqlCommand cmdd2 = new SqlCommand("select email from utilizator where email=@email", con22);
                cmdd2.Parameters.AddWithValue("@email", txtEmail.Text);
                SqlDataReader read2 = cmdd2.ExecuteReader();
                if (read2.HasRows)
                {

                  
                lblcnpAdd.Visible = true;
                lblcnpAdd.ForeColor = Color.Red;
                lblcnpAdd.Text = "Email ul introdus nu este disponibil!";
                 }
            else
            {
                btnAdd.Visible = true;
                lblcnpAdd.ForeColor = Color.Green;
                lblcnpAdd.Text = "Email ul introdus este disponibil!";
            }
        }
    }

 }
