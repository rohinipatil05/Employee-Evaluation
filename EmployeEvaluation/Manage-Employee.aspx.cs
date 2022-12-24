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
    public partial class Manage_Employee1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Gv();


            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add-Employee.aspx");
        }
        protected void Gv()
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT  TEmployee.employeeid AS employeeid, TEmployee.name AS name,TEmployee.email as email,TEmployee.gender as gender,TDepartment.name as departmentid,TDesignation.name as designationid FROM TEmployee LEFT JOIN TDepartment ON TEmployee.departmentid = TDepartment.departmentid LEFT JOIN TDesignation  ON TEmployee.designationid = TDesignation.designationid", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];

            GridView1.DataBind();
            ViewState["v1"] = ds;
            con.Close();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string EMPLOYEEID = GridView1.DataKeys[e.RowIndex].Values["employeeid"].ToString();
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from TEmployee where EMPLOYEEID=" + EMPLOYEEID, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Gv();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataSet mydataset = (DataSet)ViewState["v1"];
            DataTable mydatatable = mydataset.Tables["t1"];
            GridView1.DataSource = mydatatable;
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string query = "SELECT  TEmployee.employeeid AS employeeid, TEmployee.name AS name,TEmployee.email as email,TEmployee.gender as gender,TDepartment.name as departmentid,TDesignation.name as designationid,TEmployee.role AS role FROM TEmployee LEFT JOIN TDepartment ON TEmployee.departmentid = TDepartment.departmentid LEFT JOIN TDesignation  ON TEmployee.designationid = TDesignation.designationid where TEmployee.name like '%'+@name+'%'";
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@name", txtsearch.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditEmployee.aspx");
        }
    }
}