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
    public partial class Add_Employee : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                FillDrp2();
                FillDrp1();
               


            }
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {

            string strCon = " Data Source=HP;Initial Catalog=EmployeeEvaluation;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(strCon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TEmployee(name,email,designationid,gender,departmentid,role)values(@name,@email,@designationid,@gender,@departmentid,@role)", con);
            cmd.Parameters.AddWithValue("@name", nametxt.Text);
            cmd.Parameters.AddWithValue("@email", etxt.Text);
            cmd.Parameters.AddWithValue("@designationid", DropDownList1.SelectedValue);

            cmd.Parameters.AddWithValue("@gender", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@departmentid", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@role", DropDownList4.SelectedValue);




            cmd.ExecuteNonQuery();
            con.Close();
            L1.Text = "Submitted Succesfully";


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

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}