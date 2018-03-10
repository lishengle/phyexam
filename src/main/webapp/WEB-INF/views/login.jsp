<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	
	<title>欢迎登录健康平台</title>
	<link rel="icon" href="logo16.ico" type="img/x-icon"/>
	<style type="text/css">
	a,span{
			text-decoration: none;
			font-size: 16px;
			font-family: "Microsoft YaHei";
			font-color: black;
	}
	input{
		border:1px solid #d9d9d9;
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
		border:5px solid #dfdfda;
		width: 330px;
		height: 400px;
		position: relative;
		right:-1000px;
		top:-1200px;
		background-color: #fff;
		opacity: 0.9;                    /* Firefox, Safari(WebKit), Opera */
   		-ms-filter: "alpha(opacity=80)"; /* IE 8 */
   		filter: alpha(opacity=80);       /* IE 4-7 */
   		zoom: 1;
	}
	.body1 > .login-box > .user{
		border-bottom: 3px solid #dfdfda;
		border-right: 3px solid #dfdfda;
		height: 50px;
		width: 165px;
		line-height: 50px;		
		text-align:center;
		position: absolute;
		left:0px;
		top:0px;


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
		border-bottom: 3px solid #dfdfda;
		height: 50px;
		width: 165px;
		text-align:center;
		line-height: 50px;	
		position: absolute;
		right:0px;
		top:0px;

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
		position: relative;
		right:-1400px;
		top:-1500px;


	}
	form>ul>li>img{
		position: absolute;
		left: -355px;
	}
	form>ul>li>input{
		position: relative;
		right: 300px;
	}
	form{
		width: 400px;
	}
	form>ul{
		width: 300px;
	}
	form>ul>li{
		margin: 10px 0px;
		width: 300px;
	}
	form>ul>#log>input{
		display: inline-block;
		border:none;
		background-color: red;
		width:260px; 
		height:35px;
		position: absolute;
		left:-355px;
		line-height: 35px;
		font-weight: bold;
		text-align:center;
		color:#fff;
		font-size: 20px;
		letter-spacing:15px;
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
	}
	form>ul>#log2>input{
		display: inline-block;
		border:none;
		background-color: #33FFFF;
		width:260px; 
		height:35px;
		position: absolute;
		left:-355px;
		line-height: 35px;
		font-weight: bold;
		text-align:center;
		color:#fff;
		font-size: 20px;
		letter-spacing:15px;
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
	}
	form>ul>#reg1>a{
		display: inline-block;
		border:none;
		background-color: red;
		width:260px; 
		height:35px;
		position: relative;
		left:-355px;
		top:50px;
		line-height: 35px;
		font-weight: bold;
		text-align:center;
		color:#fff;
		font-size: 20px;
		letter-spacing:15px;
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
	}
	form>ul>#reg2>a{
		display: inline-block;
		border:none;
		background-color: red;
		width:260px; 
		height:35px;
		position: relative;
		left:-355px;
		top:50px;
		line-height: 35px;
		font-weight: bold;
		text-align:center;
		color:#fff;
		font-size: 20px;
		letter-spacing:15px;
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
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
				<a href="/html/index.html">官网</a>
			</li>
			<li id=title3>
				<a href="">管理用户</a>
			</li>
			<li id=title4>
				<a href="">联系我们</a>
			</li>
		</ul>
		<div class="second1">
			<a href=""><img src="img/background1.jpg" width="1920"></a>
		</div>
	</div>
	<div id="body1" class="body1">
		<div class="login-box">
			<div class="user" :class="{'selected':cur==1}"@click.prevent="cur=1" >
				<a href="">用户登录</a>
			</div>
			<div class="docter" :class="{'selected':cur==2}"@click.prevent="cur=2">
				<a href="">医生登录</a>
			</div>
		</div>
		<div id="body1" :class="{'show':cur==2}">
			<form name="form1" action="/login" method="post">
				<ul>
					<li><img src="img/user.jpg" width="50" height="50"><input type="text" name="penum" style="width:200px; height:40px;" onkeyup="this.value=this.value.replace(/[\W]/g,'')" placeholder="用户名/数字字母组合"/></li>
					<li><img src="img/lock2.jpg" width="50" height="50"><input type="password" name="password" style="width:200px; height:40px;" onkeyup="this.value=this.value.replace(/[\W]/g,'')" placeholder="密码/数字字母组合"/></li>
					<li id="log"><input type="submit" value="登录" /></li>
					<li id="reg1"><a href="/register">注册</a></li>
				</ul>
			</form>
		</div>
		<!--分割线+++++上部分为用户登录++++++++++++++++下部分为医生登录+++++++++++++++++++++++++++++++++++-->
		<div id="body1" :class="{'show':cur==1}">
			<form name="form2" action="/login-doctor" method="post">
				<ul>
					<li><img src="img/userimg1.jpg" width="50" height="50"><input type="text" name="num" style="width:200px; height:40px;" onkeyup="this.value=this.value.replace(/[\W]/g,'')" placeholder="用户名/数字字母组合"/></li>
					<li><img src="img/lock2.jpg" width="50" height="50"><input type="password" name = "password" style="width:200px; height:40px;" onkeyup="this.value=this.value.replace(/[\W]/g,'')" placeholder="密码/数字字母组合"/></li>
					<li id="log2"><input type="submit" value="医生登录"/></li>
					<li id="reg2"><a href="/html/register.html">注册</a></li>
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
	</script>

</body>
</html>