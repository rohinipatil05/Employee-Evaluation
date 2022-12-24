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
    public partial class EditEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                FillDrp2();
                FillDrp1();



            }

        }
        
        protected void close_Click(object sender, EventArgs e)
        {

        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False");

            string name =nametxt.Text,email=etxt.Text,designationid=DropDownList1.SelectedValue,gender=DropDownList2.SelectedValue,departmentid=DropDownList3.SelectedValue,role=DropDownList4.SelectedValue;
            con.Open();
            SqlCommand cmd = new SqlCommand("Update  TEmployee set name='"+name+ "',email='" + email + "',designationid='" + designationid + "', gender='" + gender + "',departmentid='" + departmentid + "',role='" + role + "' where name='"+name+"'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            L1.Text = "Updated Succesfully";

        }
        protected void FillDrp1()
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from TDepartment", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            DropDownList3.DataSource = ds.Tables["t1"];
            DropDownList3.DataTextField = "name";
            DropDownList3.DataValueField = "departmentid";
            DropDownList3.DataBind();
            con.Close();
        }
        protected void FillDrp2()
        {
            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from TDesignation", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "t1");
            DropDownList1.DataSource = ds.Tables["t1"];
            DropDownList1.DataTextField = "name";
            DropDownList1.DataValueField = "designationid";
            DropDownList1.DataBind();
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}