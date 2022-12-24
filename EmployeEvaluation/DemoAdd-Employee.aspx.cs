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
    public partial class Manage_Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Gv();
                Calendar1.Visible = false;

            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            string strCon = " Data Source=DESKTOP-221GK9Q\\SQLEXPRESS;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Employee(Name,Email,Date)values(@Name,@Email,@Date)", con);
            cmd.Parameters.AddWithValue("@Name", nametxt.Text);
            cmd.Parameters.AddWithValue("@Email", etxt.Text);
           

            DateTime d1 = Convert.ToDateTime(datetxt.Text);
            cmd.Parameters.AddWithValue("@Date", d1);
            cmd.ExecuteNonQuery();
            con.Close();
            L1.Text = "Submitted Succesfully";
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
   
    protected void Gv()
    {
        string strCon = " Data Source=DESKTOP-221GK9Q\\SQLEXPRESS;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
        SqlConnection con = new SqlConnection(strCon);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("Select * from TEmployee ", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "t1");
        GridView1.DataSource = ds.Tables["t1"];

        GridView1.DataBind();
        ViewState["v1"] = ds;
        con.Close();
    }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            nametxt.Text = "";
            etxt.Text = "";
            

           
            datetxt.Text = "";
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            string strCon = " Data Source=DESKTOP-221GK9Q\\SQLEXPRESS;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string query = "select * from [dbo].[Employee] where Name like '%'+@Name+'%'";
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@Name", txtsearch.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            datetxt.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            string EMPID = GridView1.DataKeys[e.RowIndex].Values["EmpID"].ToString();
            string strCon = " Data Source=DESKTOP-221GK9Q\\SQLEXPRESS;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from Employee where EMPID=" + EMPID, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Gv();
        }
    }
}