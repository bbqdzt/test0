using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class register276 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_0(object sender, EventArgs e)
    {
        Label_0.Text = admin.Text + sex.Text + password.Text + email.Text + idNum.Text+job.SelectedValue;

        String str0 = "insert into dbo.Member(member_name,pwd,title,sex,email,IDnumber)values('" + admin.Text + "','" + password.Text + "','" + job.SelectedValue + "','" + sex.SelectedValue + "','" + email.Text + "','" + idNum.Text + "')";

        // Response.Write(str0);
        string strconn = "Data Source=.;Initial Catalog=shopdata;Integrated Security=True";
        SqlConnection mycon = new SqlConnection(strconn);
        mycon.Open();
        SqlCommand mycom = new SqlCommand(str0, mycon);
        int returnValue = mycom.ExecuteNonQuery();
        if (returnValue == 1)
        {
            Response.Write("insert success");
        }
        else
        {
            Response.Write("insert fail");
        }
    }
}