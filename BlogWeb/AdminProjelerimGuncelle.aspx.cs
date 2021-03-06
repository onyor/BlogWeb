﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminProjelerimGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int x = Convert.ToInt16(Request.QueryString["ID"]);
        TextBox1.Enabled = false;
        TextBox1.Text = x.ToString();

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.TBL_PROJELERTableAdapter dt = new DataSetTableAdapters.TBL_PROJELERTableAdapter();
            TextBox2.Text = dt.ProjelerSartliListele(Convert.ToInt16(x))[0].PROJELER;
            TextBox3.Text = dt.ProjelerSartliListele(Convert.ToInt16(x))[0].ACIKLAMALAR;
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_PROJELERTableAdapter dt = new DataSetTableAdapters.TBL_PROJELERTableAdapter();
        dt.ProjelerGuncelle(TextBox2.Text, TextBox3.Text, Convert.ToInt16(TextBox1.Text));
        Response.Redirect("AdminProjelerim.Aspx");
    }
}