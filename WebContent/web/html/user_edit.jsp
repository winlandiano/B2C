<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding = "UTF-8"%>
<html>
<head>
<title>BC2商城</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/frame.css" rel="stylesheet" type="text/css"/>
<script language="javascript" src="../js/checkform.js"></script>
</head>

<body>
<%@ include file="header.jsp" %>
	<div id="banner"></div>
	<div id="main">
		<div id="search2">
			<div id="searchleft">
				<img src="../image/ico_site.jpg"  id="ico_site"/>
				网站路径：<a href="home.jsp">首页</a>&gt;&gt;<a href=""> 个人信息维护</strong></a>
			</div>
			<div id="searchright2">
			  <input type="text" name="product" id="textInput"/>
			  <input type="button" name="Submit" value="搜索" id="searchbutton" onClick="javascript:window.open('item_search_list.jsp','_parent','')">
			</div>
			<div id="searchright1">
			  <select name="category" id="searchrightcategory">
				<option value="5">所有类别</option>
                <option value="1">图书音像</option>
                <option value="2">时尚生活</option>
                <option value="3">饰品配件</option>
                <option value="4">数码产品</option>
              </select>
		  </div>

		</div>
		<div id="sendnote">
			<div id="sendnotehead"><strong> 个人信息修改</strong></div>
			<div id="sendnotecontent">
			<form action="/B2C/UpdateUserAction" method="get" name="form1">
				<table id="itemsearch">
				   <tr>
					<th class="itemsearchth" >E-mail地址：</th>
            		<td class="itemsearchtd1">
            		<%
            			String userEmail_info = (String)session.getAttribute("userEmail");
            		    //NBUser user = DB.getInstance().getNBUserByEmail(userEmail);
            			NBUser user = new NBUser(1,"hanjason@126.com","hans","dddddd",0,new Time(System.currentTimeMillis()),null); 
            		%>
            		
					<input type="text" name="email" class="inputtext" onFocus="nextfield='password'" value=<%=user.getEmail()%> maxlength="25" disabled="disabled"/>
					</td>
					<td class="itemsearchtd2">
						<span class="red">*&nbsp;不可更改</span>					</td>
          		 </tr>
				 <tr>
				 <th class="itemsearchth">昵&nbsp;&nbsp;&nbsp;&nbsp;称：</th>
            		<td class="itemsearchtd1">
						<input type="text" name="name" class="inputtext"onFocus="nextfield='passwordConfirm'" value=<%=user.getNickname()%> maxlength="25"/>
					</td>
					<td class="itemsearchtd2">
						<span class="red">*&nbsp;(可选项)</span>
					</td>
          		 </tr>
				 <tr>
				 <th class="itemsearchth">原&nbsp;密&nbsp;码：</th>
            		<td class="itemsearchtd1">
					  	<input type="password" class="inputtext" name="passwordold" onFocus="nextfield='name'" value="" maxlength="25">
					</td>
					<td class="itemsearchtd2">
						<span class="red">*&nbsp;必输项</span>
					</td>
          		 </tr>
				 <tr>
				 <th class="itemsearchth">新&nbsp;密&nbsp;码：</th>
            		<td class="itemsearchtd1">
					<input type="password" class="inputtext" name="passwordnew" onFocus="nextfield='name'" value="" maxlength="25">   
					</td>
					<td class="itemsearchtd2">
						<span class="red">*&nbsp;必输项</span>
					</td>
          		 </tr>
				 <tr>
				 <th class="itemsearchth">密码确认：</th>
            		<td class="itemsearchtd1">
	              <input type="password" class="inputtext" name="passwordConfirm" onFocus="nextfield='sex'" value="" maxlength="25"> 
					</td>
					<td class="itemsearchtd2">
						<span class="red">*&nbsp;必输项</span>
					</td>
          		 </tr>
				 <tr>
				 <th></th>
				 	<td><input type="submit" name="button2" value="提交" onClick="checkinfoeditform()">
						&nbsp;<input type="reset" name="button1" value="重填" onClick="clear()">
						&nbsp;<input type="button" name="button3" value="返回" onClick="javascript:window.location.href='home.jsp'">
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
