using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using test2.DAL;

namespace test2
{
    public partial class upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Label3.Text = Session["UserName"].ToString();
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
                if (this.PicUpload.PostedFile.FileName == "" || this.FileUpload.PostedFile.FileName == "")
                {
                    Response.Write("上传文件不能为空！");
                    return;
                }
                else if (TxtBookName.Text == "")
                {
                    Response.Write("请输入书名！");
                    return;
                }
                else if (TxtIntroduction.Text == "")
                {
                    Response.Write("请输入简介！");
                    return;
                }
                else if (TxtAuthor.Text == "")
                {
                    Response.Write("请输入作者名：");
                }
                try
                {
                    String Path = Server.MapPath("Resource/");//设置服务器端路径
                    String PicPath = this.PicUpload.PostedFile.FileName;//获取客户端实际路径
                    String BookPath = this.FileUpload.PostedFile.FileName;
                    String PicName = PicPath.Substring(PicPath.LastIndexOf("\\") + 1);//获取文件名称
                    String BookName = BookPath.Substring(BookPath.LastIndexOf("\\") + 1);
                    String serverPicPath = Path + PicName;//上传的文件保存到服务器端的路径
                    String serverBookPath = Path + BookName;
                    String localPicPath = "Resource/" + PicName;
                    String localBookPath = "Resource/" + BookName;
                    System.Text.StringBuilder buider1 = new System.Text.StringBuilder();//上传的文件信息:可变字符串
                    buider1.Append("上传图片的类型:" + this.PicUpload.PostedFile.ContentType.ToString() + "");
                    buider1.Append("客户端图片地址：" + this.PicUpload.PostedFile.FileName + ""); buider1.Append("上传图片名称：" + PicName);
                    buider1.Append("上传图片的扩展名：" + PicPath.Substring(PicName.LastIndexOf(".") + 1));
                    buider1.Append("上传图片的大小：" + this.PicUpload.PostedFile.ContentLength / 1024 + "k" + "");
                    if (System.IO.File.Exists(serverPicPath)) { Response.Write("该图片在服务器上已经存在，请不要重复上传！"); return; }
                    String str = PicName.Substring(PicName.LastIndexOf(".") + 1);//获取文件后缀名
                    if (str != "jpg") { Response.Write("对不起，只能上传jpg格式图片"); return; }
                    System.Text.StringBuilder buider2 = new System.Text.StringBuilder();
                    buider2.Append("上传文件的类型:" + this.FileUpload.PostedFile.ContentType.ToString() + "");
                    buider2.Append("客户端文件地址：" + this.FileUpload.PostedFile.FileName + ""); buider2.Append("上传文件名称：" + BookName);
                    buider2.Append("上传文件的扩展名：" + BookPath.Substring(BookName.LastIndexOf(".") + 1));
                    buider2.Append("上传文件的大小：" + this.FileUpload.PostedFile.ContentLength / 1024 + "k" + "");
                    if (System.IO.File.Exists(serverBookPath)) { Response.Write("该文件在服务器上已经存在，请不要重复上传！"); return; }
                    String str1 = BookName.Substring(BookName.LastIndexOf(".") + 1);//获取文件后缀名
                    if (str1 != "txt") { Response.Write("对不起，只能上传txt格式文本"); return; }
                    UserstableViesr us = new UserstableViesr();
                    if (us.UploadResource(Label3.Text, TxtBookName.Text, TxtAuthor.Text, TxtIntroduction.Text, DateTime.Now.ToString("yyyy-MM-dd"), localPicPath, localBookPath, BookType.Text))
                    {
                        this.PicUpload.PostedFile.SaveAs(serverPicPath);//上传保存文件
                        this.FileUpload.PostedFile.SaveAs(serverBookPath);//上传保存文件
                    }
                    else
                    {
                        Response.Write("<script>alert('上传失败！')</script>");
                    }


                }
                finally
                {
                    ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('上传成功！');</script>");
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