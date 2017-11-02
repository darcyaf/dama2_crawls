<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><title>打码兔官网 验证码识别 远程答题服务 代答平台 验证码识别软件下载</title><meta name="keywords" content="打码兔，打码兔官网，打码兔答题，验证码识别，远程答题，远程代答" /><meta name="description" content="机灵，活泼，乖巧是兔子的象征 —— 打码兔远程代答题以性价比为优势，以服务为品质，充分学习并具备了前辈微锐、微速答题、自游答题、冷雨夜答题挂的高速答题、准确识别一切验证码的优点，领跑代答题行业，做全国领先的远程代答题服务平台及开发一流的代答题器" /><link rel="icon" href="/Public/images/favicon.ico" type="image/x-icon" /><link rel="bookmark" href="/Public/images/favicon.ico" type="image/x-icon" /><link rel="shortcut icon" href="/Public/images/favicon.ico" type="image/x-icon" /><link rel="stylesheet" type="text/css" href="/Public/js/css/gallery.css" /><link rel="stylesheet" type="text/css" href="/Public/js/css/jquery-ui-min.css" /><link rel="stylesheet" type="text/css" href="/Public/css/style.css" /><link rel="stylesheet" type="text/css" href="/Public/css/guide.css?1507592725"><script type="text/javascript" src="/Public/js/jquery.js"></script><script type="text/javascript" src="/Public/js/jquerymd5.js"></script><script type="text/javascript" src="/Public/js/gallery.js"></script><script type="text/javascript" src="/Public/js/jqueryuimin.js"></script><script type="text/javascript" src="/Public/js/jqueryuizh.js"></script><script type="text/javascript" src="/Public/js/public.js"></script></head><body><div class="header"><div class="hleft"><a href="/"></a></div><div class="hright"><img src="/Public/images/400_188.png" /><br/><a href="/">首页</a> | 
		<a href="/Index/preg" target="_blank">开发者注册</a> | 
		<a href="/Index/ureg" target="_blank">用户注册</a> |
		<a href="http://wiki.dama2.com/" target="_blank"><strong>验证码识别</strong>API接口维基</a> | 
		<a href="/Index/guide" target="_blank">接入向导</a> | 
		<a href="http://wiki.dama2.com/index.php?n=About.ProfitSharing" target="_blank">开发者分成</a> | 
		<a href="http://wiki.dama2.com/index.php?n=ApiDoc.Pricedesc" target="_blank">答题价格表</a> | 
		<a href="http://wiki.dama2.com/index.php?n=ApiDoc.ErrDef" target="_blank">自助排障</a> |
		<a href="http://wiki.dama2.com/index.php?n=About.Shenmayun" target="_blank">联系我们</a></div></div><div id="body-div"><link rel="stylesheet" href="/Public/css/update-security.css"><script type="text/javascript">
    //$(updateGraph);


    function updateGraph() {
        var graphsrc = $("#lineargraph").attr("src");
        graphsrc = graphsrc.substring(0, graphsrc.indexOf("?") + 1) + Math.random() + Math.random();
        $("#lineargraph").attr("src", graphsrc);
        setTimeout("updateGraph()", 60000);
    }

    //    var vr = getInternetExplorerVersion();
    //
    //    if (vr == -1 || vr >= 9) {
    //	    updateSecurity();
    //    }
    //
    //    function updateSecurity(isOneDayOnce) {
    //        if ($.cookie('isClose1') != 'yes') {
    //            var html = '<div id="updateSecurityModal"><div class="dama2-backdrop dama2-sidenav-backdrop dama2-enter"></div><div class="update-version-modal dama2-whiteframe-z5"><div class="update-version-close"></div><a class="update-version-link" href="#"></a></div>';
    //            $('body').prepend(html);
    //            $element = $('#updateSecurityModal');
    //            $backdrop = $element.find('.dama2-backdrop');
    //            $closeBtn = $('.update-version-close');
    //            $link = $('.update-version-link');
    //            $closeBtn.on('click', function () {
    //                hide();
    //            });
    //            $link.on('click', function () {
    //                hide();
    //                $.cookie('dm2version', 'v3', {expires: 999, path: '/'});
    //                location.href = "http://v3.dama2.com/";
    //            });
    //        }
    //        function hide() {
    //            $backdrop
    //                    .removeClass('dama2-enter')
    //                    .addClass('dama2-leave');
    //            setTimeout(function () {
    //                $element.remove();
    //            }, 200);
    //        }
    //    }
    //    function getInternetExplorerVersion() {
    //
    //        // Returns the version of Windows Internet Explorer or a -1
    //        // (indicating the use of another browser).
    //        var rv = -1; // Return value assumes failure.
    //
    //        if (navigator.appName == 'Microsoft Internet Explorer') {
    //
    //            var ua = navigator.userAgent;
    //
    //            var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
    //
    //            if (re.exec(ua) != null)
    //
    //                rv = parseFloat(RegExp.$1);
    //
    //        }
    //
    //        return rv;
    //
    //    }


    $(function () {
        $("#changeGraph").toggle(
                function () {
                    $(this).html("点击看&nbsp;1&nbsp;小时状态");
                    $("#lineargraph").attr("src", "/Index/totalSpeedGraph?" + Math.random() + Math.random());
                    return false;
                },
                function () {
                    $(this).html("点击看24小时状态");
                    $("#lineargraph").attr("src", "/Index/avgSpeedGraph?" + Math.random() + Math.random());
                    return false;
                }
        );
    });
    $(function () {
        $("#userloginbtn").live("click", ulogin);
        $("#uloginForm input").live("keydown", function (e) {
            if (e.which == "13") {
                ulogin();
            }
        });
        $("#prologinbtn").live("click", plogin);
        $("#ploginForm input").live("keydown", function (e) {
            if (e.which == "13") {
                plogin();
            }
        });
    });
    function ulogin() {
        var flag = true
        $("#uloginForm input").each(function () {
            if ($(this).val() == "") {
                //$(this).css({"border":"1px solid #f00"});
                $(this).focus();
                flag = false;
                return false;
            }
        });
        if (flag == true) {
            var username = $("#uloginForm input[name='username']").val();
            var userpwd = $("#uloginForm input[name='userpwd']").val();
            var md5Key = $.md5($.md5(username) + $.md5(userpwd));
            var vcode = $("#uloginForm input[name='vcode']").val();
            userpwd = $.md5(md5Key + $.md5(String(vcode).toUpperCase()));
            var __hash__ = $("#uloginForm input[name='__hash__']").val();
            $.post("/index/uLogin", {
                username: username,
                __hash__: __hash__,
                userpwd: userpwd,
                vcode: vcode
            }, function (res) {
                if (res.status == 1) {
                    top.location.href = "/user";
                    return false;
                }
                tipBox(res.msg);
                $('#uimg').click();
                $("#uloginForm input[name='userpwd']").val("");
                return false;
            }, 'json');

        }
    }

    function plogin() {
        var flag = true
        $("#ploginForm input").each(function () {
            if ($(this).val() == "") {
                //$(this).css({"border":"1px solid #f00"});
                $(this).focus();
                flag = false;
                return false;
            }
        });
        if (flag == true) {
            var username = $("#ploginForm input[name='username']").val();
            var userpwd = $("#ploginForm input[name='userpwd']").val();
            var md5Key = $.md5($.md5(username) + $.md5(userpwd));
            var vcode = $("#ploginForm input[name='vcode']").val();
            userpwd = $.md5(md5Key + $.md5(String(vcode).toUpperCase()));
            $.post("/index/pLogin", {username: username, userpwd: userpwd, vcode: vcode}, function (res) {
                if (res.status == 1) {
                    top.location.href = "/programmer";
                    return false;
                }
                tipBox(res.msg);
                $('#pimg').click();
                $("#ploginForm input[name='userpwd']").val("");
                return false;
            }, 'json');

        }
    }
