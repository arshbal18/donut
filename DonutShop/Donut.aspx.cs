using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DonutShop
{
    public partial class Donut1 : System.Web.UI.Page
    {
        //this is for Donut class  and to load page and button functionalities
        DonutsShopEntities2 dataobj = new DonutsShopEntities2();
        Donutclass objclass = new Donutclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            //this will load page with the value in a grid view
            GridView1.DataSource = dataobj .mains.ToList();
            GridView1.DataBind();
            GridView2.DataSource = dataobj.Donuts.ToList();
            GridView2.DataBind();
        }

        protected void Donutadd_Click(object sender, EventArgs e)
        {
            //this is to add order
            objclass.ADD(donutname.Text, donutorder.Text, ordermobile.Text);
            GridView1.DataSource = dataobj.mains.ToList();
            GridView1.DataBind();
            GridView2.DataSource = dataobj.Donuts.ToList();
            GridView2.DataBind();
        }

        protected void DonutUpdate_Click(object sender, EventArgs e)
        {
            //update order
            objclass.Update(Convert.ToInt32(Donutid.Text), donutname.Text, donutorder.Text, ordermobile.Text);
            GridView1.DataSource = dataobj.mains.ToList();
            GridView1.DataBind();
            GridView2.DataSource = dataobj.Donuts.ToList();
            GridView2.DataBind();
        }

        protected void DonutComplete_Click(object sender, EventArgs e)
        {
            //complete order
            objclass.Delete(Convert.ToInt32(Donutid.Text));
            GridView1.DataSource = dataobj.mains.ToList();
            GridView1.DataBind();
            GridView2.DataSource = dataobj.Donuts.ToList();
            GridView2.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            donutorder.Text = GridView2.SelectedRow.Cells[2].Text;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //the values are selected from the grid view which can be used to update
            
            Donutid.Text = GridView1.SelectedRow.Cells[1].Text;
            donutname.Text = GridView1.SelectedRow.Cells[2].Text;
            donutorder.Text = GridView1.SelectedRow.Cells[3].Text;
            ordermobile.Text = GridView1.SelectedRow.Cells[4].Text;

        }
    }
}