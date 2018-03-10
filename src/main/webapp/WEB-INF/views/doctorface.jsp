<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>医生个人中心</title>
	<link rel="icon" href="logo16.ico" type="img/x-icon"/>
	<link rel="stylesheet" href="http://www.bootcss.com/p/buttons/css/buttons.css">
	<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function(){
			$("span").click(function(){
				$('table input[type=text]').val('');
			})
		})
	</script>

	<style type="text/css">
	a,span{
			text-decoration: none;
			font-size: 16px;
			font-family: "Microsoft YaHei UI";
			font-color: black;
	}
	input{
		border:1px solid #d9d9d9;
		width: 100px;
		height: 50px;
		line-height: 50px;
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
	}
	body{
		margin:0px;
		padding: 0;

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
	div > .lable{
		
		margin: auto;
		position: absolute;
		top:800px;
		bottom: 0;
		left: 0;
		right: 0;
		width: 1000px;
		height: 1000px;
		background-color: #FFF;
		opacity: 0.9;                    /* Firefox, Safari(WebKit), Opera */
   		-ms-filter: "alpha(opacity=80)"; /* IE 8 */
   		filter: alpha(opacity=80);       /* IE 4-7 */
   		zoom: 1;
	}
	div >.lable>.word>a{
		display: inline-block;
		position: relative;
		bottom: 120px;
		margin:0px;
		padding: 0px;
		width: 300px;
		height: 70px;
		right: 1px;
		line-height: 70px;
		text-align: center;
		background-color: #66ffee;
	}
	div >.lable>.word>.tangle{
		display: inline-block;
		position: relative;
		left: 626px;
		width:0;   
		height:0;   
		border-top:0px solid transparent;   
		border-bottom: 70px solid transparent;   
		border-right: 70px solid #ee2c2c;
	}
	.information>label{
		position: relative;
		bottom: 80px;
		margin:3px;
		padding: 0px;
		height: 50px;
		width: 179px;
		line-height: 50px;
		display: inline-block;
		background-color: #ffdddd;
	}
	.second{

	}
	.tabs{
		margin: auto;
		position: absolute;
		top:800px;
		bottom: 0;
		left: 0;
		right: 0px;
		width: 1000px;
		height: 1000px;

	}
	.tabs>ul{
		position: relative;
		right: 101px;
		top:100px;
		width: 100px;
		

	}
	.tabs>ul>li{

		background-color: #fff;
		border: 1px solid #dfdfdf;
		height: 50px;
		width: 98px;
		line-height: 50px;
		text-align: center;

	}
	.tabs>ul>li.selected{
		border: 4px outset #dfdfdf;
		background-color: #00FFFF;
		transform: translate(-4px, -4px);
    	-webkit-transform: translate(-4px, -4px);
    	border-top-left-radius:15px;
    	border-bottom-left-radius:15px;
    	animation: shake 0.3s cubic-bezier(.36, .07, .19, .97) both;

	}
	.tabs>ul>li>a{
		display: inline-block;
		height: 50px;
		width: 100px;
		color: black;
	}
	
	.tabs>ul>li:hover{
		background-color: #99FFFF;
		border: 3px outset #66FFFF;
    	opacity: 1;
    	transform: translate(3px, 3px);
    	-webkit-transform: translate(3px, 3px);
    	
	}
	@keyframes shake {
		10%, 90% {
			transform: translate3d(-1px, 0, 0);
		}
		20%, 80% {
			transform: translate3d(2px, 0, 0);
		}
		30%, 50%, 70% {
			transform: translate3d(-4px, 0, 0);
		}
		40%, 60% {
			transform: translate3d(4px, 0, 0);
		}
	}

	.tabs>ul>li.selected>a{
		

	}
	.tabs > div {
		display: none;
	}
	.tabs>div.show{
		display: block;
	}
	#tab-1{
		position: absolute;
		left:350px;
	}
	#tab-2{
		position: absolute;
		left:350px;
	}
	#tab-3{
		position: absolute;
		left:350px;
	}
	#tab-4{
		position: absolute;
		left:350px;
	}
	#tab-5{
		position: absolute;
		left:300px;
	}
	#tab-6{
		position: absolute;
		left:350px;
	}
	#tab-7{
		position: absolute;
		left:350px;
	}
	#tab-8{
		position: absolute;
		left:350px;
	}
	#tab-9{
		position: absolute;
		left:350px;
	}
	#tab-10{
		position: absolute;
		left:350px;
	}
	
	table,tr,td{
		border: 1px inset #000;
	}
	td{
		text-align: center;
	}
	</style>
