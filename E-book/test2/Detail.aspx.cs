using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using test2.DAL;
using System.IO;
using System.Text;

namespace test2
{
    public partial class Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label3.Text = Session["UserName"].ToString();
                String bookname = Request["BookName"];
                UserstableViesr uv = new UserstableViesr();
                DataSet ds = uv.GetBookInfo(bookname);
                TxtBookName.Text = ds.Tables[0].Rows[0][0].ToString();
                TxtAuthor.Text = ds.Tables[0].Rows[0][1].ToString();
                TxtIntroduction.Text = ds.Tables[0].Rows[0][2].ToString();
                TxtDate.Text = ds.Tables[0].Rows[0][3].ToString();
                ImgBook.ImageUrl = "/" + ds.Tables[0].Rows[0][4].ToString();
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label3.Text == "未登录")
            {
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('没有登录，无法下载，请返回首页登录！');</script>");
            }
            else
            {
                UserstableViesr us = new UserstableViesr();
                string filePath = Server.MapPath(us.GetBookPath(TxtBookName.Text));//这里注意了,你得指明要下载文件的路径. 
                if (System.IO.File.Exists(filePath))
                {
                    FileInfo file = new FileInfo(filePath);
                    Response.ContentEncoding = System.Text.Encoding.GetEncoding("UTF-8"); //解决中文乱码    
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + Server.UrlEncode(file.Name)); //解决中文文件名乱码    
                    Response.AddHeader("Content-length", file.Length.ToString());
                    Response.ContentType = "appliction/octet-stream";
                    Response.WriteFile(file.FullName);
                    Response.End();
                }
            }
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            UserstableViesr us = new UserstableViesr();
            us.GetBookPath(TxtBookName.Text);
            StreamReader fileStream = new StreamReader(Server.MapPath("/" + us.GetBookPath(TxtBookName.Text)),Encoding.GetEncoding("GB2312"));
            string result = null;
            for (int i = 0; i < 20; i++)
            {
               result += fileStream.ReadLine();
               result += "\r\n";
            }
            TextArea1.Value = result;
            fileStream.Close();
        }
    }
}