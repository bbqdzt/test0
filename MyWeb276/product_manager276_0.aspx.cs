using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class product_manager276_0 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string str0 = "select * from dbo.Product";
        string strconn = "Data Source=.;Initial Catalog=shopdata;Integrated Security=True";
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = strconn;
        conn.Open();

        SqlDataAdapter sqlAdapter = new SqlDataAdapter(str0,conn);
        DataSet ds = new DataSet();
        sqlAdapter.Fill(ds,"mytab");

        GridView1.AllowPaging = true;
        GridView1.PageSize = 20;

        GridView1.DataSource = ds.Tables["mytab"];
        GridView1.DataBind();
    }



    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridView1.PageIndex = e.NewSelectedIndex;
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
    }
    protected void GridView1PageIndexChanged(object sender, EventArgs e)
    {

    }
    protected void hanged(object sender, EventArgs e)
    {

    }

}