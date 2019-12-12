using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHobilerim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_HOBILERTableAdapter dt = new DataSetTableAdapters.TBL_HOBILERTableAdapter();
        Repeater1.DataSource = dt.HobilerListele();
        Repeater1.DataBind();
    }
}