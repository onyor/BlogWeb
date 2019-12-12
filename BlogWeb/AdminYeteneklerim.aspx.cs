using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminYeteneklerim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_YETENEKLERTableAdapter dt = new DataSetTableAdapters.TBL_YETENEKLERTableAdapter();
        Repeater1.DataSource = dt.YeteneklerListele();
        Repeater1.DataBind();
    }
}