using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHobilerimEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_HOBILERTableAdapter dt = new DataSetTableAdapters.TBL_HOBILERTableAdapter();
        dt.HobilerEkle(txtHobi.Text);
        Response.Redirect("AdminHobilerim.Aspx");
    }
}