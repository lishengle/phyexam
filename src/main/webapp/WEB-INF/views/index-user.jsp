<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户个人中心</title>
	<link rel="icon" href="logo16.ico" type="img/x-icon"/>
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<style type="text/css">
	    body{
	    	margin: 0;
	    }
		ul{
			list-style: none;
			padding:0;
			margin: 0;
			position: relative;
		}
		a{
			text-decoration: none;
			color: #000;
			padding: 0 15px;
		}
		#sell p{
			text-align: center;
			font-size: 80%;
		}
		#sell > p.selling{
			margin: 10px 0 2px 0;
			padding:10px 0;
			height: 30px;
			background: #52748d;
			color: #000;
			font-size:110%; 
		}
		.f1{
			color: #ff6600;
			font-weight: bold;
		}
		#f0{
			font-size: 432%;
			font-weight: bold;
		}
		#f1{
			font-size: 273%;
			font-weight: bold;
		}
		#f2{
			font-size: 141%;
		}
		#top{
			height: 30px;
			line-height: 30px;
			background: #000;
			color: #fff;
			position: relative;
			padding-right: 50px;
		}
		#top a{
			color: #fff;
			padding: 0 6px;
		}
		#topSpan{
			position: absolute;
			right: 50px;
		}
		#picture{
			background: url(/img/background2.jpg);
			width: 1349px;
			height:520px;
			position: relative;
		}
		.info{
			position: absolute;
			top:171px;
			left:-57px;
		}
		#tips{
			height: 65px;
			line-height: 65px;
			position: relative;
		}
		#tips > span{
			position: absolute;
			left:50px;
			font-size: 150%;
		}
		#tips > ul{
			position: absolute;
			right: 50px;
		}
		#tips > ul > li{
			float: right;
		}
		#tips a.index{
			color: gray;
		}
		.tip{
			position: absolute;
			right:50px;
			font-style: 100%;
			width: 200px;
		}
		#sell > ul{
			border:none;
			background: #f6f6f6;
			padding:0 1px;
		}
		#sell a{
			color: gray;
		}
		#sell > ul > li{
			border:none;
			float: left;
			width: 360px;
			height: 490px;
			padding:0 41px;
			text-align: center;
			position: relative;			
		}
		#about > p.about{
			text-align: center;
			font-size: 110%;
			margin: 10px 0 2px 0;
			padding:10px 0;
			height: 30px;
			background: #52748d;
			color: #000;
			font-size:110%; 
		}
		#about > p.aboutInfo{
			background: #f6f6f6;
		}
		.clearfix:after {                 
            content: "." ;                    
            display: block ;   
            height: 0 ;   
            clear: both ;   
            visibility: hidden ;   
         }   
        .clearfix{ display: inline-block; }   
              /*  Hides from IE-mac  \*/         
        *html .clearfix{ height:1%; }   
        .clearfix{ display:block; }   
             /*  End hide from IE-mac   \*/  
     
	</style>
</head>
<body>
	<div id="userIndex">
		<div id="top">
		  <span id="topSpan">
			<i class="fa fa-user-o" aria-hidden="true"></i>
			<span>您好,</span>
			<a>{{reps.name}}</a>
		  </span>
		</div>
		<div id="tips">
			<span>医疗健康平台</span>
			<ul id="tipDiv" class="clearfix">
				<li><a class="management" href="/html/managements.html" target="_blank">身体健康管理</a></li>
				<li><a class="report" href="/html/report.html" target="_blank">体检报告</a></li>
				<li><a class="index" href="#" target="_blank">首页</a></li>
			</ul>
					
		</div>
		<div id="picture">
			<pre class="info">
				<font id="f0">线上线下</font>
				<font id="f1">全方位为您提供健康管理</font>
				     <font id="f2">为用户提供线上线下相结合的健康管理服务</font>
			</pre>
		</div>
		<div id="sell">
		    <p class="selling">体检套餐</p>
			<ul class="clearfix partSell">
			<li>
				<a href="/sell_office" target="_blank">
					<img src="/img/office.jpg" alt="企业精选入职体检套餐【男女通用】" width="360px" height="360px">
				</a>
				<a href="/sell_office" target="_blank">企业精选入职体检套餐【男女通用】</a>
				<p>
					商城价：<s>￥510.00元</s><br/>
					在线价：<font class="f1">￥320.00元</font> 
				</p>
				<p>上月订购：2135人</p>
			</li>
			<li>
				<a href="/sell_father" target="_blank">
					<img src="/img/father.jpg" alt="父母安享健行体检套餐【男性】" width="360px" height="360px">
				</a>
				<a href="/sell_father" target="_blank">父母安享健行体检套餐【男性】</a>
				<p>
					商城价：<s>￥2260.00元</s><br/>
					孝心价：<font class="f1">￥998.00元</font> 
				</p>
				<p>上月订购：1735人</p>
			</li>
			<li>
				<a href="/sell_mother" target="_blank">
					<img src="/img/mother.jpg" alt="父母安享健行体检套餐【女性】" width="360px" height="360px">
				</a>
				<a href="/sell_mother" target="_blank">父母安享健行体检套餐【女性】</a>
				<p>
					商城价：<s>￥2360.00元</s><br/>
					孝心价：<font class="f1">￥1088.00元</font> 
				</p>
				<p>上月订购：1235人</p>
			</li>
			</ul>
		</div>
		<div id="about">
			<p class="about">
				关于我们
			</p>
			
			<p class="aboutInfo">
			   <pre>
			   	              由华迪公司项目组开发的体检管理平台，帮助用户简化体检流程，提供预约-流程指引-结果查看服务；
			                          对医生端提供病人管理服务，支持输入体检结果和体检单的查看和建议反馈。

			                          为用户带来更好的服务是我们的宗旨，如果您有什么建议，请拨打00000000。
			   </pre>
			</p>
		</div>
	</div>
	<script type="text/javascript" src="http://cdn.bootcss.com/vue/2.3.4/vue.min.js"></script>
	<script type="text/javascript" src="http://cdn.bootcss.com/vue-resource/1.3.4/vue-resource.js"></script>
	<script type="text/javascript">
		var userIndex = new Vue({
			el:'#userIndex',
			data:{
				reps:[]
			},
			mounted:function(){
			  this.$nextTick(function(){
			    this.load();
			  });
			},
			methods:{
				load:function(){
					var _this = this;
					this.$http.get("/accounts").then(function(res){
						_this.reps=res.body.account;
					});
				}
			}
		});
	</script>
</body>
</html>