using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class datalist276 : System.Web.UI.Page
{
    public static PagedDataSource ps = new PagedDataSource();

    protected void Page_Load(object sender, EventArgs e)
    {   
        if (!IsPostBack) {
            databind(0); 
        }

    }

    private void databind( int currentIndex)
    {
        string strconn = System.Configuration.ConfigurationManager.ConnectionStrings["shopdataConnectionString"].ToString();
        SqlConnection conn = new SqlConnection(strconn);

        string cmdstr = "select * from Product";
        try
        {
            SqlDataAdapter ada = new SqlDataAdapter(cmdstr, conn);
            DataSet ds = new DataSet();
            
            ada.Fill(ds, "shopdataConnectionString");
            ps.DataSource = ds.Tables["shopdataConnectionString"].DefaultView;
            ps.AllowPaging = true;
            ps.PageSize = 8;
            ps.CurrentPageIndex = currentIndex;


            DataList1.DataSource = ps;
            DataList1.DataKeyField = "ProductID";
            DataList1.DataBind();
        }
        catch
        {
            Response.Write("no page");
        }
    }



    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        Response.Write("databound");
        if (e.Item.ItemType == ListItemType.Footer)
        {
            Response.Write("databinding");
            Label pageCount = e.Item.FindControl("pageCount") as Label;
            Label currentIndex =  e.Item.FindControl("currentIndex") as Label;
            LinkButton ind = e.Item.FindControl("LinkButton1") as LinkButton;
            LinkButton pre = e.Item.FindControl("LinkButton2") as LinkButton;
            LinkButton nex = e.Item.FindControl("LinkButton3") as LinkButton;
            LinkButton las = e.Item.FindControl("LinkButton4") as LinkButton;
            //LinkButton go = e.Item.FindControl("LinkButton5") as ;

            pageCount.Text = ps.PageCount.ToString();
            currentIndex.Text = (ps.CurrentPageIndex +1).ToString();

            if (ps.IsFirstPage)
            {
                ind.Enabled = false;
                pre.Enabled = false;
            }
            if (ps.IsLastPage)
            {
                nex.Enabled = false;
                las.Enabled = false;
            }
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "ind":
                ps.CurrentPageIndex =0;
                databind(0);
                Response.Write("ind");
                break;
            case "pre":
                ps.CurrentPageIndex -= 1;
                databind(ps.CurrentPageIndex);
                break;
            case "nex":
                ps.CurrentPageIndex += 1;
                databind(ps.CurrentPageIndex);
                break;
            case "las":
                ps.CurrentPageIndex = ps.PageCount-1;
                databind(ps.CurrentPageIndex);
                break;
            case "go":
                try { 
                String texS = "";
                if(e.Item.ItemType == ListItemType.Footer)
                {
                    TextBox tex = e.Item.FindControl("tex") as TextBox;
                    texS = tex.Text;
                }
                int texN = 0;
                texN = Convert.ToInt32(texS)-1;
                databind(texN);
                
                }
                catch
                {
                    Response.Write("nopage");
                }
                break;
        }
    }
}