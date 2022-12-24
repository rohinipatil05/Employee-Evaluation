using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace EmployeEvaluation
{
    public partial class AddDesignation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TDesignation(name)values(@name)", con);
            cmd.Parameters.AddWithValue("@name", nametxt.Text);
            cmd.ExecuteNonQuery();
            con.Close();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage-Designation.aspx");
        }
    }
}