</script><ul id="swipeGallery"><!--<li><a target="_blank" href="//v3.dama2.com/index/nationalday2017"><img src="/Public/images/national2017/old-dmt.jpg" alt="" title=""/></a></li>--><li><a target="_blank" href="/"><img src="/Public/images/ad7.jpg" alt="" title=""/></a></li><li><a target="_blank" href="http://wiki.dama2.com/index.php?n=About.ProfitSharing"><img src="/Public/images/ad2.jpg" alt="" title=""/></a></li><li><a target="_blank" href="/"><img src="/Public/images/ad6.jpg" alt="" title=""/></a></li><li><a target="_blank" href="/"><img src="/Public/images/ad4.jpg" alt="极速识别,打码兔极速模式" title="极速识别,打码兔极速模式"/></a></li><li><a target="_blank" href="http://wiki.dama2.com/index.php?n=About.ProfitSharing"><img src="/Public/images/ad5.jpg" alt="vip中心,等级越高赠送越多.用打码兔越用越便宜" title="vip中心,等级越高赠送越多.用打码兔越用越便宜"/></a></li><li><a target="_blank" href="http://wiki.dama2.com/index.php?n=About.ProfitSharing"><img src="/Public/images/show3.jpg" alt="高性能,极稳定,云端智能,完美支持：易语言，C#,VB,VB.net,Delphi,PHP,JAVA等超过26种编程语言,提供开放的API接口，让您实现软件自动化,提供完美的分成计划" title="高性能,极稳定,云端智能,完美支持：易语言，C#,VB,VB.net,Delphi,PHP,JAVA等超过26种编程语言,提供开放的API接口，让您实现软件自动化,提供完美的分成计划"/></a></li><li><a target="_blank" href="http://wiki.dama2.com/index.php?n=About.ProfitSharing"><img src="/Public/images/ad3.jpg" alt="" title=""/></a></li><li><a target="_blank" href="http://wiki.dama2.com/index.php?n=About.ProfitSharing"><img src="/Public/images/ad1.jpg" alt="" title=""/></a></li><li><a target="_blank" href="http://wiki.dama2.com/index.php?n=About.ProfitSharing"><img src="/Public/images/show2.jpg" alt="" title=""/></a></li></ul><div class="tab-box"><div class="tab-title"><a id="ulogin">用户登录</a><a id="plogin">开发者登录</a></div><div class="clear"></div><div id="ulogin-div" class="tab-div"><form action="/index/ulogin" method="post" id="uloginForm"><table align="center"><tr><td nowrap><b>用户账号：</b></td><td colspan="2"><input type="text" name="username" value="" size="30" class="required"/></td></tr><tr><td nowrap><b>登录密码：</b></td><td colspan="2"><input type="password" name="userpwd" size="30" class="required"/></td></tr><tr><td nowrap><b>登录验证：</b></td><td><input type="text" name="vcode" size="10" class="required"/></td><td><img src="/Index/imgVerify?" id="uimg" style="cursor: pointer;" border="0"
                             onclick="this.src=this.src+1;" title="看不清楚，点击将换一个"/></td></tr><tr><td></td><td colspan="2"><input type="button" id='userloginbtn' class="button" value="立即登录"/>　<a
                            class="button" href="/Index/ureg">注册账户</a><p style="color:#999">忘记密码？ 请联系在线客服</p></td></tr></table><input type="hidden" name="__hash__" value="6666cd76f96956469e7be39d750cc7d9_7a52262e86a3e820fbe8a3701c5e5d5e" /></form></div><div id="plogin-div" class="tab-div"><form action="/index/plogin" method="post" id="ploginForm"><table align="center"><tr><td nowrap><b>开发账号：</b></td><td colspan="2"><input type="text" name="username" value="" size="30" class="required"/></td></tr><tr><td nowrap><b>登录密码：</b></td><td colspan="2"><input type="password" name="userpwd" size="30" class="required"/></td></tr><tr><td nowrap><b>登录验证：</b></td><td><input type="text" name="vcode" size="10" class="required"/></td><td><img src="/Index/imgVerify?" id="pimg" style="cursor: pointer;" border="0"
                             onclick="this.src=this.src+1;" title="看不清楚，点击将换一个"/></td></tr><tr><td nowrap></td><td colspan="2"><input type="button" id='prologinbtn' class="button" value="立即登录"/>　<a
                            class="button" href="/Index/preg">注册账户</a><p style="color:#999">忘记密码？ 请联系在线客服</p></td></tr></table><input type="hidden" name="__hash__" value="6666cd76f96956469e7be39d750cc7d9_7a52262e86a3e820fbe8a3701c5e5d5e" /></form></div></div><script type="text/javascript">
    $('.tab-box').css({opacity: 0.9});
    $('#swipeGallery').swipeGallery({width: '990px', height: '300px', autoplay: 5000, autoHeight: false});
        var tabs = [['#ulogin', '#ulogin-div'], ['#plogin', '#plogin-div']];
    useTabs(tabs, 'slt');
    $('#ulogin').click();


