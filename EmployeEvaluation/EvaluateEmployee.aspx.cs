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
    public partial class EvaluateEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                FillDrp2();
                FillDrp1();



            }
        }
        private string GetDate()
        {
            return DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TEvaluation(employeeid,criteriaid,rating,remark,status,date)values(@employeeid,@criteriaid,@rating,@remark,'Pending','" + GetDate() + "')", con);
            cmd.Parameters.AddWithValue("@employeeid", DropDownList1.SelectedValue);

            cmd.Parameters.AddWithValue("@criteriaid", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@rating", TextBox1.Text);
            cmd.Parameters.AddWithValue("@remark", TextBox2.Text);
            
           


            cmd.ExecuteNonQuery();
            con.Close();
            L1.Text = "Submitted Succesfully";

        }
        protected void FillDrp1()
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from TEmployee", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            DropDownList1.DataSource = ds.Tables["t1"];
            DropDownList1.DataTextField = "name";
            DropDownList1.DataValueField = "employeeid";
            DropDownList1.DataBind();
            con.Close();
        }
        protected void FillDrp2()
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from TCriteria", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            DropDownList2.DataSource = ds.Tables["t1"];
            DropDownList2.DataTextField = "name";
            DropDownList2.DataValueField = "criteriaid";
            DropDownList2.DataBind();
            con.Close();
        }
    }
}