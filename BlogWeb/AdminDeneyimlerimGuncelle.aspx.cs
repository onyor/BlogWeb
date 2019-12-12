using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminDeneyimlerimGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x = Convert.ToInt16(Request.QueryString["ID"]);
        TextBox1.Enabled = false;
        TextBox1.Text = x.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBL_DENEYIMTableAdapter dt = new DataSetTableAdapters.TBL_DENEYIMTableAdapter();
            TextBox2.Text = dt.DeneyimSartliListele(Convert.ToInt16(x))[0].BASLIK;
            TextBox3.Text = dt.DeneyimSartliListele(Convert.ToInt16(x))[0].ALTBASLIK;
            TextBox4.Text = dt.DeneyimSartliListele(Convert.ToInt16(x))[0].ACIKLAMA;
            TextBox5.Text = dt.DeneyimSartliListele(Convert.ToInt16(x))[0].TARIH_BAS;
            TextBox6.Text = dt.DeneyimSartliListele(Convert.ToInt16(x))[0].TARIH_SON;
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DENEYIMTableAdapter dt = new DataSetTableAdapters.TBL_DENEYIMTableAdapter();
        dt.DeneyimGuncelle(TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, Convert.ToInt16(TextBox1.Text));
        Response.Redirect("Default.Aspx");
    }
}