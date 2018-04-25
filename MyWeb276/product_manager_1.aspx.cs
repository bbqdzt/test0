using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class product_manager_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       Label1.Text = DropDownList1.SelectedValue;
       string str0 = "select * from dbo.Product where TypId =" + DropDownList1.SelectedValue;
       string strconn = System.Configuration.ConfigurationManager.ConnectionStrings["shopdataConnectionString"].ToString();
      // string strconn = "Data Source=.;Initial Catalog=shopdata;Integrated Security=True";
       SqlConnection conn = new SqlConnection();
       conn.ConnectionString = strconn;
       conn.Open();

       SqlDataAdapter sqlAdapter = new SqlDataAdapter(str0, conn);
       DataSet ds = new DataSet();
       sqlAdapter.Fill(ds, "mytab");


        GridView1.AllowPaging = true;
        GridView1.PageSize = 20;

        GridView1.DataSource = ds.Tables["mytab"];
       GridView1.DataBind();
    }
}