using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminYeteneklerimGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x = Convert.ToInt16(Request.QueryString["ID"]);
        TextBox1.Enabled = false;
        TextBox1.Text = x.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBL_YETENEKLERTableAdapter dt = new DataSetTableAdapters.TBL_YETENEKLERTableAdapter();
            TextBox2.Text = dt.YetenekSartliListele(Convert.ToInt16(x))[0].YETENEK;
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_YETENEKLERTableAdapter dt = new DataSetTableAdapters.TBL_YETENEKLERTableAdapter();
        dt.YetenekGuncelle(TextBox2.Text, Convert.ToInt16(TextBox1.Text));
        Response.Redirect("AdminYeteneklerim.Aspx");
    }
}