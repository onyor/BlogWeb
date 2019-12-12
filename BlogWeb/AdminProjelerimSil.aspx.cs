using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminProjelerimSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt16(Request.QueryString["ID"]);
        DataSetTableAdapters.TBL_PROJELERTableAdapter dt = new DataSetTableAdapters.TBL_PROJELERTableAdapter();
        dt.ProjelerSil(Convert.ToInt16(id));
        Response.Redirect("AdminProjelerim.Aspx");
    }
}