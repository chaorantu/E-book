<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="test2.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新起点出版社--图书列表</title>
    <link href="Css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .header {
            height: 192px;
            width:auto;
        }
    </style>


</head>
<body style="position:static; height: 698px; width: 1096px; margin-left: 86px; margin-right: 31px;">
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
                    <li style="float:left;display:inline;";><a href="main.aspx" >您好，欢迎来到新起点出版社</a></li>
                    <!--<li><a onclick="this.style.behavior='url(#default#homepage)';

                    this.setHomePage('http://10.45.138.143/index.jsp');" href="#">设为首页</a></li>-->

                    <li style="float:left;display:inline; width: 124px;";>&nbsp;&nbsp;&nbsp; <a onclick="SetHome('http://www.qxcbs.com')" href="javascript:void(0)">设为首页</a></li>
                    </ul>
                <li style="float:left;display:inline;";><a href="main.aspx" >返回首页</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label  ID="Label3" runat="server" Text="未登录" ForeColor="Ivory" BorderStyle="None" BorderWidth="500px" ></asp:Label>
                </div>
                </div>
        </div>
          
    <div runat="server" style="background:#45A06F">
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
    
      <div class="left" >
          <style>

#player{position:relative;width:640px;height:339px;overflow:hidden; margin:0px auto 0 auto; border:1px solid #ccc;}
#player a{color:#333;}
#player *{border:0;padding:0;margin:0;}
#player .Limg{position:relative;}
#player .Limg li{position:absolute;top:0;left:0;background:#fff;}
#player .Limg li img{border:0px solid #FFFFFF; margin:0; width:640px;height:339px;}
#player .Limg li  p{line-height:25px; font-size:14px; padding-left:15px;}
#player .Nubbt{position:absolute;z-index:9;right:5px;bottom:3px; line-height:21px;}
#player .Nubbt span{border:1px solid #45A06F;background:#fff;padding:1px 5px;margin:0 2px; font-style:normal;cursor:pointer;}
#player .Nubbt span.on{background:#47AA72;color:#fff;}
	          .left {
                  width: 646px;
                  height: 347px;
              }
	          .auto-style1 {
                  width: 236px;
              }
	          .auto-style2 {
                  width: 217px;
              }
              .auto-style3 {
                  width: 206px;
              }
              .auto-style4 {
                  height: 27px;
              }
              .auto-style5 {
                  height: 26px;
              }
              .auto-style6 {
                  height: 20px;
              }
	          .auto-style8 {
                  height: 26px;
                  width: 211px;
              }
              .auto-style9 {
                  height: 27px;
                  width: 211px;
              }
              .auto-style10 {
                  height: 20px;
                  width: 211px;
              }
              .auto-style11 {
                  width: 211px;
              }
	          </style>
			<!-- 首页大图 -->

<!-- Componet Begin ResourceId="432"-->
          <div style="width:1089px; height: 343px;">
          <div id="player" style="float:left;width:646px">
              <ul class="Limg">
		               <li>
							  <a href='/news/newsdetail.jsp?id=103739&nodeid=132&siteid=2' target=_blank>
						<img src='http://www.qxcbs.com:80/data/attachement/piclinks/site2/20150317/1426573684406.jpg' alt='[图]《图个明白 话说气象》正式出版'  />
			</a>
			<p>[图]《图个明白 话说气象》正式出版</p>
			</li>
		               <li>
							  <a href='/news/newsdetail.jsp?id=100894&nodeid=132&siteid=2' target=_blank>
						<img src='http://www.qxcbs.com:80/data/attachement/piclinks/site2/20150317/1426560223501.jpg' alt='[图]关注雾霾 关注天气'  />
			</a>
			<p>[图]关注雾霾 关注天气</p>
			</li>
		               <li>
							  <a href='/news/newsdetail.jsp?id=93951&nodeid=132&siteid=2' target=_blank>
						<img src='http://www.qxcbs.com:80/data/attachement/piclinks/site2/20150210/1423528409909.jpg' alt='我社《时间科普知识必读丛书》被科技部评为全国优秀科普作品'  />
			</a>
			<p>我社《时间科普知识必读丛书》被科技部评为全国优秀科普作品</p>
			</li>
		               <li>
							  <a href='/news/newsdetail.jsp?id=98435&nodeid=132&siteid=2' target=_blank>
						<img src='http://www.qxcbs.com:80/data/attachement/piclinks/site2/20150123/1421992466984.jpg' alt='2015年“3•23”世界气象日气象出版社宣传品征订'  />
			</a>
			<p>2015年“3•23”世界气象日气象出版社宣传品征订</p>
			</li>
		<!-- Componet End -->
	</ul>
