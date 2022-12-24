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
    public partial class demoappro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void updaterow(int evaluationid, String status)
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            String updatedata = "Update TEvaluation set status='" + status + "' where evaluationid=" + evaluationid;
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

       

       

        protected void Submit_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                int evaluationid = Convert.ToInt32(row.Cells[1].Text);
                if (status.Checked)
                {
                    updaterow(evaluationid, "Approved");
                }
                else
                {
                    updaterow(evaluationid, "Decline");
                }

            }
            L3.Text = "Applications Has Been Approved Successfully";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
    }
