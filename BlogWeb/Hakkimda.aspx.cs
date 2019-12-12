﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hakkimda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false) // Sen sayfayı bir kere yükletikten sonra o değerleri hafızada tut.
        {
            DataSetTableAdapters.TBL_HAKKIMDATableAdapter dt = new DataSetTableAdapters.TBL_HAKKIMDATableAdapter();
            TextBox1.Text = dt.HakkimdaListele()[0].AD;  // Hafızaya aldığı ilk alana göre .İlgili alanın değerini getirir. (Sıfır ilk değer)
            TextBox2.Text = dt.HakkimdaListele()[0].SOYAD;
            TextBox3.Text = dt.HakkimdaListele()[0].ADRES;
            TextBox4.Text = dt.HakkimdaListele()[0].MAIL;
            TextBox5.Text = dt.HakkimdaListele()[0].TELEFON;
            TextBox6.Text = dt.HakkimdaListele()[0].KISANOT;
            TextBox7.Text = dt.HakkimdaListele()[0].FOTOGRAF;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_HAKKIMDATableAdapter dt = new DataSetTableAdapters.TBL_HAKKIMDATableAdapter();
        dt.HakkimdaGuncelle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text);
        Response.Redirect("Default.Aspx");
    }
}