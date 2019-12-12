using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminYeteneklerimEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_YETENEKLERTableAdapter dt = new DataSetTableAdapters.TBL_YETENEKLERTableAdapter();
        dt.YeneteklerEkle(TextBox1.Text);
        Response.Redirect("AdminYeteneklerim.Aspx");
    }
}