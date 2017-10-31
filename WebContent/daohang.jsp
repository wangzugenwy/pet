<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        body, html {width: 100%;height: 100%; margin:0;font-family:"微软雅黑";}
        #l-map{height: 220px;width:100%;}
        #r-result,#r-result table{width:100%;}
        .nav { width: 100%; height: 2em; line-height: 2em; background: #EDEDED; border: 1px solid #ADADAD;}
        .nav .nav-inner{ width: 30%; margin-left: 35%;}
        .nav .nav-sub { float: left; width: 33%;}
        .nav .nav-sub a { text-decoration: none; }
        .nav .nav-sub a i { display: inline-block; background: url("http://webmap1.map.bdstatic.com/wolfman/static/common/images/ui3/mo_banner_ba37b5d.png")}
        .nav .nav-sub a.bus i { background-position: -1px -192px; position: relative; top: 2px; width: 13px; height: 16px;}
        .nav .nav-sub a.driver i { background-position: -29px -194px; width: 15px; height: 14px;}
        .nav .nav-sub a.walk i { background-position: -102px -189px; width: 16px; height: 18px;}
        .nav .nav-sub a.bus.cur i { background-position: -15px -192px; }
        .nav .nav-sub a.driver.cur i { background-position: -45px -194px; }
        .nav .nav-sub a.walk.cur i { background-position: -120px -189px;}
        .hide { display: none;}
        input { font-family: "micrsoft yahei"; width: 80%; height: 2em; font-size: 1em; line-height: 2em; border: 0px; outline: 0px; padding: .2em 1em; margin: 0em 10%;}
        .btn-group { width: 100%; border-top: 1px solid #DDD; border-bottom: 2px solid #DDD;}
        button {width: 32%; text-align: center; border: 0; border-radius: 0; background-color: inherit; height: 44px; line-height: 44px; font-size: 15px;}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=FbzOyQ4YujPrZsxiQKoB07aB"></script>
    <script type="text/javascript" src="http://libs.baidu.com/jquery/1.8.2/jquery.min.js"></script>
    <title>导航示例</title>
</head>
<body>
    <div id="search">
        <input type="text" id="start" placeholder="正在定位您的位置..." style="border-bottom: 1px solid #DDD; " />
        <input type="text" id="end" value="汽车西站" readonly="true" />
        <input type="hidden" id="start_point" value=""/>
        <input type="hidden" id="end_point" value="112.918571,28.214124"/>
        <input type="hidden" id="start_location" value=""/>
        <div class="btn-group">
            <button id="bus-search">公交</button>
            <button id="driver-search">驾车</button>
            <button id="walk-search">步行</button>
        </div>
    </div>
    <div id="showMap" class="hide">
        <div class="nav">
            <div class="nav-inner">
                <div class="nav-sub"><a href="#" class="bus"><i></i></a></div>
                <div class="nav-sub"><a href="#" class="driver cur"><i></i></a></div>
                <div class="nav-sub"><a href="#" class="walk"><i></i></a></div>
            </div>
            <!-- <a href="javascript:;" id="reLocation">重新导航</a> -->
        </div>
        <div id="l-map"></div>
        <div id="r-result"></div>
    </div>
 
<script type="text/javascript">
 
$(function(){
 
    var ep = $("#end_point").val().split(",");
    var map = new BMap.Map("l-map");
    var point = new BMap.Point(ep[0], ep[1]);
    map.centerAndZoom(point, 16);
 
    // 定位对象
    var geoc = new BMap.Geocoder();
    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(function(r){
        if(this.getStatus() == BMAP_STATUS_SUCCESS){
            //var mk = new BMap.Marker(r.point);
            //map.addOverlay(mk);
            //map.panTo(r.point);
            $("#start_point").val(r.point.lng+','+r.point.lat);
            setLocation(r.point);
            showMap();
 
        }else {
            $("#start").attr("placeholder","请输入您的当前位置")
            alert('无法定位到您的当前位置，导航失败，请手动输入您的当前位置！'+this.getStatus());
        }
    },{enableHighAccuracy: true});
 
    $(".nav .nav-sub a").click(function(){
        $(".nav .nav-sub a").removeClass('cur');
        $(this).addClass('cur');
        searchRoute();
    })
 
    $("#reLocation").click(function(){
        reLocation();
    });
 
    $("#bus-search,#driver-search,#walk-search").click(function(){
        var id = $(this).attr("id");
        $(".nav .nav-sub a").removeClass('cur');
        if(id == "bus-search"){
            $(".nav .nav-sub a.bus").addClass('cur');
        }else if(id == "driver-search"){
            $(".nav .nav-sub a.driver").addClass('cur');
        }else if(id == "walk-search"){
            $(".nav .nav-sub a.walk").addClass('cur');
        }
        showMap();
    })
 
    function reLocation(){
        $("#search").show();
        $("#showMap").hide();
        map = new BMap.Map("l-map");
    }
 
    function showMap(){
        $("#srarch").hide();
        $("#showMap").show();
        searchRoute();
    }
 
    function setLocation(point){
        geoc.getLocation(point, function(rs){
            var addComp = rs.addressComponents;
            var result = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
            $("#start").val(result);
            $("#start_location").val(result);
            searchRoute();
        });
    }
 
    function searchRoute(s_, e_){
        map = new BMap.Map("l-map");
        var cur = $(".nav .nav-sub a.cur");
        var type = "";
 
        if(cur.hasClass('bus')){
            type = "bus";
        }else if(cur.hasClass('driver')){
            type = "driver";
        }else if(cur.hasClass('walk')){
            type = "walk";
        }else{
            type = "driver";
        }
 
        var s_;
        var e_;
 
        var sl = $("#start_location").val();
        var s = $("#start").val();
        var sp = $("#start_point").val();
        var e = $("#end").val();
        var ep = $("#end_point").val();
 
        if(s != sl){// 如果用户修改了地址（与定位的位置不一致）则使用地址搜索
            s_ = s;
            e_ = e;
        }else if(sp){// 否则使用坐标搜索
            var ps = sp.split(",");
            var pe = ep.split(",");
            s_ = new BMap.Point(ps[0], ps[1]);
            e_ = new BMap.Point(pe[0], pe[1]);
        }
 
        if(type == "bus"){
            var transit = new BMap.TransitRoute(map, {renderOptions: {map: map, panel: "r-result", autoViewport: true}});
            transit.search(s_, e_);
        }else if(type == "driver"){
            var driving = new BMap.DrivingRoute(map, {renderOptions: {map: map, panel: "r-result", autoViewport: true}});
            driving.search(s_, e_);
        }else if(type == "walk"){
            var walking = new BMap.WalkingRoute(map, {renderOptions: {map: map, panel: "r-result", autoViewport: true}});
            walking.search(s_, e_);
        }
    }
})
 
</script>

</body>
</html>