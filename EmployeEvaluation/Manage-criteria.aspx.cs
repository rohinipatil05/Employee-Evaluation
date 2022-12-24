using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace EmployeEvaluation
{
    public partial class Manage_Criteria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Gv();


            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
        protected void Gv()
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from TCriteria order by criteriaid desc", con);
                DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];

            GridView1.DataBind();
            ViewState["v1"] = ds;
            con.Close();


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string CRITERIAID = GridView1.DataKeys[e.RowIndex].Values["criteriaid"].ToString();
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from TCriteria where CRITERIAID=" + CRITERIAID, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Gv();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add-criteria.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            DataSet mydataset = (DataSet)ViewState["v1"];
            DataTable mydatatable = mydataset.Tables["t1"];
            GridView1.DataSource = mydatatable;
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}