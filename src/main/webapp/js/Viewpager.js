/**
 *
 +-------------------------------------------------------------------------------------------------------------
 * 图片轮播插件 Viewpager
 +-------------------------------------------------------------------------------------------------------------
 * @author   Mr.Mao
 * @version  1.0
 * @file  	 Viewpager.js
 * @info  	 报告BUG、建议、索取最新版本 请Mail：maoshili@qq.com(注：邮件标题请包含longPicShow 以便于邮箱自动归档)
 * @date  	 2015-05-17
 +-------------------------------------------------------------------------------------------------------------
 * @Detail
 * 1、必须基于jquery使用
 * 2、可自定义配置
 * 3、支持一个页面多个轮播，支持多个轮播不同的效果
 *
 *
 * @API
 * 1、width:主容器的宽度:默认是改容器的样式宽度。通过配置调整宽度
 * 2、height：主容器的高度 默认是改容器的样式高度。通过配置调整高度
 * 3、speed：图片切换的速度,单位是ms 默认是500
 * 4、dir:图片切换效果，可配置：'leftRight','upDown','upDownExtend','opacity',默认是leftRight.,
 * 5、autoPlay：是否自动播放，可配置true,false.默认是false,
 * 6、delay：自动播放时，多久播放一次 单位是ms
 * 7、dir_way:'up'，'down'自动播放时，是向下切换（相当于按next按钮）还是向上切换（相当于按prev按钮），默认配置：down
 */