</script><div class="home-info"><div class="home-simg"><a href="http://wiki.dama2.com/index.php?n=About.ProfitSharing" target="_blank"><img
                src="/Public/images/home-s1.jpg"/></a><a href="/" target="_blank"><img src="/Public/images/home-s2.jpg"/></a><a href="http://wiki.dama2.com/index.php?n=About.ProfitSharing2" target="_blank"><img
                src="/Public/images/home-s3.jpg"/></a></div><div class="home-left"><!--<div class="left-menu" style="position:relative;">验证码识别速率实时状态(平均每个码耗时：单位秒)<a style="position:absolute;right:13px;" href="#" id="changeGraph">点击看24小时状态</a></div><div class="left-content"><img id="lineargraph" style="border:1px solid #777;margin-top:5px;margin-bottom:5px;" src="/Index/avgSpeedGraph?" alt="" /></div>--><div class="left-menu"><a href="http://www.dama2.com"><strong>打码兔</strong>公告</a></div><div class="left-content"><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>扩容升级完成&gt;&gt;</strong></span>10.1日晚因扩容升级，用户出现超时，对此造成的不便敬请谅解。现已升级完成。感谢您对打码兔的支持。</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>2017-10-01-2017-10-02系统扩容升级&gt;&gt;</strong></span>2017-10-01晚21点系统扩容升级，升级时间估计8小时，会出现部分超时情况，敬请谅解。</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>支付宝充值说明&gt;&gt;</strong></span>支付宝充值：支付宝充值的用户可以直接转账littlelargehuge@163.com（莫红梅），<p style="color:#F00">注意：付款说明直接填写打码兔账号。</p></span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>财付通充值端口关闭&gt;&gt;</strong></span>财付通充值端口关闭，需要充值的开发者，联系人工服务处理。