</head>

<body>

	<div class="first">
		<ul class="clearfix">
			<li>
			<a href="" ><img src="/img/logo1.png" width="150" height="100"></a>
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
			<a><img src="/img/doctorback1.jpg" width="1920"></a>
		</div>
	</div>
	
	<div class="second" id="app">
		
			<div class="lable">
				<div class="word">
					<a>
					<form method="post" action="/phyexamer">
					预约编号:<input id="prenum" name="penum" type="text" v-model="penum" />
					<input type="button" value="提交" @click.prevent="load" />
					</form>
					</a>
					<div class="tangle">
					</div>
					
					<div class="information" id=tab9>
						
						
						<label for="username">姓名:{{reps.name}}</label>
						<label for="usersex">性别:{{reps.sex}}</label>
						<label for="userage">年龄:{{reps.age}}</label>
						<label for="userid">电话号码:{{reps.tel}}</label>

					</div>
				</div>
			</div>
			<div class="tabs" id="tabs">
				<ul>
					<li :class="{'selected':cur==1}"@click.prevent="cur=1">
						<a href="tab-1">一般检查项</a>
					</li>

					<li :class="{'selected':cur==2}"@click.prevent="cur=2">
						<a href="tab-2">内科</a>
					</li>

					<li :class="{'selected':cur==3}"@click.prevent="cur=3">
						<a href="tab-3">外科</a>
					</li>

					<li :class="{'selected':cur==4}"@click.prevent="cur=4">
						<a href="tab-4">五官</a>
					</li>

					<li :class="{'selected':cur==5}"@click.prevent="cur=5">
						<a href="tab-5">血常规</a>
					</li>

					<li :class="{'selected':cur==6}"@click.prevent="cur=6">
						<a href="tab-6">肝功能</a>
					</li>

					<li :class="{'selected':cur==7}"@click.prevent="cur=7">
						<a href="tab-7">血脂</a>
					</li>

					<li :class="{'selected':cur==8}"@click.prevent="cur=8">
						<a href="tab-8">血糖</a>
					</li>

					<li :class="{'selected':cur==9}"@click.prevent="cur=9">
						<a href="tab-9">肾功能</a>
					</li>

					<li :class="{'selected':cur==10}"@click.prevent="cur=10">
						<a href="tab-10">肿瘤标志物</a>
					</li>
					<li :class="{'selected':cur==11}"@click.prevent="cur=11">
						<a href="tab-11">体检结果</a>
					</li>
					<li :class="{'selected':cur==12}"@click.prevent="cur=12">
						<a href="tab-12">医生建议</a>
					</li>
				</ul>
				<div id="tab-1" :class="{'show':cur==1}">
				<form >
					<table>
						<tr>
							<td>体检项目</td>
							<td>结果</td>
							
						</tr>
						<tr>
							<td>身高</td>
							<td>
							<input type="text" id="123" name="bodyheight" style="text-align:center;" v-model="bodyheight">
							</td>
							
						</tr>
						<tr>
							<td>体重</td>
							<td>
							<input type="text" name="bodyweight" style="text-align:center;" v-model="bodyweight">
							</td>
						</tr>
						<tr>
							<td>体重指数(BMI)</td>
							<td>
							<input type="text" name="BMI" style="text-align:center;" v-model="BMI">
							</td>
						</tr>
						<tr>
							<td>脉搏(P)</td>
							<td>
							<input type="text" name="pulse" style="text-align:center;" v-model="pulse">
							</td>
						</tr>
						<tr>
							<td>血压(BP)</td>
							<td>
							<input type="text" name="bloodpressure" style="text-align:center;" v-model="bloodpressure">
							</td>
						</tr>
					</table>
					<a type="button" class="button button-block button-rounded button-royal button-large" @click.prevent="upload">提交数据</a>
				</form>
					
					<span class="button button-block button-rounded button-caution button-large">重置数据</span>
				</div>

				<div id="tab-2" :class="{'show':cur==2}">
				<form>
					<table>
						<tr>
							<td>体检项目</td>
							<td>结果</td>
						</tr>
						<tr>
							<td>肝脏触诊</td>
							<td>
							<input type="text" name="palpationofliver" style="text-align:center" v-model="palpationofliver" >
							</td>
						</tr>
						<tr>
							<td>肺部听诊</td>
							<td>
							<input type="text" name="palpationoflung" style="text-align:center" v-model="palpationoflung">
							</td>
						</tr>
						<tr>
							<td>腹部触诊</td>
							<td>
							<input type="text" name="abdominaltouch" style="text-align:center" v-model="abdominaltouch">
							</td>
						</tr>
					</table>
					<a type="button" class="button button-block button-rounded button-royal button-large" @click.prevent="upload2">提交数据</a>
				</form>
					<span class="button button-block button-rounded button-caution button-large">重置数据</span>
				</div>

				<div id="tab-3" :class="{'show':cur==3}">
				<form>
					<table>
						<tr>
							<td>体检项目</td>
							<td>结果</td>
						</tr>
						<tr>
							<td>浅表淋巴结</td>
							<td>
							<input type="text" name="superficiallymphnode" style="text-align:center" v-model="superficiallymphnode">
							</td>
						</tr>
						<tr>
							<td>甲状腺</td>
							<td>
							<input type="text" name="thyriod" style="text-align:center" v-model="thyriod">
							</td>
						</tr>
						<tr>
							<td>脊柱</td>
							<td>
							<input type="text" name="spine" style="text-align:center" v-model="spine">
							</td>
						</tr>
						<tr>
							<td>四肢</td>
							<td>
							<input type="text" name="limbs" style="text-align:center" v-model="limbs">
							</td>
						</tr>
						<tr>
							<td>皮肤</td>
							<td>
							<input type="text" name="skin" style="text-align:center" v-model="skin">
							</td>
						</tr>
						
					</table>
					<a type="button" class="button button-block button-rounded button-royal button-large" @click.prevent="upload3">提交数据</a>
				</form>
					<span class="button button-block button-rounded button-caution button-large">重置数据</span>
				</div>

				<div id="tab-4" :class="{'show':cur==4}">
				<form>
					<table>
						<tr>
							<td>体检项目</td>
							<td>结果</td>
						</tr>
						<tr>
							<td>左眼视力</td>
							<td>
							<input type="text" name="left_vision" style="text-align:center;" v-model="left_vision">
							</td>
						</tr>
						<tr>
							<td>右眼视力</td>
							<td>
							<input type="text" name="right_vision" style="text-align:center;" v-model="right_vision">
							</td>
						</tr>
						<tr>
							<td>外眼</td>
							<td>
							<input type="text" name="outside_eye" style="text-align:center;" v-model="outside_eye" >
							</td>
						</tr>
						<tr>
							<td>眼底</td>
							<td>
							<input type="text" name="fundus" style="text-align:center;" v-model="fundus" >
							</td>
						</tr>
						<tr>
							<td>外耳道</td>
							<td>
							<input type="text" name="external_auditory_canal" style="text-align:center;" v-model="external_auditory_canal" >
							</td>
						</tr>
						<tr>
							<td>鼓膜</td>
							<td>
							<input type="text" name="eardrum" style="text-align:center;" v-model="eardrum" >
							</td>
						</tr>
						<tr>
							<td>鼻腔</td>
							<td>
							<input type="text" name="nasal_cavity" style="text-align:center;" v-model="nasal_cavity" >
							</td>
						</tr>
						<tr>
							<td>鼻中隔</td>
							<td>
							<input type="text" name="nasal_septum" style="text-align:center;" v-model="nasal_septum" >
							</td>
						</tr>
						<tr>
							<td>扁桃体</td>
							<td>
							<input type="text" name="tonsil" style="text-align:center;" v-model="tonsil" >
							</td>
						</tr>
						<tr>
							<td>咽部</td>
							<td>
							<input type="text" name="pharynx" style="text-align:center;" v-model="pharynx" >
							</td>
						</tr>
					</table>
					<a type="button" class="button button-block button-rounded button-royal button-large" @click.prevent="upload4">提交数据</a>
				</form>
					<span class="button button-block button-rounded button-caution button-large">重置数据</span>
				</div>

				<div id="tab-5" :class="{'show':cur==5}">
				<form>
					<table>
						<tr>
							<td>体检项目</td>
							<td>结果</td>
							<td>正常值</td>
						</tr>
						<tr>
							<td>白细胞</td>
							<td>
							<input type="text" name="leukocyte" style="text-align:center;" v-model="leukocyte">
							</td>
							<td>(4.0~10.0)*10^9/L</td>
						</tr>
						<tr>
							<td>血红蛋白</td>
							<td>
							<input type="text" name="hemoglobin" style="text-align:center;" v-model="hemoglobin" >
							</td>
							<td>110~160g/L</td>
						</tr>
						<tr>
							<td>血小板</td>
							<td>
							<input type="text" name="platelets" style="text-align:center;" v-model="platelets" >
							</td>
							<td>(100~300)*10^9/L</td>
						</tr>
						<tr>
							<td>谷丙转氨酶</td>
							<td>
							<input type="text" name="alanine_aminotransferase" style="text-align:center;" v-model="alanine_aminotransferase" >
							</td>
							<td>0~40U/L</td>
						</tr>
						<tr>
							<td>谷草转氨酶</td>
							<td>
							<input type="text" name="Aspartate_transaminase" style="text-align:center;" v-model="Aspartate_transaminase" >
							</td>
							<td>0~41U/L</td>
						</tr>
						<tr>
							<td>总胆红素</td>
							<td>
							<input type="text" name="total_bilirubin" style="text-align:center;" v-model="total_bilirubin" >
							</td>
							<td>5~20.1umol</td>
						</tr>
						<tr>
							<td>尿素氮</td>
							<td>
							<input type="text" name="urea_nitrogen" style="text-align:center;" v-model="urea_nitrogen" >
							</td>
							<td>1.69~8.34umol</td>
						</tr>
					</table>
					<a type="button" class="button button-block button-rounded button-royal button-large" @click.prevent="upload5">提交数据</a>
				</form>
					<span class="button button-block button-rounded button-caution button-large">重置数据</span>
				</div>

				<div id="tab-6" :class="{'show':cur==6}">
				<form>
					<table>
						<tr>
							<td>体检项目</td>
							<td>结果</td>
						</tr>
						<tr>
							<td>丙氨酸氨基转氨酶(ALT)</td>
							<td>
							<input type="text" name="ALT" style="text-align:center;" >
							</td>
						</tr>
						<tr>
							<td>谷草转氨酶(AST)</td>
							<td>
							<input type="text" name="AST" style="text-align:center;" >
							</td>
						</tr>
						<tr>
							<td>谷氨酰转肽酶(GGT)</td>
							<td>
							<input type="text" name="GGT" style="text-align:center;" >
							</td>
						</tr>
						<tr>
							<td>碱性磷酸酶(ALP)</td>
							<td>
							<input type="text" name="ALP" style="text-align:center;" >
							</td>
						</tr>
					</table>
					<a type="button" class="button button-block button-rounded button-royal button-large" >提交数据</a>
				</form>
					<span class="button button-block button-rounded button-caution button-large">重置数据</span>
				</div>

				<div id="tab-7" :class="{'show':cur==7}">
				<form>
					<table>
						<tr>
							<td>体检项目</td>
							<td>结果</td>
						</tr>
						<tr>
							<td>总胆固醇(TC)</td>
							<td>
							<input type="text" name="TC" style="text-align:center;" >
							</td>
						</tr>
						<tr>
							<td>甘油三酯(TG)</td>
							<td>
							<input type="text" name="TG" style="text-align:center;" >
							</td>
						</tr>
						<tr>
							<td>高密度脂蛋白胆固醇(HDL-C)</td>
							<td>
							<input type="text" name="HDL-C" style="text-align:center;" >
							</td>
						</tr>
						<tr>
							<td>低密度脂蛋白胆固醇(LDL-C)</td>
							<td>
							<input type="text" name="LDL-C" style="text-align:center;" >
							</td>
						</tr>
					</table>
					<a type="button" class="button button-block button-rounded button-royal button-large" ">提交数据</a>
				</form>
					<span class="button button-block button-rounded button-caution button-large">重置数据</span>
				</div>

				<div id="tab-8" :class="{'show':cur==8}">
				<form>
					<table>
						<tr>
							<td>体检项目</td>
							<td>结果</td>
						</tr>
						<tr>
							<td>空腹血糖</td>
							<td>
							<input type="text" name="fasting_blood_glucose" style="text-align:center;" >
							</td>
						</tr>
					</table>
					<a type="button" class="button button-block button-rounded button-royal button-large" >提交数据</a>
				</form>
					<span class="button button-block button-rounded button-caution button-large">重置数据</span>
				</div>

				<div id="tab-9" :class="{'show':cur==9}">
				<form>
					<table>
						<tr>
							<td>体检项目</td>
							<td>结果</td>
						</tr>
						<tr>
							<td>尿素氮(BUN)</td>
							<td>
							<form method="post" action="">
							<input type="text" name="BUN" style="text-align:center" >
							</form>
							</td>
						</tr>
						<tr>
							<td>肌酐(Cr)</td>
							<td>
							<form method="post" action="">
							<input type="text" name="Cr" style="text-align:center" >
							</form>
							</td>
						</tr>
						<tr>
							<td>尿素(UA)</td>
							<td>
							<form method="post" action="">
							<input type="text" name="UA" style="text-align:center" >
							</form>
							</td>
						</tr>
					</table>
					<a type="button" class="button button-block button-rounded button-royal button-large" >提交数据</a>
				</form>
					<span class="button button-block button-rounded button-caution button-large">重置数据</span>
				</div>

				<div id="tab-10" :class="{'show':cur==10}">
				<form>
					<table>
						<tr>
							<td>体检项目</td>
							<td>结果</td>
						</tr>
						<tr>
							<td>甲胎蛋白(AFP)定量</td>
							<td>
							<form method="post" action="">
							<input type="text" name="AFP" style="text-align:center" >
							</form>
							</td>
						</tr>
						<tr>
							<td>癌胚抗原(CEA)定量</td>
							<td>
							<form method="post" action="">
							<input type="text" name="CEA" style="text-align:center" >
							</form>
							</td>
						</tr>
					</table>
					<a type="button" class="button button-block button-rounded button-royal button-large" >提交数据</a>
				</form>
					<span class="button button-block button-rounded button-caution button-large">重置数据</span>
				</div>
				<div id="tab-11" :class="{'show':cur==11}">
					<form>
						<textarea cols="115" rows="20" id="textarea" name="sult"  onfocus="if(value=='请在此处填写体检结果...'){value=''}"onblur="if (value ==''){value='请在此处填写体检结果...'}" required>请在此处填写体检结果...</textarea>
						<a type="button" name="result" class="button button-block button-rounded button-royal button-large" >提交数据</a>
					</form>
					
				</div>
				<div id="tab-12" :class="{'show':cur==12}">
					<form>
						<textarea cols="115" rows="20" id="textarea" name="advi" onfocus="if(value=='请在此处填建议...'){value=''}"onblur="if (value ==''){value='请在此处填建议...'}" required>请在此处填写建议...</textarea>
						<a type="button" name="advice" class="button button-block button-rounded button-royal button-large" >提交建议</a>
					</form>
				</div>
			</div>
	</div>
	<script src="http://cdn.bootcss.com/vue/2.3.4/vue.min.js"></script>
	<script src="https://cdn.bootcss.com/vue-resource/1.3.4/vue-resource.min.js"></script>
	<script type="text/javascript">

		var tab9=new Vue({
			el:'#app',
			
			
			data:{
				cur:1,
				message:'',
				penum:'',
				bodyheight:'',
				bodyweight:'',
				BMI:'',
				pulse:'',
				bloodpressure:'',
				
				palpationofliver:'',
				palpationoflung:'',
				abdominaltouch:'',
				
				superficiallymphnode:'',
				thyriod:'',
				spine:'',
				limbs:'',
				skin:'',
				
				left_vision:'',
				right_vision:'',
				outside_eye:'',
				fundus:'',
				external_auditory_canal:'',
				eardrum:'',
				nasal_cavity:'',
				nasal_septum:'',
				tonsil:'',
				pharynx:'',
				
				leukocyte:'',
				hemoglobin:'',
				platelets:'',
				alanine_aminotransferase:'',
				Aspartate_transaminase:'',
				total_bilirubin:'',
				urea_nitrogen:'',
				
				reps:[]
		
			},
			mounted:function(){
				  this.$nextTick(function(){
				    //this.load();
				  });
				},
				methods:{
					load:function(){
						var _this = this;
						this.$http.post("/phyexamer",{"number": this.penum}).then(function(res){
							_this.reps=res.body.phyexamer;
							
							
						});
					},
					
					upload:function(){
						var _this = this;
						this.$http.post("/update1",{"number":this.penum,"height":this.bodyheight,"weight":this.bodyweight,
							"bmi":this.BMI,"p":this.pulse,"bp":this.bloodpressure}).then(function(res){
								alert(res.body.message);
						});
					},
					
					upload2:function(){
						this.$http.post("/update1",{"number":this.penum,"liver":this.palpationofliver,"bellows":this.palpationoflung
							,"abdomen":this.abdominaltouch}).then(function(res){
						});
					},
					
					upload3:function(){
						this.$http.post("/update1",{"number":this.penum,"superficialLymphNodes":this.superficiallymphnode,"thyroid":this.thyriod
							,"spine":this.spine,"limb":this.limbs,"skin":this.skin}).then(function(res){
		
							alert("success");
						});
					},
					upload4:function(){
						this.$http.post("/update1",{"number":this.penum,"lefteye":this.left_vision,"righteye":this.right_vision,"eyeAppearance":this.outside_eye,"eyeGround":this.fundus,"externalAcousticMeatus":this.external_auditory_canal,"eardrum":this.eardrum,"nasalCavity":this.nasal_cavity,"nasalSeptum":this.nasal_septum,"tonsil":this.tonsil,"pharyngeal":this.pharynx}).then(function(res){
		
							alert("success");
						});
					},
					upload5:function(){
						this.$http.post("/update1",{"number":this.penum,"whiteCorpuscles":this.leukocyte,"hemoglobin":this.hemoglobin,"platelet":this.platelets,"alt":this.alanine_aminotransferase,"ast":this.Aspartate_transaminase,"totalBilirubin":this.total_bilirubin,"bun":this.urea_nitrogen}).then(function(res){
		
							alert("success");
						});
					}
					
				}
			});
		/****
		new Vue({
			el:'#tabs',
			data: function () {
	            return {
	                msg: '999',
	                info:{}
	            };
	        },
	        ready:function() {
	            $.ajax({ 
	             url: urlgeren,
	             dataType: "json",
	             jsonp: "cb",
	             dataType: 'jsonp',
	                success: function(data){
	                    data.info = data.Model
	                }
	            });
	        }
		});
		*****/
		<!--alert(document.getElementById("prenum").value);
		document.getElementsByClassName[1];
		-->
	</script>

</body>
</html>