<cite class="Nubbt">
<span class="on">1</span><span >2</span><span >3</span><span >4</span></cite>
              <script language=javascript type="text/javascript">
                  //*焦点切换
                  (function () {
                      if (!Function.prototype.bind) {
                          Function.prototype.bind = function (obj) {
                              var owner = this, args = Array.prototype.slice.call(arguments), callobj = Array.prototype.shift.call(args);
                              return function (e) { e = e || top.window.event || window.event; owner.apply(callobj, args.concat([e])); };
                          };
                      }
                  })();
                  var player = function (id) {
                      this.ctn = document.getElementById(id);
                      this.adLis = null;
                      this.btns = null;
                      this.animStep = 0.2;//动画速度0.1～0.9
                      this.switchSpeed = 3;//自动播放间隔(s)
                      this.defOpacity = 1;
                      this.tmpOpacity = 1;
                      this.crtIndex = 0;
                      this.crtLi = null;
                      this.adLength = 0;
                      this.timerAnim = null;
                      this.timerSwitch = null;
                      this.init();
                  };
                  player.prototype = {
                      fnAnim: function (toIndex) {
                          if (this.timerAnim) { window.clearTimeout(this.timerAnim); }
                          if (this.tmpOpacity <= 0) {
                              this.crtLi.style.opacity = this.tmpOpacity = this.defOpacity;
                              this.crtLi.style.filter = 'Alpha(Opacity=' + this.defOpacity * 100 + ')';
                              this.crtLi.style.zIndex = 0;
                              this.crtIndex = toIndex;
                              return;
                          }
                          this.crtLi.style.opacity = this.tmpOpacity = this.tmpOpacity - this.animStep;
                          this.crtLi.style.filter = 'Alpha(Opacity=' + this.tmpOpacity * 100 + ')';
                          this.timerAnim = window.setTimeout(this.fnAnim.bind(this, toIndex), 50);
                      },
                      fnNextIndex: function () {
                          return (this.crtIndex >= this.adLength - 1) ? 0 : this.crtIndex + 1;
                      },
                      fnSwitch: function (toIndex) {
                          if (this.crtIndex == toIndex) { return; }
                          this.crtLi = this.adLis[this.crtIndex];
                          for (var i = 0; i < this.adLength; i++) {
                              this.adLis[i].style.zIndex = 0;
                          }
                          this.crtLi.style.zIndex = 2;
                          this.adLis[toIndex].style.zIndex = 1;
                          for (var i = 0; i < this.adLength; i++) {
                              this.btns[i].className = '';
                          }
                          this.btns[toIndex].className = 'on'
                          this.fnAnim(toIndex);
                      },
                      fnAutoPlay: function () {
                          this.fnSwitch(this.fnNextIndex());
                      },
                      fnPlay: function () {
                          this.timerSwitch = window.setInterval(this.fnAutoPlay.bind(this), this.switchSpeed * 1000);
                      },
                      fnStopPlay: function () {
                          window.clearTimeout(this.timerSwitch);
                      },
                      init: function () {
                          this.adLis = this.ctn.getElementsByTagName('li');
                          this.btns = this.ctn.getElementsByTagName('cite')[0].getElementsByTagName('span');
                          this.adLength = this.adLis.length;
                          for (var i = 0, l = this.btns.length; i < l; i++) {
                              with ({ i: i }) {
                                  this.btns[i].index = i;
                                  this.btns[i].onclick = this.fnSwitch.bind(this, i);
                                  this.btns[i].onclick = this.fnSwitch.bind(this, i);
                              }
                          }
                          this.adLis[this.crtIndex].style.zIndex = 2;
                          this.fnPlay();
                          this.ctn.onmouseover = this.fnStopPlay.bind(this);
                          this.ctn.onmouseout = this.fnPlay.bind(this);
                      }
                  };
                  var player1 = new player('player');
</script>  
</div>

          <div id="land" runat="server" style="float:left; background-color:#1AE694;width: 440px;">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;<table style="border-style: dotted; border-width: medium; width:100%;">
                  <tr>
                      <td style="text-align:center"  colspan="2">
                          <asp:Label  ID="Label6" runat="server" BorderStyle="Inset" Text="用户登录"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户名：</td>
                      <td><asp:TextBox ID="UserName" runat="server" Width="193px"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 密码：</td>
                      <td><asp:TextBox ID="UPws" runat="server" Width="193px" TextMode="Password"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="登录" OnClick="Button2_Click" /></td>
                  </tr>
              </table>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">没有账号，点击注册</asp:LinkButton>
              </div>
              <div id="register" runat="server" style="float:left; background-color:#1AE694;width: 440px;">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;<table style="border-style: dotted; border-width: medium; width:100%;">
                  <tr>
                      <td style="text-align:center"  colspan="2">
                          <asp:Label  ID="Label1" runat="server" BorderStyle="Inset" Text="用户注册"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户名：</td>
                      <td><asp:TextBox ID="RegisterName" runat="server" Width="193px"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 密码：</td>
                      <td><asp:TextBox ID="RegisterPws" runat="server" Width="193px" TextMode="Password"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 确认密码:</td>
                      <td><asp:TextBox ID="ConfigPws" runat="server" Width="193px" TextMode="Password"></asp:TextBox></td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="确认" />
                      </td>
                  </tr>
              </table>
              </div>

               <div class="left2" style="float:left;background-color:#FFE4B5; height: 145px; width: 437px;";>
                   <asp:Label ID="Label2" runat="server" Text="图书分类："></asp:Label>
                   <br />
                   <table style="width:99%; height: 122px;">
                       <tr>
                           <td class="auto-style11"><li>
                               <a href='Download.aspx?state=3&booktype=小说' target="_blank">小说</a>
