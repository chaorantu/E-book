<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="test2.Detail" %>

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
        .auto-style1 {
            width: 230px;
        }
        .auto-style3 {
            width: 230px;
            height: 49px;
        }
        .auto-style6 {
            height: 65px;
            width: 341px;
        }
        .auto-style7 {
            height: 49px;
            width: 341px;
        }
        .auto-style8 {
            height: 126px;
            width: 341px;
        }
        .auto-style11 {
            width: 256px;
        }
        #TextArea1 {
            width: 514px;
            height: 164px;
            margin-top: 0px;
        }
        .auto-style12 {
            width: 104px;
        }
        .auto-style13 {
            width: 341px;
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

                  
  <div style="width:1093px">
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
      <div style="float:left; width: 698px; height: 562px;">
         
          <table style="border-style: double; width: 93%; height: 242px; margin-left: 38px;">
              <tr>
                  <td class="auto-style1" rowspan="3" style="border-style: solid">
                      <asp:Image ID="ImgBook" runat="server" Height="284px" Width="239px" />
                  </td>
                  <td style="border-style: dotted; text-align:center" class="auto-style6">
                      <asp:Label ID="TxtBookName" runat="server" Text="Label"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td style="text-align:center; border-top-style: dotted; border-right-style: dotted; border-bottom-style: inherit; border-left-style: dotted;" class="auto-style13">
                      <asp:Label ID="Label5" runat="server" Text="简介"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td style="border-style: double dotted dotted dotted; text-align:center"  class="auto-style8">
                      <br />
                      <asp:Label ID="TxtIntroduction" runat="server" Text="Label"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3" style="border-style: dotted" rowspan="2">
                      作者：<asp:Label ID="TxtAuthor" runat="server" Text="Label"></asp:Label>
                      <br />
                      发布日期：<asp:Label ID="TxtDate" runat="server" Text="Label"></asp:Label>
                  </td>
                  <td style="border-style: dashed; text-align:center"  class="auto-style7" rowspan="2">
                      <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="下载" Width="115px" />
                  </td>
              </tr>
              </table>
          &nbsp;&nbsp;&nbsp;<br />
          <table style="width: 92%; height: 160px; margin-left: 44px;">
              <tr>
                  <td class="auto-style12">&nbsp;&nbsp;
          <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="在线预览" />
                  </td>
                  <td class="auto-style11">
                      <textarea  runat="server" id="TextArea1"  name="S1" aria-multiline="True" readonly="readonly"></textarea></td>
              </tr>
          </table>
          <br />
          <br />
          <br />
          &nbsp;
                   
      </div>
            <div>
      
            <!--首页-最新书讯-->
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label1" runat="server" Text="新闻专区"></asp:Label>
<!-- Componet Begin ResourceId="291" -->
                        <ol>
			<div style="border-style: dotted; width:390px; height:25px; margin:0; overflow:hidden;">
              <font style="color:#4280a8; float:right; margin-left:10px; height: 16px; width: 98px;">2015-05-30</font>
			  			  <a href='News.aspx?id=1&state=1&date=2015-05-30&title=《中国建筑艺术12讲》正式出版' title='[图]《中国建筑艺术12讲》正式出版' target=_blank>
			                [图]《中国建筑艺术12讲》正式出版</a></div>
            </ol>
                        <ol>
			<div style="border-style: dotted; width:390px; height:25px; margin:0; overflow:hidden;">
            <font style="color:#4280a8; float:right; margin-left:10px; height: 16px; width: 98px;">2015-05-29</font>
			  			  <a href='News.aspx?id=2&state=0&date=2015-05-29&title=总局两新规2015年4月1日起施行' title='总局两新规2015年4月1日起施行' target=_blank>
			                总局两新规2015年4月1日起施行</a></div>
            </ol>
                        <ol>
			<div style="border-style: dotted; width:390px; height:25px; margin:0; overflow:hidden;">
              <font style="color:#4280a8; float:right; margin-left:10px; height: 16px; width: 98px;">2015-05-29</font>
			  			  <a href='News.aspx?id=3&state=1&date=2015-05-29&title=经典著作《史记》正式出版' title='[图]经典著作《史记》正式出版' target=_blank>
			                [图]经典著作《史记》正式出版</a></div>
            </ol>
                        <ol>
			<div style="border-style: dotted; width:390px; height:25px; margin:0; overflow:hidden;">
              <font style="color:#4280a8; float:right; margin-left:10px;">2015-05-29</font>
			  			  <a href='News.aspx?id=4&state=1&date=2015-05-29&title=《三国演义》正式出版' title='[图]《三国演义》正式出版' target=_blank>
			                [图]《三国演义》正式出版</a></div>
            </ol>
                        <ol>
			<div style="border-style: dotted; width:390px; height:25px; margin:0; overflow:hidden;">
              <font style="color:#4280a8; float:right; margin-left:10px;">2015-05-28</font>
			  			   <a href='News.aspx?id=5&state=0&date=2015-05-28&title=反盗版举报电话' title='反盗版举报电话' target=_blank>
			                反盗版举报电话</a></div>
            </ol>
                        <ol>
			<div style="border-style: dotted; width:390px; height:25px; margin:0; overflow:hidden;">
              <font style="color:#4280a8; float:right; margin-left:10px;">2015-05-28</font>
			  			 <a href='News.aspx?id=6&state=1&date=2015-05-28&title=日本科幻小说《人类灭绝》正式出版' title='[图]日本科幻小说《人类灭绝》正式出版' target=_blank>
			                [图]日本科幻小说《人类灭绝》正式出版</a></div>
            </ol>
                        <ol>
			<div style="border-style: dotted; width:390px; height:25px; margin:0; overflow:hidden;">
              <font style="color:#4280a8; float:right; margin-left:10px;">2015-05-28</font>
			  			  <a href='News.aspx?id=7&state=0&date=2015-05-28&title=热烈庆祝本出版社正式成立' title='热烈庆祝本出版社正式成立' target=_blank>
			                热烈庆祝本出版社正式成立</a></div>
            </ol>
         
            
                        <!-- Componet End -->


     
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
