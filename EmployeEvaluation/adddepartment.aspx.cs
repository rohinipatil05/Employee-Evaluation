using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace EmployeEvaluation
{
    public partial class adddepartment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TDepartment(name)values(@name)", con);
            cmd.Parameters.AddWithValue("@name", nametxt.Text);





            cmd.ExecuteNonQuery();
            con.Close();
            L1.Text = "Submitted Succesfully";
        }
    }
}