(function($){

    var Viewpager = function(viewpager){
        var thisSelf = this;
        //传进来的幻灯片展示区域
        this.viewpager = viewpager;//最外框
        //幻灯片容器
        this.viewpager_list = viewpager.find("ul.msl_viewpager_list");
        //上下帧切换控制按钮
        this.prevBtn = viewpager.find(".msl_viewpager_prev_btn");
        this.nextBtn = viewpager.find(".msl_viewpager_next_btn");
        //获取幻灯片
        this.viewpager_item = this.viewpager_list.find("li");
        //定义幻灯片个数是否为偶数
        this.listEven = this.viewpager_item.length%2==0?true:false;
        //第一张和最后一张幻灯片
        this.firstPic=this.viewpager_item.first();
        this.lastPic = this.viewpager_item.last();

        this.side=null;
        if(this.listEven){
            this.side=Math.floor((this.viewpager_item.length-1)/2);
            this.middlePic=this.viewpager_item.eq(this.viewpager_item.length/2)
        }else{
            this.side=Math.floor(this.viewpager_item.length/2);
        }
        this.noClick = false;
        //默认参数
        this.setting = {
            "width": this.viewpager.width(),  //幻灯片的高度
            "height":this.viewpager.height(), //幻灯片的高度
            "dir":"leftRight",
            "speed":500, //速度
            "autoPlay":"false",
            "delay":2000,
            "dir_way":'down'
        };
        $.extend(this.setting,this.getSetting());
        this.setViewpagerStyle();
        this.otherPicPosition();
        //上下切换按钮事件绑定
        //console.log(this.setting);
        if(this.nextBtn){
            this.nextBtn.click(function(){
                if(!thisSelf.noClick){
                    thisSelf.setViewpager("right");
                    thisSelf.noClick=true;
                }else{
                    return
                }

            })
        }

        if(this.prevBtn){
            this.prevBtn.click(function(){
                if(!thisSelf.noClick) {
                    thisSelf.setViewpager("left");
                    thisSelf.noClick=true;
                }else{
                    return;
                }
            })
        }
        if(this.setting.autoPlay){
            this.autoPlay()
        }
        this.viewpager.hover(function(){
            thisSelf.setting.autoPlay=false;
        },function(){
            thisSelf.setting.autoPlay=true;
        })

    };
    Viewpager.prototype={
        //获取参数
        getSetting:function(){
            var setting = this.viewpager.attr('data-fn');
            if(setting&&setting!=""){
                var settingValue = JSON.parse(setting);
                return settingValue;
            }else{
                return {};
            }
        },
        setViewpager:function(type){

            switch(type){
                case "left":
                    this.setAnimate(this.viewpager_item,'next');
                    break;

                default :
                    this.setAnimate(this.viewpager_item,'prev');
                    break;
            }

        },
        setAnimate:function($list,btn){
            var _this_ = this;
            var indexArr = new Array();
            $list.each(function(){
                var self = $(this);
                var animateObj
                if(btn=='prev'){
                    animateObj = self.prev().get(0)?$(this).prev():_this_.lastPic;
                }else{
                    animateObj = self.next().get(0)?$(this).next():_this_.firstPic;
                }

                indexArr.push(animateObj.css("z-index"));
                var opacity = animateObj.css("opacity");
                var left = animateObj.css("left");
                var top = animateObj.css("top");
                var animate_width = animateObj.width();
                var animate_height = animateObj.height();
                $(this).animate({
                    width:animate_width+'px',
                    height:animate_height+'px',
                    opacity:opacity,
                    left:left,
                    top:top
                },_this_.setting.speed,function(){
                    _this_.noClick=false;
                })
            });
            $list.each(function(i){
                $(this).css({"z-index":indexArr[i]})
            })
        },
        //自动播放
        autoPlay:function(){
            var _this_ =this
            setInterval(function(){
                if(!_this_.setting.autoPlay){
                    return;
                }
                if(_this_.setting.dir_way=="up"){
                    _this_.setAnimate(_this_.viewpager_item,'prev');

                }else{
                    _this_.setAnimate(_this_.viewpager_item,'next');
                }

            },_this_.setting.delay)
        },
        //设置参数

        setViewpagerStyle:function(){

            this.viewpager.css({
               "width":this.setting.width+'px',
               "height":this.setting.height+'px'
            });
            this.viewpager_list.css({
                "width":this.setting.width+'px',
                "height":this.setting.height+'px'


            });
            var p_n_w = (this.setting.width-this.setting.viewpagerWidth)/2;
            this.nextBtn.css({
                "width":p_n_w+'px',
                "height":this.setting.height+'px',
                "z-index":Math.ceil(this.viewpager_item.length/2)
            });
            this.prevBtn.css({
                "width":p_n_w+'px',
                "height":this.setting.height+'px',
                "z-index":Math.ceil(this.viewpager_item.length/2)
            });
            this.firstPic.css({
                "width":this.setting.width,
                "height":this.setting.height,
                "left":0,
                "top":0,
                "opacity":1,
                "z-index":this.side+1
            });

            /*解决偶数张的问题*/
            if(this.listEven){

                this.middlePic.css({
                    width:this.setting.width,
                    height:this.setting.height,
                    left:-this.setting.width,
                    top:0,
                    "z-index":0,
                    opacity:0
                })
            }


        },
        setMoveWay:function(type){

        },
        //设置除第一张图片的位置关系
        otherPicPosition:function(){
            var self = this;

            var otherPic =self.viewpager_item.slice(1);
            var otherPicsize = otherPic.length/2;

            var rightSide,leftSide;
            if(self.listEven){
               rightSide = otherPic.slice(0,Math.floor(otherPicsize));
               leftSide = otherPic.slice(Math.ceil(otherPicsize));
            }else{
                rightSide = otherPic.slice(0,otherPicsize);
                leftSide = otherPic.slice(otherPicsize);
            }
            var vp_width = this.setting.width;
            var vp_height = this.setting.height;
            var level = this.side;
            var vp_opacity=1;
            var vp_top=0;
            var vp_left=0;
            if(this.setting.dir==="upDown"){
                vp_left=0;
                vp_top = vp_height;
            }else if(this.setting.dir==="upDownExtend"){
                vp_top = vp_height;
                vp_height=0;

            }else if(this.setting.dir==="opacity"){
                vp_opacity=0;

            }else{
                vp_left=vp_width;

            }
            rightSide.each(function(){
                $(this).css({
                    width:vp_width+"px",
                    height:vp_height+'px',
                    left:vp_left,
                    top:vp_top,
                    opacity:vp_opacity,
                    "z-index":level
                });
                level--
            });
            leftSide.each(function(index){
                if(self.setting.dir==="upDownExtend"){
                    vp_top=0;
                }
                $(this).css({
                    width:vp_width+"px",
                    height:vp_height+'px',
                    left:-vp_left+'px',
                    top:-vp_top+'px',
                    opacity:vp_opacity,
                    "z-index":index+1
                });
            });
        }
    };
    Viewpager.init=function(viewpagers){
        var vp_cur_obj = this;
        viewpagers.each(function(){
            new vp_cur_obj($(this))
        })
    };

    window['Viewpager'] = Viewpager;
})(jQuery);