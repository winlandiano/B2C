<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page language="java"contentType = "text/html;
charset = gb2312" pageEncoding = "UTF-8"%>
<html>
<head>
<title>BC2商城</title>
<link href="../css/frame.css" rel="stylesheet" type="text/css"/>
<script language="javascript" src="../js/checkform.js"></script>
</head>

<body>
<div id="container">
	<div id="logalleft">
		<div id="logalright">
		</div>
	</div>
	<div id="globallink">
		<ul>
			<li><a href="home.html">首页</a></li>
			<li><a href="category_list.html">商品管理</a></li>
			<li><a href="order_admin.html">订单管理</a></li>
			<li><a href="salesdata_admin.html">销售量统计</a></li>
			<li><a href="user_admin.html">会员管理</a></li>
			<li><a href="" class="nouseful">&nbsp;</a></li>
			<li><a href="" class="nouseful">&nbsp;</a></li>
			<li><a href="" class="nouseful">&nbsp;</a></li>
		</ul>
	</div>
	<div id="banner"></div>
	<div id="main">
		<div id="search2">
			<div id="searchleft">
				<img src="../image/ico_site.jpg"  id="ico_site"/>
				网站路径：<a href="home.html">首页</a>&gt;&gt;<a href="">管理员登录</a>
			</div>
		</div>
		<div id="sendnote">
			<div id="sendnotehead"><strong> 管理员登录</strong></div>
			<div id="sendnotecontent">

			<form action="login" method="post" enctype="multipart/form-data" name="form1">
				<table id="itemsearch">
				   <tr>
					<th class="itemsearchth" >用户名：</th>
            		<td class="itemsearchtd1">
					<input type="text" class="inputtext" name="name" onFocus="nextfield='name'" value="" maxlength="25"></input>
					</td>
					<td class="itemsearchtd2">
					</td>
          		 </tr>
				 <tr>
				 <th class="itemsearchth">密&nbsp;&nbsp;&nbsp;码：</th>
            		<td class="itemsearchtd1">
					<input type="password" class="inputtext" name="password" onFocus="nextfield='name'" value="" maxlength="25">
					</td>
					<td class="itemsearchtd2">&nbsp;</td>
          		 </tr>
				
				 <tr>
				 <th></th>
				 	<td> <input type="button" name="button2" value="登录" onClick="checkloginform()"></input>
						  <input type="reset" name="button1" value="重填" onClick="clear()">
						&nbsp;
					</td>
				 </tr>
        </table>
		</form>		
			</div>
		</div>
		
	<div id="footer">
		<span id="footerleft"> &nbsp;隐私权 | 版权 | 法律声明 | 电子邮件：admin@163.com </span>
		<span id="footerright"> B2C商城  Power by IBM &nbsp;</span>
	</div>
</div>

</body>
</html>
