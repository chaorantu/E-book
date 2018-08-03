using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using test2.DAL;
namespace test2
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string title = Request["title"];
            string news = Request["id"];
            string state = Request["state"];
            string date = Request["date"];
            if (state == "0")
            {
                tr0.Cells.Remove(td0);
                Image1.Visible = false;
            }
          
            StreamReader fileStream = new StreamReader(Server.MapPath("/News/"+news+".txt"), Encoding.GetEncoding("GB2312"));
            string result = null;
            for (int i = 0; i < 20; i++)
            {
                result += fileStream.ReadLine();
                result += "\r\n";
            }
            TextArea1.Value = result;
            Label4.Text = title;
            Label5.Text = date;
            fileStream.Close();
            Image1.ImageUrl = "/News/"+news+".jpg";
         
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            UserstableViesr us = new UserstableViesr();
            if (DropDownList1.SelectedIndex == 0)
            {

                if (us.GetNumByName(TextBox1.Value) == 0)
                {

                    Response.Redirect("Download.aspx?state=0");
                }
                else
                {
                    Response.Redirect("Download.aspx?state=1&name=" + TextBox1.Value + "");
                }
            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                if (us.GetNumByAuthor(TextBox1.Value) == 0)
                {

                    Response.Redirect("Download.aspx?state=0");
                }
                else
                {
                    Response.Redirect("Download.aspx?state=2&author=" + TextBox1.Value + "");
                }
            }


        }
    }

}