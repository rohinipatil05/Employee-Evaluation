using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeEvaluation
{
    public partial class Edit_Designation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * from TDesignation", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "name";
            DropDownList1.DataValueField = "designationid";
            DropDownList1.DataBind();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("update TDesignation set TDesignation.name='" + nametxt.Text + "' where TDesignation.name='" + DropDownList1.SelectedItem.Value.ToString() + "' )", con);
            //cmd.Parameters.AddWithValue("@ona",DropDownList1.SelectedItem.Value.ToString());
            //cmd.Parameters.AddWithValue("@na", nametxt.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Manage-Designation.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}