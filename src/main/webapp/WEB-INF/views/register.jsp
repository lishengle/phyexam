<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<title>注册-健康平台</title>
	<link rel="icon" href="logo16.ico" type="img/x-icon"/>
	<style type="text/css">
	a,span{
			text-decoration: none;
			font-size: 16px;
			font-family: Microsoft YaHei UI;
			font-color: black;
	}
	input{
		border:1px solid #d9d9d9;
		width: 300px;
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
	}
	/*清除浮动*****************************************************/
	.clearfix:after {                 
			content: "." ;                    
			display: block ;   
			height: 0 ;   
			clear: both ;   
			visibility: hidden ;   
	}   
	.clearfix{ display: inline-block; }           
	*html .clearfix{ height:1%; }   
	.clearfix{ display:block; }  
	/*清除浮动*****************************************************/
	
	ul{
			list-style: none;
			padding:0;
			margin: 0;
			height: 100px;
	}
	.first > ul{
		border: 1px solid #dfdfdf;
		background-color: #fff;
		padding: 0;
		margin: 0;
		position: relative;
	}
	.first > ul > li{
		float: left;
		height: 100px;
		padding: 0;
		margin: 0;
		position: relative;

	}
	.first > ul > li > img{

		opacity: 0.9;                    /* Firefox, Safari(WebKit), Opera */
   		-ms-filter: "alpha(opacity=80)"; /* IE 8 */
   		filter: alpha(opacity=80);       /* IE 4-7 */
   		zoom: 1;
	}
	.first > ul > #title1{

		line-height: 100px;
		color: #000;
		position: absolute;
		left: 200px;
	}
	.first > ul > #title1 > a{
		/*font-weight: bold;*/
		font-size: 50px;
	}
	
	.first > ul > #title2{
		line-height: 100px;
		color: #000;
		
		position: absolute;
		right:600px;
		width: auto;


	}
	.first > ul > #title2>a{

		border:3px solid #dfdfda;
		border-left:none;
		border-top:none;
		border-bottom:none;
		font-size: 30px;
		padding-right: 3px;
	}
	.first > ul > #title3{
		line-height: 100px;
		color: #3ECAFF;
		
		position:absolute;
		right:473px;
	}
	.first > ul > #title3 > a{
		border:3px solid #dfdfda;
		border-left:none;
		border-top:none;
		border-bottom:none;
		font-size: 30px;
		padding-right: 3px;
	}
	.first > ul > #title4{
		line-height: 100px;
		color: #3ECAFF;
		
		position:absolute;
		right:348px;
	}
	.first > ul > #title4 > a {
		font-size: 30px;
	}
	/*
	.second1> #body1{
		position: absolute;
		right:200px;
		top:200px;
	}
	*/
	.body1 > .login-box{
		display: inline-block;
		border:0px solid #dfdfda;
		width: 400px;
		height: 700px;
		margin: auto;
		position: absolute;
		top:120px;
		left:0;
		right:0;
		bottom: 0;
		background-color: #fff;
		opacity: 0.9;                    /* Firefox, Safari(WebKit), Opera */
   		-ms-filter: "alpha(opacity=80)"; /* IE 8 */
   		filter: alpha(opacity=80);       /* IE 4-7 */
   		zoom: 1;
	}
	.body1 > .login-box > .user{
		
		border:none;
		height: 50px;
		width: 165px;
		line-height: 50px;		
		text-align:center;
		margin: auto;
		position: absolute;
		right: 0;
		left:0px;
		top:0px;
		bottom: 680px;


	}
	.body1 > .login-box > .user>a{
		display: inline-block;
		width: 164px;
	}
	.body1 > .login-box > .user>ul{
		position: absolute;
		top:75px;
		left:30px;
	}
	.body1 > .login-box > .docter{
		border:none;
		height: 50px;
		width: 165px;
		text-align:center;
		line-height: 50px;
		margin:auto;
		position: absolute;
		right:0px;
		top:0px;
		bottom:550px;
		left:0px;
	}
	.body1 > .login-box > .docter>a{
		display: inline-block;
		width: 164px;
	}
	.body1 > .login-box > .user.selected{
		border-bottom: none;
	}
	.body1 > .login-box > .docter.selected{
		border-bottom: none;
	}
	body{
		padding: 0;
		margin: 0;


	}
	form{
		margin:auto;
		position: absolute;
		right:0px;
		top:240px;
		left:180px;
		bottom: 0;


	}
	form>ul>li>img{
		position: absolute;
		left: -55px;
	}
	form{
		width:500px;
	}
	form>ul{
		width: 500px;
	}
	form>ul>li{
		margin: 10px 0px;
		width: 500px;
	}
	.body1 > .body1 > form{

	}
	form > #st > #reg1>a{
		display: inline-block;
		border:none;
		background-color: #000;
		width:300px; 
		height:44px;
		position: relative;
		
		line-height: 44px;
		font-weight: bold;
		text-align:center;
		color:#fff;
		font-size: 20px;
		letter-spacing:15px;
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
	}
	
	form > #st >li{
		border:1px solid #d9d9d9;
		width: 300px;
		height: 44px;
		position: relative;
		margin: 40px 0;
		line-height: 40px;
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
		font-family: "Microsoft Yahei"；

	}
	form > #st >li:hover{
	border:1px solid #888888;

	}
	form > #st >li >input{
		border:0px solid #d9d9d9;
		position: absolute;
		bottom: 0px;
		right:0px;

	}
	form > #st >div{
		position: absolute;
		margin:auto;
		left:80px;
		right: 0px;
	}
	form > #st >#reg1:hover a{
		background-color: #EE2c2c;
	}
	.body1>div.show{
		display: none;
	}
	.body>div
	</style>
