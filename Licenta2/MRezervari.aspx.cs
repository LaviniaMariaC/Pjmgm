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
    public partial class MRezervari : System.Web.UI.Page
    {
        public static String CS1 = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["LicentaConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select NumeU, TipAb, Data, Dataf from Rezervari", con))
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ModifRezervari.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdaugRezervari.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StergRezervari.aspx");
        }
    }
}