</li></td>
                           <td><li>
  <a href='Download.aspx?state=3&booktype=文学' target="_blank">文学</a>
</li></td>
                       </tr>
                       <tr>
                           <td class="auto-style8"><li>
  <a href='Download.aspx?state=3&booktype=艺术' target="_blank">艺术</a>
</li></td>
                           <td class="auto-style5"><li>
  <a href='Download.aspx?state=3&booktype=动漫/幽默' target="_blank">动漫/幽默</a>
</li></td>
                       </tr>
                       <tr>
                           <td class="auto-style9"><li>
  <a href='Download.aspx?state=3&booktype=旅游' target="_blank">旅游</a>
</li></td>
                           <td class="auto-style4" ><li>
  <a href='Download.aspx?state=3&booktype=地图/地理' target="_blank">地图/地理</a>
</li></td>
                       </tr>
                       <tr>
                           <td class="auto-style10">
                               <li>
  <a href='Download.aspx?state=3&booktype=生活' target="_blank">生活</a>
</li>
                           </td>
                           <td class="auto-style6">
                               <li>
  <a href='Download.aspx?state=3&booktype=其它' target="_blank">其它</a>
</li>
                           </td>
                       </tr>
                   </table>
          
          
          
        </div>
              </div>
</div>

          </div>

                  
  
     <div style="width:1089px; height: 630px;">
    <div class="right W735 bGray" style="*height:611px; float:left; width: 672px;">
        <div class="r_t png_bg">
          <h1  class="png_bg"> 最新图书</h1>
            <em><a href="Download.aspx?state=null"><i>&gt;</i>MORE</a></em>
          <div class="clear"> </div>
        </div>
        <div class="r_con" style="height:470px;*height:514px; width: 721px;">

            <table style=" border-style: inset; height: 484px; width: 664px; margin-right: 0px; margin-top: 32px;">
                <tr >
                   <td  style="text-align:center" aria-multiline="True" class="auto-style3">
			  					&nbsp;<a  runat="server" id="a0" ><img  runat="server" id="img0" width="111" height="155" ></a>
                                <br />
			                    &nbsp;<asp:HyperLink ID="HL0"  runat="server" Width="178px">HyperLink</asp:HyperLink>
				</td>
                    <td style="text-align:center" class="auto-style2" >
			  					&nbsp;<a  runat="server" id="a1" aria-multiline="True" ><img runat="server" id="img1" width="111" height="155" ></a><br />
			                    &nbsp;<asp:HyperLink ID="HL1" runat="server" Width="184px">HyperLink</asp:HyperLink>
		
                    </td>
                    <td  style="text-align:center" class="auto-style1">
			  					&nbsp;<a  runat="server" id="a2" ><img runat="server" id="img2" width="111" height="155" ></a>
                                <br />
			  
                                &nbsp;<asp:HyperLink ID="HL2" runat="server" Height="16px" Width="184px">HyperLink</asp:HyperLink>
			  					</td>
                </tr>
                <tr >
                   <td style="text-align:center" aria-multiline ="True" class="auto-style3">
			  					<a  runat="server" id="a3" ><img runat="server" id="img3" width="111" height="155" ></a>
                                <br />
                                <asp:HyperLink ID="HL3" runat="server" Width="184px">HyperLink</asp:HyperLink>
			   				
			 </td>
                    <td style="text-align:center" aria-multiline="True" class="auto-style2">
			  					&nbsp;<a  runat="server" id="a4" ><img runat="server" id="img4" width="111" height="155" ></a>
                                <br />
			  
                                &nbsp;<asp:HyperLink ID="HL4" runat="server" Width="184px">HyperLink</asp:HyperLink>
			   			
		</td>
                    <td style="text-align:center" class="auto-style1">
			  					&nbsp;<a  runat="server" id="a5" ><img runat="server" id="img5" width="111" height="155" ></a>
                                <br />
                                &nbsp; <asp:HyperLink ID="HL5" runat="server" Width="184px">HyperLink</asp:HyperLink>
			   			
				</td>
                </tr>
            </table>

        </div>
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
        <div class="right5">
            <asp:Label ID="Label4" runat="server" Text="作者服务"></asp:Label>
          <ul class="jx">
            <strong><a href="upload.aspx" target="_blank" >分享书籍  >></a></strong>
          </ul>
          <ul>
            <strong><a href="News.aspx?id=12&state=0&date=2015-05-28&title=征稿启事 " target="_blank">征稿启事  >></a></strong>
          </ul>
          <ul>
            <strong><a href="News.aspx?id=13&state=0&date=2015-05-28&title=写作指南" target="_blank">写作指南  >></a></strong>
          </ul>
          <ul>
            <strong><a href="News.aspx?id=14&state=0&date=2015-05-28&title=出版法律法规" target="_blank">出版法律法规  >></a></strong>
          </ul>

    </div>
     </div>
        <div class="globle1" >



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
