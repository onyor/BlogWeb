using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminProjelerimEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_PROJELERTableAdapter dt = new DataSetTableAdapters.TBL_PROJELERTableAdapter();
        dt.ProjelerEkle(TextBox1.Text, TextBox2.Text);
        Response.Redirect("AdminProjelerim.Aspx");
    }
}