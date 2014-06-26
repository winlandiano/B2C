<%@ page language="java" import="java.util.*" contentType = "text/html;
charset = gb2312" pageEncoding = "UTF-8" %>
<% String username = (String)session.getAttribute("username"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>BC2商城</title>
<link href="../css/frame.css" rel="stylesheet" type="text/css"/>
<script language="javascript" src="../js/checkform.js">
</script>
</head>

<body>
<div id="container">
	<div id="logalleft">
		<div id="logalright">
		<a href="" target="_parent">[<%= username %>] 已登录|</a>
	 	<a href="home.jsp" target="_parent">退出</a>
		</div>
	</div>
	<div id="globallink">
		<ul>
			<li><a href="home.jsp">首页</a></li>
			<li><a href="category_list.jsp">商品管理</a></li>
			<li><a href="order_admin.jsp">订单管理</a></li>
			<li><a href="salesdata_admin.jsp">销售量统计</a></li>
			<li><a href="user_admin.jsp">会员管理</a></li>
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
				网站路径：<a href="home.jsp">首页</a>&gt;&gt;<a href="category_list.jsp">商品目录</a>&gt;&gt;<a href="">商品目录编辑</a>
			</div>
		</div>
		<div id="sendnote">
			<div id="sendnotehead"><strong>编辑商品目录</strong></div>
			<div id="sendnotecontent">
			<form action="" method="post" enctype="multipart/form-data" name="form1">
				<table id="itemsearch">
				   <tr>
					<th width="180">目录名称：</th>
            		<td width="360">
					 <input type="text" name="name" class="inputtext" onFocus="nextfield='password'" value="图书音像" maxlength="25">					</td><td width="142"><span class="red">*必输项</span></td>
          		 </tr>
				 <tr>
				 <th>父目录：</th>
            		<td>
					<select>
              			<option value="">请选择</option>
						<option value="tsyx">图书音像</option>
						<option value="sssh">时尚生活</option>
						<option value="smcp">数码产品</option>
						<option value="xhsd">鲜花速递</option>
            	    </select>
					</td>
          		 </tr>
				 <tr>
				 <th>目录描述：</th>
				 <td>
				 <textarea name="textarea" class="textAreaStyle">该目录下包括图书、音像商品，其中图书涵盖了计算机用书、外语书籍、教科书、考试用书等，种类齐全。</textarea>
				 </td>
          		 </tr>
				 <tr>
				 <th>目录图片：</th>
					<td><img src="../image/tsyx.gif" /><br>
         	 	    <input type="file" name="file">&nbsp;<input type="submit" name="Submit" value="上传"></td>
          		 </tr>
				 <tr>
				 <th></th>
			 	  <td>
				  <input type="button" name="button2" value="提交" onClick="Category_edit">
				  <input type="reset" name="button1" value="重填" onClick="clear()">
				  <input type="button" name="button22" value="返回" onClick="category_list.jsp">				  
				  </td> </tr>
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