</head>

<body>

	<div class="first">
		<ul class="clearfix">
			<li>
			<a href="" ><img src="img/logo1.png" width="150" height="100"></a>
			</li>
			<li id=title1>
				<a>体检平台</a>
			</li>
			<li id=title2>
				<a href="index.html">首页</a>
			</li>
			<li id=title3>
				<a href="">管理用户</a>
			</li>
			<li id=title4>
				<a href="">联系我们</a>
			</li>
		</ul>
		<div class="second1">
			<a href=""><img src="img/registerback.jpg" width="1920"></a>
		</div>
	</div>
	<div id="body1" class="body1">
		<div class="login-box">
			<div class="user" :class="{'selected':cur==1}"@click.prevent="cur=1" >
				<img src="img/logo1.png" width="80" height="80">
			</div>
			<div class="docter" :class="{'selected':cur==2}"@click.prevent="cur=2">
				<a>创建健康体检账号</a>
			</div>
		</div>
		<div id="body1" :class="{'show':cur==2}">
			<form action="/register" method="post">
				<ul id="st">
					
					<li>用户名<input type="text" id="num" name="num" maxlength="16" style="text-align:center; width:200px; height:40px;" onkeyup="this.value=this.value.replace(/[\W]/g,'')" onblur="existName()" placeholder="您的帐户名"/></li>

					
					<li>新密码<input type="password" name="password" maxlength="16" style=" text-align:center; width:200px; height:40px;" onkeyup="this.value=this.value.replace(/[\W]/g,'')" placeholder="建议至少使用两种字符"/></li>

					
					<li>确认密码<input type="password" name="" maxlength="16" style=" text-align:center; width:200px; height:40px;" onkeyup="this.value=this.value.replace(/[\W]/g,'')" placeholder="请再次输入密码"/></li>

					
					<li>真实姓名<input type="text" name="name" maxlength="12" style="text-align:center; width:200px; height:40px;" onkeyup="this.value=this.value.replace(/[^\u4E00-\u9FA5]/g,'')" placeholder="真实姓名"/></li>

					
					<li>手机(+86)<input type="text" name="telephone" maxlength="11" style="text-align:center; width:200px; height:40px;" onkeyup="this.value=this.value.replace(/[\W]/g,'')" placeholder="建议使用常用手机"/></li>


					<span id="reg1"><input type="submit" value="注册"/></span>
					<div><a href="Login.html">已有账号？请登录</a></div>
				</ul>
			</form>
		</div>
		<!--分割线+++++上部分为用户登录++++++++++++++++下部分为医生登录+++++++++++++++++++++++++++++++++++-->
		<div id="body1" :class="{'show':cur==1}">
			<form>
				<ul>
					
				</ul>
			</form>

	</div>
	

	<script src="http://cdn.bootcss.com/vue/2.3.4/vue.min.js"></script>
	<script type="text/javascript">
		new Vue({
			el:'#body1',
			data:{
				cur:1
			}
		});
		
		function existName(){
		    var name = document.getElementById("num").value;
		    if(name == ""){
		       alert("账号不能为空");
		    }else{
		        $.ajax({
		            url:"existName/"+name,
		            dataType:"json",
		            type:"get",
		            success:function(data){
		                if(data.message == 1){
		                    document.getElementById("m_name").innerHTML="<font color='green' size='5'>√</font>";
		                    document.getElementById("m_name_e").innerHTML="";
		                }else{
		                    document.getElementById("m_name_e").innerHTML="<font color='red' size='4'>用户名已存在</font>";
		                    document.getElementById("m_name").innerHTML="";
		                }
		            }
		        });
		    }
		}
	</script>

</body>
</html>