using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHobilerimGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x = Convert.ToInt16(Request.QueryString["ID"]);
        txtId.Enabled = false;
        txtId.Text = x.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBL_HOBILERTableAdapter dt = new DataSetTableAdapters.TBL_HOBILERTableAdapter();
            txtHobi.Text = dt.HobilerSartliListele(Convert.ToInt16(x))[0].HOBI;
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_HOBILERTableAdapter dt = new DataSetTableAdapters.TBL_HOBILERTableAdapter();
        dt.HobilerGuncelle(txtHobi.Text, Convert.ToInt16(txtId.Text));
        Response.Redirect("AdminHobilerim.Aspx");
    }
}