<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="test2.upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>上传书籍</title>
     <link href="Css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .header {
            height: 192px;
            width:auto;
        }
        .auto-style3 {
            height: 40px;
        }
        .auto-style6 {
            height: 40px;
        }
        .auto-style10 {
            height: 20px;
            width: 236px;
        }
        .auto-style11 {
            height: 20px;
        }
        .auto-style12 {
            height: 24px;
        }
        .auto-style13 {
            height: 58px;
            width: 236px;
        }
        .auto-style14 {
            height: 58px;
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
      <div style="float:left; width: 647px; height: 558px;">

          <table style="width: 98%; height: 302px;">
              <tr >
                  <td style="text-align:center"  colspan="2" class="auto-style12">图书上传</td>
              </tr>
              <tr>
                  <td class="auto-style10">书名</td>
                  <td class="auto-style11">
                      <asp:TextBox ID="TxtBookName" runat="server" Width="286px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style13">简介</td>
                  <td class="auto-style14">
                      <asp:TextBox ID="TxtIntroduction" runat="server" Width="467px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style6">作者</td>
                  <td class="auto-style3">
                      <asp:TextBox ID="TxtAuthor" runat="server" Width="172px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style6">封面</td>
                  <td class="auto-style3">
                      <asp:FileUpload ID="PicUpload" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style6">下载资源</td>
                  <td class="auto-style3">
                      <asp:FileUpload ID="FileUpload" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style6">书籍类型</td>
                  <td class="auto-style3">
                      <asp:DropDownList ID="BookType" runat="server">
                          <asp:ListItem>小说</asp:ListItem>
                          <asp:ListItem>文学</asp:ListItem>
                          <asp:ListItem>艺术</asp:ListItem>
                          <asp:ListItem>动漫/幽默</asp:ListItem>
                          <asp:ListItem>旅游</asp:ListItem>
                          <asp:ListItem>地图/地理</asp:ListItem>
                          <asp:ListItem>生活</asp:ListItem>
                          <asp:ListItem>其它</asp:ListItem>
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td  style="text-align:right" class="auto-style6" colspan="2">
                      <asp:Button ID="Button2" runat="server" Height="27px" OnClick="Button2_Click" Text="上传" Width="69px" />
                  </td>
              </tr>
          </table>

      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          <br />

      </div>
      <div>
      
            <!--首页-最新书讯-->
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label5" runat="server" Text="新闻专区"></asp:Label>
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
