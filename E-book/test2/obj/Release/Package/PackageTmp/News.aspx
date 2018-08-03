<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="test2.News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>上传书籍</title>
     <link href="Css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .header {
            height: 192px;
            width:auto;
        }
        #TextArea1 {
            width: 842px;
            height: 348px;
            margin-top: 0px;
        }
        .auto-style2 {
            height: 378px;
        }
        .auto-style3 {
            overflow: auto;
            }
        .auto-style4 {
            height: 378px;
            width: 854px;
        }
        </style>
</head>
<body style="position:static; height: 845px; width: 1096px; margin-left: 86px; margin-right: 31px;">
    <form id="form1" runat="server">
    <div class="globle">
    <script>
        //设为首页
        function SetHome(url) {
            if (document.all) {
                document.body.style.behavior = 'url(#default#homepage)';
                document.body.setHomePage(url);
            } else {
                alert("您好,您的浏览器不支持自动设置页面为首页功能,请您手动在浏览器里设置该页面为首页!");
            }
        }
</script>
          <div class="header" style="background-image:url('NewFolder1/52b3b6737966a.jpg')">
            <div class="right">
                <ul style=" float:right; margin:0;">
                    <li style="float:left;display:inline;";><a href="main.aspx" >您好，欢迎来到气象出版社</a></li>
                    <!--<li><a onclick="this.style.behavior='url(#default#homepage)';

                    this.setHomePage('http://10.45.138.143/index.jsp');" href="#">设为首页</a></li>-->

                    <li style="float:left;display:inline; width: 124px;";>&nbsp;&nbsp;&nbsp; <a onclick="SetHome('http://www.qxcbs.com')" href="javascript:void(0)">设为首页</a></li>
                    </ul>
                <li style="float:left;display:inline;";><a href="main.aspx" >返回首页</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label  ID="Label3" runat="server" Text="未登录" ForeColor="Ivory" BorderStyle="None" BorderWidth="500px" ></asp:Label>
                </div>
                </div>
        </div>
          
    <div id="Div1" runat="server" style="background:#45A06F">
         <asp:DropDownList ID="DropDownList1" runat="server" Width="107px">
            <asp:ListItem>书名</asp:ListItem>
            <asp:ListItem>作者</asp:ListItem>
        </asp:DropDownList>
        <input id="TextBox1" runat="server" value="请输入关键字!" onfocus="this.value=''"  onBlur="if (value ==''){value='请输入关键字'}" type="text" />
        <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click1" />
    </div>

                  
  <div style="width:1093px; height: 42px;">
    <div class="sousuo1" style="background-color:#44BBA3">
<ul style="float:left;">
<li style="float:left;list-style:none;">最新公告：</li>
<li style="float:left;list-style:none"><marquee direction=left onMouseOut=start() onMouseOver=stop() scrollamount=2  style="width:726px">
<!--首页-最新公告-->            

<!-- Componet Begin ResourceId="466" -->
<span><a  href='News.aspx?id=8&state=0&date=2015-06-01&title=关于新版网站无法在线购买的问题'>1、关于新版网站无法在线购买的问题</a></span> 
<span><a  href='News.aspx?id=9&state=0&date=2015-06-01&title=关于注册的相关问题'>2、关于注册的相关问题</a></span> 
<span><a  href='News.aspx?id=7&state=0&date=2015-06-01&title=新版网站试运行通知'>3、新版网站试运行通知</a></span>
<!-- Componet End --></marquee></li>

   
</ul>
</div>
      </div>
        <div>
      <div style="border-style: none; float:left; width: 1080px; height: 537px; margin-top: 12px;">
         
          &nbsp;<table   style="width: 99%; height: 508px; margin-top: 0px;">
              <tr>
                  <td   style="text-align:center; vertical-align:middle; " class="auto-style3" >
                      <asp:Label ID="Label4" runat="server" Text="Label" style="color:blue" Font-Size="Large"></asp:Label>
                  </td>
                  <td id="td0" runat ="server" style="text-align:center; vertical-align:middle; " class="auto-style3" rowspan="3" >
                      &nbsp;
                      <asp:Image ID="Image1" runat="server" Height="205px" Width="164px" />
                  </td>
              </tr>
              <tr>
                  <td   style="text-align:center; vertical-align:middle; " class="auto-style3" >
                      <asp:Label ID="Label5" style="font-size:12px;" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                  </td>
              </tr>
              <tr id="tr0" runat="server">
                  <td class="auto-style4"  style="align-items:stretch">
                      <textarea   runat="server" id="TextArea1" name="S1" aria-hidden="True"  style="font-size:15px;margin-left:30px;overflow: hidden" readonly="readonly"></textarea></td>
              </tr>
          </table>
                   
      </div>
        <div class="foot" >
                <div>
                    <br />
                    <br />
    <br />
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style6">&nbsp;<asp:HyperLink ID="HyperLink1" NavigateUrl="News.aspx?id=7&state=0&date=2015-05-28&title=关于我们" runat="server" Width="65px">关于我们</asp:HyperLink>
                            </td>
                            <td class="auto-style6">
                                <asp:HyperLink ID="HyperLink2" NavigateUrl="News.aspx?id=10&state=0&date=2015-05-28&title=联系我们" runat="server">联系我们</asp:HyperLink>
                            </td>
                            <td class="auto-style6">
                                <asp:HyperLink ID="HyperLink3" NavigateUrl="News.aspx?id=11&state=0&date=2015-05-28&title=版权说明" runat="server">版权说明</asp:HyperLink>
                            </td>
                            <td class="auto-style6">
                                <asp:HyperLink ID="HyperLink4" NavigateUrl="News.aspx?id=8&state=0&date=2015-05-28&title=帮助和购物指南" runat="server">帮助和购物指南</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
    <br />
    <br />
    <br />
 
</div>
</div>
    </form>
</body>
</html>
