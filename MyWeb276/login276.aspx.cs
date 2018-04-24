using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login276 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_0_Click(object sender, EventArgs e)
    {
        string str = "select * from dbo.Member where member_name =" + "'" + username.Text + "'" + "and pwd =" + "'" + password.Text + "'";
        Response.Write(str);

        //string strconn = "Data Source=.;Initial Catalog=shopdata;Integrated Security=True";
        //SqlConnection mycon = new SqlConnection(strconn);
        //mycon.Open();
        //SqlCommand mycom = new SqlCommand(str, mycon);
        //if (mycom.ExecuteReader().HasRows)
        //{
        //    Response.Write("login success");
        //}
        //else
        //{
        //    Response.Write("login fail");
        //}
    }
}