财付通充值端口关闭，需要使用银行卡充值的用户账号，联系人工服务处理。</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>支付宝充值未到账解决方法&gt;&gt;</strong></span>登录你的账号到<a href="http://v3.dama2.com/user/payproblem" style="color:#F00">http://v3.dama2.com/user/payproblem</a>，填写充值的支付宝交易号和金额，会自动充值到你登录的账号里面。</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>打码兔官方充值卡淘宝店下架通知&gt;&gt;</strong></span>打码兔官方充值卡淘宝店下架，正在处理中。请要充值的用户，使用支付宝在线充值</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>新版网页添加自主找回密码功能&gt;&gt;</strong></span>各位会员朋友，新版网页已在登录的地方添加了自主找回密码功能，如果您的邮箱填写无误，可以通过邮箱找回密码啦</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>打码兔网页版全新升级&gt;&gt;</strong></span>打码兔网页已升级为V3版，欢迎大家体验</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>题分下调通知&gt;&gt;</strong></span>2015-03-17 9点，四位英文数字混合类型，由原来的11题分下调为10题分；计算题由原来的20题分下调为15题分。感谢您一如既往地支持打码兔。</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>广大会员朋友请注意&gt;&gt;</strong></span>近期有人冒充打码兔的客服人员进行诈骗活动，在此我们郑重通知大家，打码兔的客服人员不会以任何的方式向用户索取密码，请大家警惕！！</span></div><div class='index-announ'><span class='announ-content'>打码兔安全功能升级：为了保障用户利益，兔子新增“新软件使用通知”功能。当您使用您的打码兔账号，在从未使用过的软件上登陆时，将会收到由打码兔免费发出的短信或邮件。如非你本人操作使用打码兔账号，收到消息后，请立即登陆打码兔官网，一键禁止该软件使用您的题分并同时修改您的账号密码。</span></div><div class='index-announ'><span class='announ-content'><A href="http://www.dama2.com/" target=_blank>答题VIP中心已经开放，最高充值赠送达45%！</A></span></div></div><br/><div class="left-menu"><a href="http://www.dama2.com"><strong>打码兔远程代答题（验证码识别平台）</strong>介绍</a></div><div class="left-content">
            打码兔远程代答题（验证码识别平台）是全球唯一领先的智能图片验证码识别平台！ 打码兔旨在为广大软件开发者、工作室、按键精灵作者、易语言作者、普通用户等提供即时、精准的
            远程代答题服务以快速解决海量验证码识别秒处理困扰！ 7x24小时不间断人工代答题，0~3秒极速返回识别结果，并全自动输入验证码。专业进
            取、利润共享、为用户提供最完美<strong>全自动识别验证码</strong>是打码兔远程代答题平台不变的品质！
        </div><br/><div class="left-menu"><a href="http://wiki.dama2.com/index.php?n=About.WhatCanWeDo" target="_blank">为什么选择打码兔代答题？</a></div><div class="left-content">
            1、提高开发者的软件效率10～1000倍！（完美支持多线程代答题） <br/>
            2、提高用户体验,解放用户双手,拒绝手工打码 <br/>
            3、优秀卓绝利于开发者的代答<a href='http://wiki.dama2.com/index.php?n=About.ProfitSharing'>分成模式[详情]</a><br/>
            4、高效：7x24h作业,验证码平均识别时间0～3秒 <br/>
            5、稳定：18台智能服务器,8000人工识别校正团队 <br/>
            6、扣费精准合理：错误验证码，超时答题不扣费 <br/>
            7、简单接入：提供API,调用Demo,支持C,C++,C#,E,.net,vb,java,delphi,php,au3,python,tc,按键精灵,易语言等超过28种编程语言轻易接入<br/></div><img src="/Public/images/hero.jpg"/><br/><br/><div class="left-menu"><a href="http://wiki.dama2.com/index.php?n=About.WhatIsDama2" target="_blank">什么是打码兔远程代答题系统？</a></div><div class="left-content">
            1、打码兔是一个高性能，高稳定的远程代答题，全自动验证码识别平台,为您的软件、平台、网站,提供智能化高速稳定的代答题验证码识别服务。 <br/>
            2、您只需要将您的软件整合进打码兔端API，我们将在最短时间内将您的题目验证码图片答案等返回给您，您无需再单独的去实现复杂的验证码识别方案。 <br/>
            3、打码兔，让您的产品实现完全全自动化整合，实现真正意义上的全自动输入验证码，并为开发者提供完美的分成计划。 <br/>
            4、完美支持：易语言，C#,VB,VB.net,Delphi,PHP,JAVA,按键精灵等超过26种编程语言,提供开放的远程代答题API接口，开发者可将您的软件无缝整合进来 <br/>
            5、国内16台Intel至强32核64G服务器,全球总计39台服务器同时工作,云端分配最近服务端,回码响应飞快！ <br/>
            6、单台服务器日承载600万验证码答题,国内总日产量达6000万验证码,根据客户需求还可以随时上架专用服务器！ <br/>
            7、国内超过8000人专业代答题团队,全球总计超过35600（后台数据）人专业验证码识别团队,7X24小时工作,正确率稳超96.8%！ <br/>
            8、价格低廉,扣费精准,[超时答题][错误代答]不计费！ <br/>
            9、完善的智能监控系统，保证代答题数据真实正常，保证了客户、软件开发者的利益不受损害以及平台的安全性! <br/></div><br/></div><style type="text/css" media="screen">
        .wechat-h5 {
            font-family: '微软雅黑';
            color: #389DFF
        }

        .wechat-function {
            background: none repeat scroll 0 0 #009CFF;
            float: left;
            font-family: "微软雅黑";
            padding: 5px 0 5px 5px;
            width: 23px;
            color: #fff;
        }

        .functions {
            padding: 5px;
            float: left;
            font-family: "微软雅黑";
            color: #666;
        }

        .functions li {
            padding: 2px;
        }

        .right-middle {
            overflow: hidden;
        }
    </style><div class="home-right"><div class="right-top">联系方式</div><div class="right-middle" style="text-algin:center;"><div style="margin:10px auto;"><!--  <script charset="utf-8" type="text/javascript"
                        src="http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODA0MzQ5NV8xNzc0ODBfNDAwNjY1MzUxNV8"></script>
 --><div id="D_QQ"><div id="qq" class="launchBtn bg"></div></div><a href="/index/feedback/"><img src="/Public/images/feedback.png" alt="投诉建议"/></a><br>
                &nbsp;企业QQ：4006653515<br/></div></div><div class="right-bottom"></div><!-- <div class="right-top">
            关注微信公众号，好处多多
        </div><div class="right-middle"><h5 class="wechat-h5">初次绑定，送1000题分</h5><img id="wechat-qr" width="190" src="/Public/images/wxdama.png" alt="打码兔微信" title="关注打码兔微信公众号，好处多多哟"/><h5 class="wechat-function">微信功能</h5><ol class="functions"><li>查看优惠活动</li><li>查询余额</li><li>错误码查询</li><li>今日账号使用情况</li></ol><div class="clearfix"></div></div><div class="right-bottom"></div> --><div class="right-top">当前运行状态</div><div class="right-middle">
            当前运行状态：正常<br>
            平均完成时间：3.845秒<br>
            5分钟前：3.92秒<br>
            15分钟前：3.826秒<br></div><div class="right-bottom"></div><div class="right-top"><strong>验证码识别软件下载</strong>&nbsp;
            <a href='http://pan.baidu.com/share/link?shareid=624718&uk=3879148723' target='_blank'>教程</a></div><div class="right-middle wumadownload"><a href="http://www.dama2.com/download/app/no_captcha/no_captcha.zip"><img
                    src="/Public/images/wuma_download.jpg" alt="天下无码软件下载"/></a></div><div class="right-bottom"></div><!-- <div class="right-top">打码兔公告</div><div class="right-middle"><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>扩容升级完成&gt;&gt;</strong></span>10.1日晚因扩容升级，用户出现超时，对此造成的不便敬请谅解。现已升级完成。感谢您对打码兔的支持。</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>2017-10-01-2017-10-02系统扩容升级&gt;&gt;</strong></span>2017-10-01晚21点系统扩容升级，升级时间估计8小时，会出现部分超时情况，敬请谅解。</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>支付宝充值说明&gt;&gt;</strong></span>支付宝充值：支付宝充值的用户可以直接转账littlelargehuge@163.com（莫红梅），<p style="color:#F00">注意：付款说明直接填写打码兔账号。</p></span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>财付通充值端口关闭&gt;&gt;</strong></span>财付通充值端口关闭，需要充值的开发者，联系人工服务处理。
