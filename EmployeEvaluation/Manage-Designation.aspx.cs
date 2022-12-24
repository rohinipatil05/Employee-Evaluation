using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace EmployeEvaluation
{
    public partial class Manage_Designation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDesignation.aspx");
        }
        
       

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

       
        

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
        //    SqlConnection con = new SqlConnection(strCon);
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand();
        //    string query = "select * from [dbo].[TEmployee] where name like '%'+@name+'%'";
        //    cmd.CommandText = query;
        //    cmd.Connection = con;
        //    cmd.Parameters.AddWithValue("@name", txtsearch.Text);
        //    DataTable dt = new DataTable();
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    da.Fill(dt);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}
    }
}