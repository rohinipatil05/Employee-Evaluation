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
    public partial class newaddcriteria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TCriteria(name,description)values(@name,@description)", con);
            cmd.Parameters.AddWithValue("@name", nametxt.Text);
            cmd.Parameters.AddWithValue("@description", destxt.Text);
            
           



            cmd.ExecuteNonQuery();
            con.Close();
            
        }
    }
}