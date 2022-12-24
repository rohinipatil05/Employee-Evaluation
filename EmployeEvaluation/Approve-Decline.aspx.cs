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
    public partial class Approve_Decline : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Gv();
            }
        }
        protected void Gv()
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT  TEvaluation.evaluationid AS evaluationid,TEmployee.name as employeeid,TEvaluation.evaluatorid AS evaluatorid,TCriteria.name as criteriaid,TEvaluation.rating AS rating,TEvaluation.remark AS remark ,TEvaluation.status AS status FROM TEvaluation LEFT JOIN TEmployee ON TEvaluation.employeeid = TEmployee.employeeid LEFT JOIN TCriteria  ON TEvaluation.criteriaid = TCriteria.criteriaid where TEvaluation.status='Pending'", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];

            GridView1.DataBind();
            ViewState["v1"] = ds;
            con.Close();


        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataSet mydataset = (DataSet)ViewState["v1"];
            DataTable mydatatable = mydataset.Tables["t1"];
            GridView1.DataSource = mydatatable;
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
           // string EvaluationID = GridView1.DataKeys[GridView1].Values["evaluationid"].ToString();
            
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update  TEvaluation set status='Approve' where evaluationid="+GridView1.SelectedRow.Cells[1].Text+" ", con);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        //protected void btnsearch_Click(object sender, EventArgs e)
        //{
        //    string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
        //    SqlConnection con = new SqlConnection(strCon);
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand();
        //    string query = "SELECT  TEvaluation.evaluationid as evaluationid, TEmployee.name as employeeid,TEvaluation.evaluatorid AS evaluatorid,TCriteria.name as criteriaid,TEvaluation.rating AS rating,TEvaluation.remark AS remark FROM TEvaluation LEFT JOIN TEmployee ON TEvaluation.employeeid=TEmployee.employeeid LEFT JOIN TCriteria  ON TEvaluation.criteriaid = TCriteria.criteriaid where TEvaluation.remark like '%'+@name+'%'";
        //    cmd.CommandText = query;
        //    cmd.Connection = con;
        //    cmd.Parameters.AddWithValue("@remark", txtsearch.Text);
        //    DataTable dt = new DataTable();
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    da.Fill(dt);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();

        //}
    }
    }
    
    