财付通充值端口关闭，需要使用银行卡充值的用户账号，联系人工服务处理。</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>支付宝充值未到账解决方法&gt;&gt;</strong></span>登录你的账号到<a href="http://v3.dama2.com/user/payproblem" style="color:#F00">http://v3.dama2.com/user/payproblem</a>，填写充值的支付宝交易号和金额，会自动充值到你登录的账号里面。</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>打码兔官方充值卡淘宝店下架通知&gt;&gt;</strong></span>打码兔官方充值卡淘宝店下架，正在处理中。请要充值的用户，使用支付宝在线充值</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>新版网页添加自主找回密码功能&gt;&gt;</strong></span>各位会员朋友，新版网页已在登录的地方添加了自主找回密码功能，如果您的邮箱填写无误，可以通过邮箱找回密码啦</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>打码兔网页版全新升级&gt;&gt;</strong></span>打码兔网页已升级为V3版，欢迎大家体验</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>题分下调通知&gt;&gt;</strong></span>2015-03-17 9点，四位英文数字混合类型，由原来的11题分下调为10题分；计算题由原来的20题分下调为15题分。感谢您一如既往地支持打码兔。</span></div><div class='index-announ'><span class='announ-content'><span class='announ-title'><strong>广大会员朋友请注意&gt;&gt;</strong></span>近期有人冒充打码兔的客服人员进行诈骗活动，在此我们郑重通知大家，打码兔的客服人员不会以任何的方式向用户索取密码，请大家警惕！！</span></div><div class='index-announ'><span class='announ-content'>打码兔安全功能升级：为了保障用户利益，兔子新增“新软件使用通知”功能。当您使用您的打码兔账号，在从未使用过的软件上登陆时，将会收到由打码兔免费发出的短信或邮件。如非你本人操作使用打码兔账号，收到消息后，请立即登陆打码兔官网，一键禁止该软件使用您的题分并同时修改您的账号密码。</span></div><div class='index-announ'><span class='announ-content'><A href="http://www.dama2.com/" target=_blank>答题VIP中心已经开放，最高充值赠送达45%！</A></span></div></div><div class="right-bottom"></div> --><div class="right-top">参考信息</div><div class="right-middle"><a href="http://wiki.dama2.com/index.php?n=ApiDoc.Pricedesc" target="_blank">代答题价格表</a><br/><a href="http://wiki.dama2.com/index.php?n=ApiDoc.ErrDef" target="_blank">常见错误代码表</a><br/><a href="/index/introduce" alt="开发者接入详情">开发者接入详情</a><br/></div><div class="right-bottom"></div><div class="right-top">调用接口</div><div class="right-middle"><p style='font-size:12px;line-height:12px;'><a href='http://dama2.com/download/sdk/dama2_sdk_dll.zip'>DLL下载</a> (更新时间:2013/7/8)

                <p><p style='font-size:12px;line-height:12px;'><a href='http://www.dama2.com/download/sdk/dama2_sdk_java.zip'>DLL(JAVA)下载</a> (更新时间:2013/7/8)

                <p><p style='font-size:12px;line-height:12px;'><a href='http://www.dama2.com/download/sdk/dama2_sdk_anjian.zip '>DLL(按键)下载</a> (更新时间:2013/7/8)

                <p><p style='font-size:12px;line-height:12px;'><a href='http://www.dama2.com/download/sdk/dama2_sdk_com.zip'>COM下载</a> (更新时间:2013/7/8)

                <p></div><div class="right-bottom"></div></div></div><style>
    .upgrade-bg {
        background: url('/Public/images/upgrade/dark-bg.png');
        height: 120px;
        width: 100%;
        position: fixed;
        bottom: 0;
    }

    .upgrade-wrapper {
        width: 996px;
        margin: 0 auto;
    }

    .upgrade-wrapper > div {
        display: inline-block;
    }

    .upgrade-img {
        /*position: absolute;*/
        margin-top: -30px;
        padding-left: 20px;
        padding-right: 20px;
    }

    .upgrade-text {
        position: relative;
        top: -15px;
    }

    .upgrade-text h2, .upgrade-text h3 {
        color: #fff;
        font-family: SimHei, sans-serif;
        letter-spacing: 2px;
        font-weight: 100;
    }

    .upgrade-text h2 {
        font-size: 20px;
    }

    .upgrade-text h3 {
        font-size: 14px;
        color: #ccc;
    }

    .upgradeBtn {
        position: relative;
        top: -18px;
        padding: 0 80px;
        cursor: pointer;
    }

    .upgradeClose {
        position: relative;
        top: -25px;
        padding-left: 60px;
        cursor: pointer;
    }
