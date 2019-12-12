using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminEgitimlerGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x = Convert.ToInt16(Request.QueryString["ID"]);
        TextBox1.Enabled = false;
        TextBox1.Text = x.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBL_EGITIMTableAdapter dt = new DataSetTableAdapters.TBL_EGITIMTableAdapter();
            TextBox2.Text = dt.EgitimSartliListele(Convert.ToInt16(x))[0].BASLIK;
            TextBox3.Text = dt.EgitimSartliListele(Convert.ToInt16(x))[0].ALTBASLIK;
            TextBox4.Text = dt.EgitimSartliListele(Convert.ToInt16(x))[0].ACIKLAMA;
            TextBox5.Text = dt.EgitimSartliListele(Convert.ToInt16(x))[0].GNOT;
            TextBox6.Text = dt.EgitimSartliListele(Convert.ToInt16(x))[0].TARIH;
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_EGITIMTableAdapter dt = new DataSetTableAdapters.TBL_EGITIMTableAdapter();
        dt.EgitimGuncelle(TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, Convert.ToInt16(TextBox1.Text));
        Response.Redirect("Default.Aspx");
    }
}