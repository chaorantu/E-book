using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using test2.DAL;
using System.Data;
using System.Web.UI.HtmlControls;

namespace test2
{
    public partial class main : System.Web.UI.Page
    {
        private static int state = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                register.Style.Add("display", "none");
                Session["UserName"] = Label3.Text;
                UserstableViesr us = new UserstableViesr();
                DataSet ds = us.GetInfoByDate();
                for (int i = 0; i < 6; i++)
                {
                    HtmlImage img = new HtmlImage();
                    img = (HtmlImage)FindControl("img" + i.ToString());
                    HtmlAnchor a = (HtmlAnchor)FindControl("a" + i.ToString());
                    HyperLink hl = (HyperLink)FindControl("HL" + i.ToString());
                    
                    a.Title = ds.Tables[0].Rows[i][0].ToString();
                    a.Target = "black";
                    a.HRef = "Detail.aspx?BookName=" + a.Title + "";
                    hl.Text = ds.Tables[0].Rows[i][0].ToString();
                    hl.NavigateUrl = "Detail.aspx?BookName=" + a.Title + "";
                    img.Src = "/" + ds.Tables[0].Rows[i][1].ToString();
                    img.Alt = a.Title;
                }
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            //用户实体类实例化
            UserstableViesr uv = new UserstableViesr();
            //用户DAL里面的登陆用户GetUser方法
            if (uv.GetUser(this.UserName.Text, this.UPws.Text))
            {
               Session["UserName"] = this.UserName.Text;
               ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('登陆成功！');</script>");
               land.Style.Add("display", "none");
               Label3.Text = Session["UserName"].ToString();
               
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('登陆失败！');</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            land.Style.Add("display", "none");
            register.Style.Add("display", "block");
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            state = 1;
            UserstableViesr uv = new UserstableViesr();
            if (uv.InsetUserInfo(RegisterName.Text, RegisterPws.Text))
            {
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('注册成功！');</script>");
               land.Style.Add("display", "block");
                state = 0;
                
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "message", "<script>alert('注册失败！');</script>");
            }
        }
        protected void refresh()
      {
         
                 if (state == 0)
          {
               register.Style.Add("display", "none");
              
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