<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>父母安享健行体检套餐【女性】</title>
	<link rel="icon" href="logo16.ico" type="img/x-icon"/>
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css" />
	<link rel="stylesheet" type="text/css" href="/css/jquery-ui.css" />
	<style type="text/css">
		body{
			font-size:12px;
		}
		div{
			font-size:16px;
		}
		div.fade{
			display:block;
			position: absolute;
			top:0%;
			left:0%;
			width:100%;
			height:100%;
		/*	opacity:0.5;*/
			background-color:#f6f6f6;
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
		div{
			text-align: left;
		}
		pre{
			text-align: left;
			color: rgb(80,80,80);
			font-size: 120%;
			position: absolute;
			left: -300px;
			top:-30px;
		}
		#dpic{
			position: absolute;
			top:-9px;
			left: 275px;
		}
		#apic{
			position: absolute;
			top:-9px;
			left: 275px;
		}
		.font{
			color: #00008b;
			font-size: 150%;
			font-weight: bold;
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
		.tip{
			position: absolute;
			right:50px;
			font-style: 100%;
			width: 200px;
		}
		#location{			
			background: #f6f6f6;
			padding: 5px 50px;
		}
		#sell{
			position: relative;
			height: 550px;
			color: rgb(80,80,80);
		}
		#sell > div{
			display: none;
		}
		#sell > div.pop{
			border:1px solid #ff6700;
			height: 250px;
			width: 300px;
			background: #fff;
			display: block;
			position: absolute;
			top:200px;
			left:500px;
		}
		h3{
			margin: 10px 40px;
			color: gray;
		}
		#sell > div.pop ul{
			margin: 0 0 0 10px;
		}
		#sell > div.pop li{
			padding: 0 10px;
			height: 60px;
			line-height: 60px;
			font-size: 120%;
		}
		#sell > div.pop li > input{
			height: 30px;
		}
		#sell > div.pop li > input.finish{
			height: 50px;
			width: 100px;
			margin-left: 16px;
		}
		#sell > div.pop li >button{
			height: 50px;
			width: 100px;
			margin-left: 16px;
		}
		#sell > div#sellPic{
			display: block;
			width: 500px;
			height: 500px;
			position: absolute;
			left: 180px;
			top:20px;
		}
		#sellPic > div{
			display: none;
		}
		#sellPic > div.pshow{
			display: block;
		}
		#sellPic ul > li > a{
			margin-top:30px;
			border:1px solid transparent;
			float: left;
		}
		#sellPic ul > li > a.pselected{
			border:1px solid #ff6700;
			float: left;
		}
		#sellInfo{
			position: absolute;
			top:0;
			right: 200px;
			width: 500px;
			height: 500px;
		}
		#sellInfo > ul{
			border-top:1px dotted gray;
			border-bottom:1px dotted gray;
			padding:5px 0;
			position: relative;
			text-align: left;
		}
		h2{
			color: #666666;
		}
		#sellInfo > ul > li{
			float: left;
			margin: 0 20px;
			width: 200px;
			height: 50px;
			line-height: 50px;
		}
		.selectt{
			border-top:1px dotted gray;
			padding:10px 0;
		}
		#selectt > input{
			border:none;
			background: #ff6700;
			margin-top:10px; 
			font-size: 130%;
			width: 160px;
			height: 50px;
			line-height: 50px;
			color: #fff;
		} 
		#f0{
			color: #ff6600;
			font-size: 130%;
			font-weight: bold;
		}
		.others{
			position: relative;
		}
		.others > ul{
			border:1px solid #dfdfdf;
			height: 50px;
			background: #f6f6f6;
			position: relative;
		}
		.others > ul > li#l1{
			border-right:1px solid #dfdfdf;
			width: 100px;
			line-height: 50px;
			padding:0 10px;
			text-align: center;	
			position:absolute;
			left: 400px;
		}
		.others > ul > li#l2{
			border-right:1px solid #dfdfdf;
			width: 100px;
			line-height: 50px;
			padding:0 10px;
			text-align: center;	
			position:absolute;
			left: 521px;
		}
		.others > ul > li#l3{
			border-right:1px solid #dfdfdf;
			width: 100px;
			line-height: 50px;
			padding:0 10px;
			text-align: center;	
			position:absolute;
			left: 642px;
		}
		.others > ul > li#l4{
			border-right:1px solid #dfdfdf;
			width: 100px;
			line-height: 50px;
			padding:0 10px;
			text-align: center;	
			position:absolute;
			left: 763px;
		}
		.others > ul > li.selected{
			border:#fff;
			background: #fff;
			border-top:2px solid #00008b;
			border-right:1px solid #dfdfdf;
			border-bottom: none;	
			margin-top: -1px;
			margin-bottom: -2px;
		}
		
		.others > ul > li.selected >a{
			border:none;
			color: #00008b;
		}
		#partSell{
			border:none;
			padding:0;
			margin-left: 215px;
		}
		#partSell > li{
			border:none;
			float: left;
			width: 360px;
			height: 490px;
			padding:0 41px;
			text-align: center;
			position: relative;			
		}
		.f1{
			color: #ff6600;
			font-weight: bold;
		}
		.others > div{
			display: none;
			position: absolute;
			top:100px;
		}
		.others > div.show{
			display: block;
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
	<div id="sellMother" :class="{'fade':buy==1}">
		<div id="top">
		  <span id="topSpan">
			<i class="fa fa-user-o" aria-hidden="true"></i>
			<span>您好,</span>
			<a>{{message}}</a>
		  </span>
		</div>
		<div id="tips">
			<span>医疗健康平台</span>
			<ul id="tipDiv" class="clearfix">
				<li><a class="management" href="html/managements.html" target="_blank">身体健康管理</a></li>
				<li><a class="report" href="html/report.html" target="_blank">体检报告</a></li>
				<li><a class="index" href="html/index_user.html" target="_blank">首页</a></li>
			</ul>
		</div>
		<div id="location">
			当前位置：
			<a href="html/index_user.html">首页</a>
			>&nbsp;&nbsp;&nbsp;父母安享健行体检套餐【女性】
		</div>
		<div id="sell">
			<div id="sellPic">
			    <div :class="{'pshow':p==0}">
					<img src="img/mother.jpg" alt="父母安享健行体检套餐【女性】" width="360px" height="360px">
				</div>
				<div :class="{'pshow':p==1}">
					<img src="img/mother1.jpg" alt="父母安享健行体检套餐【女性】" width="360px" height="360px">
				</div>
				<div :class="{'pshow':p==2}">
					<img src="img/mother2.jpg" alt="父母安享健行体检套餐【女性】" width="360px" height="360px">
				</div>
				<div :class="{'pshow':p==3}">
					<img src="img/fmther.jpg" alt="父母安享健行体检套餐【女性】" width="360px" height="360px">
				</div>
				<ul class="clearfix">
					<li>
						<a :class="{'pselected':p==0}" @click.prevent="p=0" href="#"><img src="img/father.jpg" width="60px" height="60px"/></a>
					</li>
					<li>
						<a :class="{'pselected':p==1}" @click.prevent="p=1" href="#"><img src="img/father1.jpg" width="60px" height="60px"/></a>
					</li>
					<li>
						<a :class="{'pselected':p==2}" @click.prevent="p=2" href="#"><img src="img/father2.jpg" width="60px" height="60px"/></a>
					</li>
					<li>
						<a :class="{'pselected':p==3}" @click.prevent="p=3" href="#"><img src="img/fmther.jpg" width="60px" height="60px"/></a>
					</li>
				</ul>
			</div>
			<form id="sellInfo" action="/addmo" method="post">
				<h2>父母安享健行体检套餐【女性】</h2>
				<ul class="clearfix">
					<li>在线订购：<font id="f0">￥1088.00元 </font></li>
					<li>商城价格：<s>￥2360.00元 </s></li>
					<li>上月订购：1235人</li>
					<li>累计订购：9127人</li>
				</ul>
				<p>
					父母安享健行体检套餐是一款针对中老年人群的中端体检套餐，针对心脑血管病、肝病、肾病、高血脂、骨质疏松等慢性病及常见肿瘤进行筛查，并对您的个人健康/疾病危险性评估及全面改善方案提出 综合性的指导。 针对常见肿瘤、心脑血管病、肝病、肾病、某些传染性疾患及慢性生活方式疾病进行健康筛查，提供准确的早期预警，让您更好的了解目前身体状况。 
				</p>
				<div class="selectt">
					<label>预约日期：</label>
				    <input type="text" id="date_8" readonly style="height:16px" />	
				</div>
				<div id="selectt">
				   <input type="submit" name="submitButton" value="立即购买" />
				</div>
			</form>
		</div>
		<div class=" others" id=" others">
			<ul>
				<li id="l1" :class="{'selected':cur==1}" @click.prevent="cur=1">
				   <a href="#">商品描述</a>
				</li>
				<li id="l2"  :class="{'selected':cur==2}" @click.prevent="cur=2">
				   <a href="#">预约流程</a>	   
				</li>
				<li id="l3"  :class="{'selected':cur==3}" @click.prevent="cur=3">
				   <a href="#">体检须知</a>			   
				</li>
				<li id="l4"  :class="{'selected':cur==4}" @click.prevent="cur=4">
				   <a href="#">相关商品</a>			   
				</li>
			</ul>
			<div :class="{'show':cur==1}">
				<img id="dpic" src="img/mdetail.jpg">
			</div>
			<div :class="{'show':cur==2}">
				<pre id="ppre">
					<font class="font">体检流程</font>
					1.请带上体检人的有效身份证至服务台办理登记（可凭身份证及有效证件）；
					2.服务台护士会凭借有效证件来办理登记，并提供一张“体检导引单”；
					3.体检时可以按导引单的体检项目顺序进行体检，也可以自主调整，体检中有导引护士帮助指引完成体检流程；
					4.体检项目全部完成后，请将体检导引单交至服务台即可，全过程结束；
					5.三个工作日左右，凭前台给的账号密码，可在美年体检官网查询美年体检报告电子版。（友情提醒：所有套餐DR不出片，可提供完整的文字版。）

					<font class="font">体检预约</font>
					我们的体检预约工作时间是每天上午的八点至晚上八点整.
					若您是晚上八点后在线订购成功后，我们将会在第二天的上午第一时间和您核对体检人的详细信息以及体检城市门店和时间！无需您本人预约，帮您节省更多的时间和精力！

					<font class="font">体检前</font>
					1.体检前两天请注意饮食，不吃高脂、高蛋白食物，不饮酒，不要吃对肝、肾功能有损害的药物
					2.从检查前晚上8时后避免进食和剧烈运动，12时后禁水，最好能洗个澡，保持充足睡眠。休息不好会影响血糖、血脂、血压.
					3.体检前应对口腔、鼻腔、外耳道进行清洁，不清洁容易使一些疾病漏诊.

					<font class="font">体检中</font>
					1.体检当日应体检项目要求，请务必空腹、禁食、禁水、停服药品及保健品。因病长期服药者可继续服药，在体检时应向医生说明（糖尿病患者除外，随身带好糖果、点心，万一出现头晕、全身冒冷汗时，请随时服用并告诉体检医生）.
					2.抽血后立即压迫针孔三分钟，防止出血，勿揉局部.
					3.女性的子宫附件B超需待膀胱充盈后检查，请尽量留住晨尿。建议先做子宫附件B超，再做尿常规、妇科检查.
					4.妇科检查项目，检查对象为已婚女性。检前请排空小便；
					5.女性在月经期内请不要留取尿液标本及妇检，月经期后再作检查.
					6.女性妊娠期间体检不要做X线检查.
					7.对准备生育的女性可自行决定是否参加X线检查；（即胸部放射检查）.
					8.请带齐有关健康资料、病历等（如曾经住院或动过手术，请带病历和相关资料）.
					9.不要化妆，装饰会影响医生对疾病的判断.
					10.衣着方面，请穿宽松棉制衣服，勿佩戴项链、胸花等金属饰品。女性勿穿连衣裙、连裤袜，勿穿带有金属扣的内衣裤.
					11.请勿隐瞒病史，防止误诊.

					<font class="font">体检后</font>
					1.三个工作日左右可在线查看电子报告.
					2.需要纸质报告，可在前台留下地址.
					3.可自取体检报告.
					4.请您认真听取医生的建议，及时复查、随诊。
					5.如果您对体检结果有疑问或有其他身体不适，欢迎致电咨询，亦可到体检中心咨询医生。

				</pre>
			</div>
			<div :class="{'show':cur==3}">
				<img id="apic" src="img/attention.jpg">
			</div>
			<div :class="{'show':cur==4}">
				<ul class="clearfix" id="partSell">
					<li>
						<a href="sell_office" target="_blank">
							<img src="img/office.jpg" alt="企业精选入职体检套餐【男女通用】" width="360px" height="360px">
						</a>
						<a href="sell_office" target="_blank">企业精选入职体检套餐【男女通用】</a>
						<p>
							<font class="f1">￥320.00元</font> 
						</p>
					</li>
					<li>
						<a href="sell_father" target="_blank">
							<img src="img/father.jpg" alt="父母安享健行体检套餐【男性】" width="360px" height="360px">
						</a>
						<a href="sell_father" target="_blank">父母安享健行体检套餐【男性】</a>
						<p>
							<font class="f1">￥998.00元</font> 
						</p>
					</li>
				</ul>
			</div>
	    </div>
	</div>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-datepicker.js"></script>
	<script type="text/javascript">
		$(function(){
			
			$("#date_8").datepicker({
				showOn: "button",
				buttonImage: "images/calendar.gif",
				buttonImageOnly: true
			});
	});
	</script>
	<script src="https://unpkg.com/vue/dist/vue.js"></script>
	<script type="text/javascript">
		var userIndex = new Vue({
			el:'#sellMother',
			data:{
				message:'张三',
				cur:1,
				p:0,
				buy:0,
				info:0,
				returnMessage:"购买成功！",
				time:"2017-07-19",
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
					
					this.$http.get("report.json").then(function(res){
						_this.reps=res.body.reports;
					});
				},
				set:function(){
					var date = document.getElementById("date_8").value;
					//this.reps[0].time=date;
					alert(date);
				}
			}
		});
	</script>
</body>
</html>