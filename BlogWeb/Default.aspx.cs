using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_HAKKIMDATableAdapter dt = new DataSetTableAdapters.TBL_HAKKIMDATableAdapter(); 
        // DataSet imin üzerinde oluşturmuş olduğum adapter sınıfından bir tane nesne ürettim dt.
        Repeater1.DataSource = dt.HakkimdaListele();
        //Bu nesne aracılığı ile o tableAdapter da bulunan methodu ma ulaştım. HakkımdaListele--> Select * From methoduna tutan methodumuz.
        Repeater1.DataBind(); //İşlemi gerçekleştir.


        DataSetTableAdapters.TBL_DENEYIMTableAdapter dt2 = new DataSetTableAdapters.TBL_DENEYIMTableAdapter();
        Repeater2.DataSource = dt2.DeneyimListele();
        Repeater2.DataBind();

        DataSetTableAdapters.TBL_EGITIMTableAdapter dt3 = new DataSetTableAdapters.TBL_EGITIMTableAdapter();
        Repeater3.DataSource = dt3.EgitimListele();
        Repeater3.DataBind();

        DataSetTableAdapters.TBL_YETENEKLERTableAdapter dt4 = new DataSetTableAdapters.TBL_YETENEKLERTableAdapter();
        Repeater4.DataSource = dt4.YeteneklerListele();
        Repeater4.DataBind();

        DataSetTableAdapters.TBL_HOBILERTableAdapter dt5 = new DataSetTableAdapters.TBL_HOBILERTableAdapter();
        Repeater5.DataSource = dt5.HobilerListele();
        Repeater5.DataBind();

        DataSetTableAdapters.TBL_PROJELERTableAdapter dt6 = new DataSetTableAdapters.TBL_PROJELERTableAdapter();
        Repeater6.DataSource = dt6.ProjelerListele();
        Repeater6.DataBind();

        DataSetTableAdapters.TBL_HAKKIMDATableAdapter dt7 = new DataSetTableAdapters.TBL_HAKKIMDATableAdapter();
        Repeater7.DataSource = dt7.HakkimdaListele();
        Repeater7.DataBind();
    }
}