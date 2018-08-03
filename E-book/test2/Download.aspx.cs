using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using test2.DAL;
using System.Data;
using System.IO;
using System.Web.UI.HtmlControls;

namespace test2
{
    public partial class Download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
                Label3.Text = Session["UserName"].ToString();
                String state = Request["state"];
                UserstableViesr us = new UserstableViesr();
                int num = us.GetNum();
                DataSet ds = us.GetInfo();
                if (state.Equals("0"))
                {
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('没有找到任何记录，显示全部的下载资源！');</script>");
                }
                else if (state.Equals("1"))
                {
                    String bookname = Request["name"];
                    num = us.GetNumByName(bookname);
                    ds = us.GetInfoByName(bookname);
                }
                else if (state.Equals("2"))
                {
                    String author = Request["author"];
                    num = us.GetNumByAuthor(author);
                    ds = us.GetInfoByAuthor(author);
                }
                else if (state.Equals("3"))
                {
                    String type = Request["booktype"];
                    num = us.GetNumByType(type);
                    ds = us.GetInfoByType(type);
                }

                int row = num / 3 + 1;

                for (int i = 0; i < row; i++)
                {
                    TableRow tr = new TableRow();
                    tr.VerticalAlign = VerticalAlign.Middle;
                    for (int j = 0; j < 3; j++)
                    {
                        if ((i * 3 + j) == num)
                        {
                            break;
                        }
                        else
                        {
                            TableCell td = new TableCell();
                            td.VerticalAlign = VerticalAlign.Middle;
                            td.Width = 200;
                            td.Height = 200;
                            Image ig = new Image();
                            ig.ImageUrl = "/" + ds.Tables[0].Rows[i * 3 + j][1].ToString();
                            ig.Width = 200;
                            ig.Height = 250;
                            LinkButton lb = new LinkButton();
                            Button xq = new Button();
                            xq.Text = "下载";
                            lb.Text = ds.Tables[0].Rows[i * 3 + j][0].ToString();
                            lb.Width = 200;
                            xq.Click += new EventHandler(lbx_Click);
                            xq.ID = lb.Text;
                            lb.PostBackUrl = "Detail.aspx?BookName=" + lb.Text + "";
                            td.Controls.Add(ig);
                            td.Controls.Add(lb);
                            td.Controls.Add(xq);
                            tr.Cells.Add(td);
                        }
                    }
                    Table1.Rows.Add(tr);
                }
       

        }

        protected void lbx_Click(object sender, EventArgs e)
        {
          
      if (Label3.Text == "未登录")
            {
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('没有登录，无法下载，请返回首页登录！');</script>");
            }
            else
            {
                UserstableViesr us = new UserstableViesr();
                string filePath = Server.MapPath(us.GetBookPath((sender as Button).ID.ToString()));//这里注意了,你得指明要下载文件的路径. 
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
    }
}