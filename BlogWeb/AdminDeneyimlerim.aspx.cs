using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminDeneyimlerim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DENEYIMTableAdapter dt =new DataSetTableAdapters.TBL_DENEYIMTableAdapter();
        Repeater1.DataSource = dt.DeneyimListele();
        Repeater1.DataBind();
    }
}