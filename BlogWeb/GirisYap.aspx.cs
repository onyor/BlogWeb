﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GirisYap : System.Web.UI.Page
{

    SqlConnection baglantı = new SqlConnection(@"Data Source=DESKTOP-S4C5D2M;Initial Catalog=BlogWebDB;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        baglantı.Open();
        SqlCommand komut = new SqlCommand("select * from TBL_ADMIN where KULLANICI=@P1 and SIFRE=@P2",baglantı);
        komut.Parameters.AddWithValue("P1", TextBox1.Text);
        komut.Parameters.AddWithValue("P2", TextBox2.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Response.Redirect("AdminDeneyimlerim.Aspx");
        }
        else
        {
            Response.Write("Hatalı Kullanıcı Adı veya Şifre");
        }
        baglantı.Close();
    }
}