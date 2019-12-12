using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminProjelerim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_PROJELERTableAdapter dt = new DataSetTableAdapters.TBL_PROJELERTableAdapter();
        Repeater1.DataSource = dt.ProjelerListele();
        Repeater1.DataBind();
    }
}