</style><script id="upgradeTpl" type="text/html"><div id="upgradeTips" class="upgrade-bg"><div class="upgrade-wrapper"><div class="upgrade-img"><img src="/Public/images/upgrade/v3-logo.png" alt="打码兔V3"/></div><div class="upgrade-text"><h2>
                    打码兔V3新版
                </h2><h3>打码兔邀请您升级新版，以便为您提供更好更便捷的服务</h3></div><div class="upgrade-action"><img class="upgradeBtn" src="/Public/images/upgrade/upgradeBtn.png" alt="立即升级"/><img class="upgradeClose" src="/Public/images/upgrade/closeBtn.png" alt="关闭"/></div></div></div></script><script>
    upgrade();

    function upgrade() {
        var html = $('#upgradeTpl').html();
        $('body').append(html);
        $(document)
            .on('click', '.upgradeBtn', function (e) {
                console.log(e);
                $.cookie('dm2version', 'v3', {expires: 999, path: '/'});
                location.href = "http://v3.dama2.com/";
            })
            .on('click', '.upgradeClose', function (e) {
                console.log(e);
                $('#upgradeTips').hide();
            });
    }
 

    $(function() {
        var script = document.createElement("script");
        script.setAttribute("type", "text/javascript");
        script.setAttribute("src", "http://wpa.b.qq.com/cgi/wpa.php?key=XzkzODA0MzQ5NV8xNzc0ODBfNDAwNjY1MzUxNV8");
        var container = document.getElementById("D_QQ");
        container.appendChild(script);


        $(document).on('click', '#qq', function () {
            var iframes = document.getElementsByTagName('iframe');
            for (var i in iframes) {
                try {
                    if ((function (i) {
                        var btn = iframes[i].contentWindow.document.getElementById('launchBtn');
                        if (btn) {
                            btn.click();
                            return true
                        }
                        return false
                    })(i)) {
                        break;
                    }
                }catch (e) {
                    console.log(e);
                }
            }
        });
    })
