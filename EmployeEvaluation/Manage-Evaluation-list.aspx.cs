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
    public partial class Manage_Evaluation_list : System.Web.UI.Page
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

        }
        protected void Gv()
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("SELECT  TEvaluation.evaluationid AS evaluationid,TEmployee.name as employeeid,TEvaluation.evaluatorid AS evaluatorid,TCriteria.name as criteriaid,TEvaluation.rating AS rating,TEvaluation.remark AS remark ,TEvaluation.status AS status FROM TEvaluation LEFT JOIN TEmployee ON TEvaluation.employeeid = TEmployee.employeeid LEFT JOIN TCriteria  ON TEvaluation.criteriaid = TCriteria.criteriaid", con);
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
    }
}