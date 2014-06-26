<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page pageEncoding = "UTF-8"%>
<html>
<head>
<title>BC2商城</title>
<link href="../css/frame.css" rel="stylesheet" type="text/css">
   </head>

<body>
<%@ include file="header.jsp" %>
	<div id="banner"></div>
	<div id="main">
		<div id="search2">
			<div id="searchleft">
				<img src="../image/ico_site.jpg" id="ico_site"/>
				网站路径：<a href="item_search.jsp">商品搜索</a>&gt;&gt;<a href="">搜索结果</a>
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
			<div id="sendnotehead"><strong>搜索结果</strong></div>
			<div id="sendnotecontent">
				<table id="favorite">
				<thead>
					<tr>
						<th>No.</th>
						<th>商品图片</th>
						<th>商品信息</th>
					</tr>
				</thead>
				<tbody>
				  <tr>
            		<td>
						<span>1</span>
					</td>
					<td>
						<a href="item_info.jsp"><img src="../image/dxwl4.jpg" class="picture1"/></a>
					</td>
					<td>
						<span class="red">大学物理学.第四册：波动与光学（第2版）</span><br>
						市场价：￥10.00<br>
						会员价：￥8.50<br>
						<a href="cart_list.jsp"><img src="../image/goumai.gif" alt="购买" class="picture"></a>&nbsp;
		<a href="favorite.jsp"><img src="../image/put_to_collection.gif" alt="收藏" class="picture"></a>
					</td>
          		  </tr>
				  				  <tr>
            		<td>
						<span>2</span>
					</td>
					<td>
						<img src="../image/dxwl1.jpg" class="picture1"/>
					</td>
					<td>
						<span class="red">大学物理学.第一册：力学（第2版）</span><br>
						市场价：￥16.00<br>
						会员价：￥13.60<br>
						<a href="cart_list.jsp"><img src="../image/goumai.gif" alt="购买" class="picture"></a>&nbsp;
		<a href="favorite.jsp"><img src="../image/put_to_collection.gif" alt="收藏" class="picture"></a>
					</td>
          		  </tr>
				  				  <tr>
            		<td>
						<span>3</span>
					</td>
					<td>
						<a href="item_info_nostorage.jsp"><img src="../image/dxwl2.jpg" class="picture1"/></a>
					</td>
					<td>
						<span class="red">大学物理学.第二册：热学（第2版）</span><br>
						市场价：￥9.50<br>
						会员价：￥8.08<br>
						<span class="inputHeaderGrey">暂无法购买</span>&nbsp;
		<a href="favorite.jsp"><img src="../image/put_to_collection.gif" alt="收藏" class="picture"></a>
					</td>
          		  </tr>
				 
				 </tbody>
            </table>	
			</div>
		</div>
		
	<div id="footer">
		<span id="footerleft"> &nbsp;隐私权 | 版权 | 法律声明 | 电子邮件：admin@163.com </span>
		<span id="footerright"> B2C商城  Power by IBM &nbsp;</span>
	</div>
</div>

</body>
</html>