</script></div><div class="footer"><div class='flink'>		友情链接: 		<a href='http://www.dama2.com' target='_blank'>远程代答</a> |		<a href='http://www.dama2.com' target='_blank'>人工代答</a> |		<a href='http://www.dama2.com' target='_blank'>远程答题</a> |		<a href='http://www.dama2.com' target='_blank'>验证码识别</a> |		<a href='http://www.bccn.net' target='_blank'>编程中国</a> |		<a href='http://www.84zcb.com/' target='_blank'>注册宝</a> |		<a href='http://www.qixing666.com' target='_blank'>七星辅助</a> | 		<a href='http://www.etuan.com' target='_blank'>站长团购</a> |		<a href="http://www.seo60.com" target='_blank'>网络营销软件</a>|		<a href="http://www.shjmpt.com:8000" target='_blank'>神话接码</a><!-- <a href="/index/more_link" target='_blank'>更多...</a> --></div><img title="" alt="" src="/Public/images/footer_link_07.jpg"></a><img title="" alt="" src="/Public/images/footer_link_09.jpg"></a><img title="" alt="" src="/Public/images/footer_link_11.jpg"></a><img title="" alt="" src="/Public/images/footer_link_15.jpg"></a><img title="" alt="" src="/Public/images/footer_link_17.jpg"></a><img title="" alt="" src="/Public/images/footer_link_19.jpg"></a><img title="" alt="" src="/Public/images/footer_link_21.jpg"></a><img title="" alt="" src="/Public/images/footer_link_23.jpg"></a><img title="网上交易保障中心" alt="网上交易保障中心" src="/Public/images/footer_link_25.jpg"></a><img title="可靠网站示范单位" alt="可靠网站示范单位" src="/Public/images/footer_link_27.jpg"></a><img title="360可信网站" alt="360可信网站" src="/Public/images/footer_link_29.jpg"></a><script id="ebsgovicon" src="http://szcert.ebs.org.cn/govicon.js?id=de0efc02-3563-44b1-bf92-fdd05a775631&width=30&height=42&type=1" type="text/javascript" charset="utf-8"></script><br/><div>打码兔是全球领先的验证码识别平台，旨在为广大开发商，网民，盲人等有需要的人士提供周到、准确、快速的验证码识别远程代答题服务。	</div><div>免责声明：打码兔仅为残障人士提供验证码识别服务，并不针对任何网站或个人。所有验证码图片，均由用户或软件商上传。如有不妥，请联系客服，打码兔对此不承担任何保证责任</div><div>地址：深圳市罗湖区泥岗西路鸿颖大厦</div><img src="/Public/images/400.gif" /><br/>	Copyright &copy; 2013 <a href="http://www.dama2.com/">SMY, Inc</a> All rights reserved.  <a href="http://www.miitbeian.gov.cn/" target="_blank">粤ICP备12093063号-1</a><script src="http://s17.cnzz.com/stat.php?id=5040754&web_id=5040754" language="JavaScript"></script></div><div id="scrollTop" class="scroll-top"></div><script type="text/javascript">$("#scrollTop").click(function(){$("html,body").animate({scrollTop:0});});$(window).scroll(function(){if($(window).scrollTop() > 100){$("#scrollTop").fadeIn();}else{$("#scrollTop").fadeOut();}});</script><script type="text/javascript">var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fc072c2327d3860ae8129341dad375832' type='text/javascript'%3E%3C/script%3E"));</script></body></html><!--<script id="ebsgovicon" src="http://szcert.ebs.org.cn/govicon.js?id=36bd9e2b-f4b7-48c6-9266-53c05ba36c09&width=36&height=50&type=1" type="text/javascript" charset="utf-8"></script>-->