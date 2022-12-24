using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;

namespace EmployeEvaluation
{
    public partial class Add_Evaluator : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source = HP;Initial Catalog=EmployeeEvaluation;Integrated Security = True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd.CommandText = "Update TEmployee set TEmployee.role='evaluator' where TEmployee.name='" + DropDownList2.SelectedItem.Value.ToString() + "'";

            cmd.Connection = cn;
            cmd.ExecuteNonQuery();

            //DropDownList1.Text="";
            L1.Text = "Evaluator Added";

            cn.Close();

        }
        private string GetDate()
        {
            return DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
        }
    }
}