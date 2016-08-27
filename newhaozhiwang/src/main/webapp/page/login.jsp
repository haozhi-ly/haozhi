<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html class="">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="renderer" content="webkit">
<meta name="baidu-site-verification" content="XN2OVFQdUg">
<title>登录 - 好知网-重拾学习乐趣-Powered By Howzhi</title>
<meta name="keywords" content="免费教程 在线教育  在线学习  知识分享 教程 视频教程 视频教学  网络教学  自学教程 摄影教程 折纸教程 编程教程  电脑教程  健身教程  ps教程  公开课">
<meta name="description" content="好知网是一个综合性在线学习平台。这里有大量的在线课程，课程涵盖计算机知识，企业管理，摄影，photoshop，职业技能，运动、外语、美食，时尚，手工艺，公开课，职业资格考试等。">
<meta content="d2520236d83ce9c107a7d479c774393ac25269d1" name="csrf-token">
<meta content="0" name="is-login">
<meta content="1" name="is-open">
<link href="http://f1.howzhi.com/system/2016/03-31/113613d6a857327741.ico" rel="shortcut icon">
<link href="../css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" media="screen" href="../css/common.css">
<link rel="stylesheet" media="screen" href="../css/font-awesome.css">
<link rel="stylesheet" media="screen" href="../css/es-icon.css">
<link href="../css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/howzhi.css">
<link rel="stylesheet" type="text/css" href="../css/iconfont.css">

<!--[if lt IE 9]>
    <script src="/assets/libs/html5shiv.js?2.6.17.2.3"></script>
  <![endif]-->
<!--[if IE 8]>
    <script src="/assets/libs/respond.min.js?2.6.17.2.3"></script>
  <![endif]-->

<style>
.datetimepicker {
	padding: 4px;
	margin-top: 1px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	direction: ltr
}
.datetimepicker-inline {
	width: 220px
}
.datetimepicker.datetimepicker-rtl {
	direction: rtl
}
.datetimepicker.datetimepicker-rtl table tr td span {
	float: right
}
.datetimepicker-dropdown, .datetimepicker-dropdown-left {
	top: 0;
	left: 0
}
[class*=" datetimepicker-dropdown"]:before {
	content: '';
	display: inline-block;
	border-left: 7px solid transparent;
	border-right: 7px solid transparent;
	border-bottom: 7px solid #ccc;
	border-bottom-color: rgba(0,0,0,.2);
	position: absolute
}
[class*=" datetimepicker-dropdown"]:after {
	content: '';
	display: inline-block;
	border-left: 6px solid transparent;
	border-right: 6px solid transparent;
	border-bottom: 6px solid #fff;
	position: absolute
}
[class*=" datetimepicker-dropdown-top"]:before {
	content: '';
	display: inline-block;
	border-left: 7px solid transparent;
	border-right: 7px solid transparent;
	border-top: 7px solid #ccc;
	border-top-color: rgba(0,0,0,.2);
	border-bottom: 0
}
[class*=" datetimepicker-dropdown-top"]:after {
	content: '';
	display: inline-block;
	border-left: 6px solid transparent;
	border-right: 6px solid transparent;
	border-top: 6px solid #fff;
	border-bottom: 0
}
.datetimepicker-dropdown-bottom-left:before {
	top: -7px;
	right: 6px
}
.datetimepicker-dropdown-bottom-left:after {
	top: -6px;
	right: 7px
}
.datetimepicker-dropdown-bottom-right:before {
	top: -7px;
	left: 6px
}
.datetimepicker-dropdown-bottom-right:after {
	top: -6px;
	left: 7px
}
.datetimepicker-dropdown-top-left:before {
	bottom: -7px;
	right: 6px
}
.datetimepicker-dropdown-top-left:after {
	bottom: -6px;
	right: 7px
}
.datetimepicker-dropdown-top-right:before {
	bottom: -7px;
	left: 6px
}
.datetimepicker-dropdown-top-right:after {
	bottom: -6px;
	left: 7px
}
.datetimepicker>div {
	display: none
}
.datetimepicker.minutes div.datetimepicker-minutes {
	display: block
}
.datetimepicker.hours div.datetimepicker-hours {
	display: block
}
.datetimepicker.days div.datetimepicker-days {
	display: block
}
.datetimepicker.months div.datetimepicker-months {
	display: block
}
.datetimepicker.years div.datetimepicker-years {
	display: block
}
.datetimepicker table {
	margin: 0
}
.datetimepicker td, .datetimepicker th {
	text-align: center;
	width: 20px;
	height: 20px;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	border: 0
}
.table-striped .datetimepicker table tr td, .table-striped .datetimepicker table tr th {
	background-color: transparent
}
.datetimepicker table tr td.minute:hover {
	background: #eee;
	cursor: pointer
}
.datetimepicker table tr td.hour:hover {
	background: #eee;
	cursor: pointer
}
.datetimepicker table tr td.day:hover {
	background: #eee;
	cursor: pointer
}
.datetimepicker table tr td.old, .datetimepicker table tr td.new {
	color: #999
}
.datetimepicker table tr td.disabled, .datetimepicker table tr td.disabled:hover {
	background: 0;
	color: #999;
	cursor: default
}
.datetimepicker table tr td.today, .datetimepicker table tr td.today:hover, .datetimepicker table tr td.today.disabled, .datetimepicker table tr td.today.disabled:hover {
	background-color: #fde19a;
	background-image: -moz-linear-gradient(top, #fdd49a, #fdf59a);
	background-image: -ms-linear-gradient(top, #fdd49a, #fdf59a);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#fdd49a), to(#fdf59a));
	background-image: -webkit-linear-gradient(top, #fdd49a, #fdf59a);
	background-image: -o-linear-gradient(top, #fdd49a, #fdf59a);
	background-image: linear-gradient(top, #fdd49a, #fdf59a);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#fdd49a', endColorstr='#fdf59a', GradientType=0);
	border-color: #fdf59a #fdf59a #fbed50;
	border-color: rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25);
filter:progid:DXImageTransform.Microsoft.gradient(enabled=false)
}
.datetimepicker table tr td.today:hover, .datetimepicker table tr td.today:hover:hover, .datetimepicker table tr td.today.disabled:hover, .datetimepicker table tr td.today.disabled:hover:hover, .datetimepicker table tr td.today:active, .datetimepicker table tr td.today:hover:active, .datetimepicker table tr td.today.disabled:active, .datetimepicker table tr td.today.disabled:hover:active, .datetimepicker table tr td.today.active, .datetimepicker table tr td.today:hover.active, .datetimepicker table tr td.today.disabled.active, .datetimepicker table tr td.today.disabled:hover.active, .datetimepicker table tr td.today.disabled, .datetimepicker table tr td.today:hover.disabled, .datetimepicker table tr td.today.disabled.disabled, .datetimepicker table tr td.today.disabled:hover.disabled, .datetimepicker table tr td.today[disabled], .datetimepicker table tr td.today:hover[disabled], .datetimepicker table tr td.today.disabled[disabled], .datetimepicker table tr td.today.disabled:hover[disabled] {
	background-color: #fdf59a
}
.datetimepicker table tr td.today:active, .datetimepicker table tr td.today:hover:active, .datetimepicker table tr td.today.disabled:active, .datetimepicker table tr td.today.disabled:hover:active, .datetimepicker table tr td.today.active, .datetimepicker table tr td.today:hover.active, .datetimepicker table tr td.today.disabled.active, .datetimepicker table tr td.today.disabled:hover.active {
	background-color: #fbf069 \9
}
.datetimepicker table tr td.active, .datetimepicker table tr td.active:hover, .datetimepicker table tr td.active.disabled, .datetimepicker table tr td.active.disabled:hover {
	background-color: #006dcc;
	background-image: -moz-linear-gradient(top, #08c, #04c);
	background-image: -ms-linear-gradient(top, #08c, #04c);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#08c), to(#04c));
	background-image: -webkit-linear-gradient(top, #08c, #04c);
	background-image: -o-linear-gradient(top, #08c, #04c);
	background-image: linear-gradient(top, #08c, #04c);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0088cc', endColorstr='#0044cc', GradientType=0);
	border-color: #04c #04c #002a80;
	border-color: rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25);
filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);
	color: #fff;
	text-shadow: 0 -1px 0 rgba(0,0,0,.25)
}
.datetimepicker table tr td.active:hover, .datetimepicker table tr td.active:hover:hover, .datetimepicker table tr td.active.disabled:hover, .datetimepicker table tr td.active.disabled:hover:hover, .datetimepicker table tr td.active:active, .datetimepicker table tr td.active:hover:active, .datetimepicker table tr td.active.disabled:active, .datetimepicker table tr td.active.disabled:hover:active, .datetimepicker table tr td.active.active, .datetimepicker table tr td.active:hover.active, .datetimepicker table tr td.active.disabled.active, .datetimepicker table tr td.active.disabled:hover.active, .datetimepicker table tr td.active.disabled, .datetimepicker table tr td.active:hover.disabled, .datetimepicker table tr td.active.disabled.disabled, .datetimepicker table tr td.active.disabled:hover.disabled, .datetimepicker table tr td.active[disabled], .datetimepicker table tr td.active:hover[disabled], .datetimepicker table tr td.active.disabled[disabled], .datetimepicker table tr td.active.disabled:hover[disabled] {
	background-color: #04c
}
.datetimepicker table tr td.active:active, .datetimepicker table tr td.active:hover:active, .datetimepicker table tr td.active.disabled:active, .datetimepicker table tr td.active.disabled:hover:active, .datetimepicker table tr td.active.active, .datetimepicker table tr td.active:hover.active, .datetimepicker table tr td.active.disabled.active, .datetimepicker table tr td.active.disabled:hover.active {
	background-color: #039 \9
}
.datetimepicker table tr td span {
	display: block;
	width: 23%;
	height: 54px;
	line-height: 54px;
	float: left;
	margin: 1%;
	cursor: pointer;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px
}
.datetimepicker .datetimepicker-hours span {
	height: 26px;
	line-height: 26px
}
.datetimepicker .datetimepicker-hours table tr td span.hour_am, .datetimepicker .datetimepicker-hours table tr td span.hour_pm {
	width: 14.6%
}
.datetimepicker .datetimepicker-hours fieldset legend, .datetimepicker .datetimepicker-minutes fieldset legend {
	margin-bottom: inherit;
	line-height: 30px
}
.datetimepicker .datetimepicker-minutes span {
	height: 26px;
	line-height: 26px
}
.datetimepicker table tr td span:hover {
	background: #eee
}
.datetimepicker table tr td span.disabled, .datetimepicker table tr td span.disabled:hover {
	background: 0;
	color: #999;
	cursor: default
}
.datetimepicker table tr td span.active, .datetimepicker table tr td span.active:hover, .datetimepicker table tr td span.active.disabled, .datetimepicker table tr td span.active.disabled:hover {
	background-color: #006dcc;
	background-image: -moz-linear-gradient(top, #08c, #04c);
	background-image: -ms-linear-gradient(top, #08c, #04c);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#08c), to(#04c));
	background-image: -webkit-linear-gradient(top, #08c, #04c);
	background-image: -o-linear-gradient(top, #08c, #04c);
	background-image: linear-gradient(top, #08c, #04c);
	background-repeat: repeat-x;
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0088cc', endColorstr='#0044cc', GradientType=0);
	border-color: #04c #04c #002a80;
	border-color: rgba(0,0,0,.1) rgba(0,0,0,.1) rgba(0,0,0,.25);
filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);
	color: #fff;
	text-shadow: 0 -1px 0 rgba(0,0,0,.25)
}
.datetimepicker table tr td span.active:hover, .datetimepicker table tr td span.active:hover:hover, .datetimepicker table tr td span.active.disabled:hover, .datetimepicker table tr td span.active.disabled:hover:hover, .datetimepicker table tr td span.active:active, .datetimepicker table tr td span.active:hover:active, .datetimepicker table tr td span.active.disabled:active, .datetimepicker table tr td span.active.disabled:hover:active, .datetimepicker table tr td span.active.active, .datetimepicker table tr td span.active:hover.active, .datetimepicker table tr td span.active.disabled.active, .datetimepicker table tr td span.active.disabled:hover.active, .datetimepicker table tr td span.active.disabled, .datetimepicker table tr td span.active:hover.disabled, .datetimepicker table tr td span.active.disabled.disabled, .datetimepicker table tr td span.active.disabled:hover.disabled, .datetimepicker table tr td span.active[disabled], .datetimepicker table tr td span.active:hover[disabled], .datetimepicker table tr td span.active.disabled[disabled], .datetimepicker table tr td span.active.disabled:hover[disabled] {
	background-color: #04c
}
.datetimepicker table tr td span.active:active, .datetimepicker table tr td span.active:hover:active, .datetimepicker table tr td span.active.disabled:active, .datetimepicker table tr td span.active.disabled:hover:active, .datetimepicker table tr td span.active.active, .datetimepicker table tr td span.active:hover.active, .datetimepicker table tr td span.active.disabled.active, .datetimepicker table tr td span.active.disabled:hover.active {
	background-color: #039 \9
}
.datetimepicker table tr td span.old {
	color: #999
}
.datetimepicker th.switch {
	width: 145px
}
.datetimepicker thead tr:first-child th, .datetimepicker tfoot tr:first-child th {
	cursor: pointer
}
.datetimepicker thead tr:first-child th:hover, .datetimepicker tfoot tr:first-child th:hover {
	background: #eee
}
.input-append.date .add-on i, .input-prepend.date .add-on i {
	cursor: pointer;
	width: 14px;
	height: 14px
}
body.modal-open .datetimepicker {
	z-index: 1200 !important;
}
</style>
<style class="firebugResetStyles" type="text/css" charset="utf-8">
/* See license.txt for terms of usage */

/** reset styling **/

.firebugResetStyles {

    z-index: 2147483646 !important;

    top: 0 !important;

    left: 0 !important;

    display: block !important;

    border: 0 none !important;

    margin: 0 !important;

    padding: 0 !important;

    outline: 0 !important;

    min-width: 0 !important;

    max-width: none !important;

    min-height: 0 !important;

    max-height: none !important;

    position: fixed !important;

    transform: rotate(0deg) !important;

    transform-origin: 50% 50% !important;

    border-radius: 0 !important;

    box-shadow: none !important;

    background: transparent none !important;

    pointer-events: none !important;

    white-space: normal !important;

}

style.firebugResetStyles {

    display: none !important;

}



.firebugBlockBackgroundColor {

    background-color: transparent !important;

}



.firebugResetStyles:before, .firebugResetStyles:after {

    content: "" !important;

}

/**actual styling to be modified by firebug theme**/

.firebugCanvas {

    display: none !important;

}



/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

.firebugLayoutBox {

    width: auto !important;

    position: static !important;

}



.firebugLayoutBoxOffset {

    opacity: 0.8 !important;

    position: fixed !important;

}



.firebugLayoutLine {

    opacity: 0.4 !important;

    background-color: #000000 !important;

}



.firebugLayoutLineLeft, .firebugLayoutLineRight {

    width: 1px !important;

    height: 100% !important;

}



.firebugLayoutLineTop, .firebugLayoutLineBottom {

    width: 100% !important;

    height: 1px !important;

}



.firebugLayoutLineTop {

    margin-top: -1px !important;

    border-top: 1px solid #999999 !important;

}



.firebugLayoutLineRight {

    border-right: 1px solid #999999 !important;

}



.firebugLayoutLineBottom {

    border-bottom: 1px solid #999999 !important;

}



.firebugLayoutLineLeft {

    margin-left: -1px !important;

    border-left: 1px solid #999999 !important;

}



/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

.firebugLayoutBoxParent {

    border-top: 0 none !important;

    border-right: 1px dashed #E00 !important;

    border-bottom: 1px dashed #E00 !important;

    border-left: 0 none !important;

    position: fixed !important;

    width: auto !important;

}



.firebugRuler{

    position: absolute !important;

}



.firebugRulerH {

    top: -15px !important;

    left: 0 !important;

    width: 100% !important;

    height: 14px !important;

    background: url("data:image/png,%89PNG%0D%0A%1A%0A%00%00%00%0DIHDR%00%00%13%88%00%00%00%0E%08%02%00%00%00L%25a%0A%00%00%00%04gAMA%00%00%D6%D8%D4OX2%00%00%00%19tEXtSoftware%00Adobe%20ImageReadyq%C9e%3C%00%00%04%F8IDATx%DA%EC%DD%D1n%E2%3A%00E%D1%80%F8%FF%EF%E2%AF2%95%D0D4%0E%C1%14%B0%8Fa-%E9%3E%CC%9C%87n%B9%81%A6W0%1C%A6i%9A%E7y%0As8%1CT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AATE9%FE%FCw%3E%9F%AF%2B%2F%BA%97%FDT%1D~K(%5C%9D%D5%EA%1B%5C%86%B5%A9%BDU%B5y%80%ED%AB*%03%FAV9%AB%E1%CEj%E7%82%EF%FB%18%BC%AEJ8%AB%FA'%D2%BEU9%D7U%ECc0%E1%A2r%5DynwVi%CFW%7F%BB%17%7Dy%EACU%CD%0E%F0%FA%3BX%FEbV%FEM%9B%2B%AD%BE%AA%E5%95v%AB%AA%E3E5%DCu%15rV9%07%B5%7F%B5w%FCm%BA%BE%AA%FBY%3D%14%F0%EE%C7%60%0EU%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5JU%88%D3%F5%1F%AE%DF%3B%1B%F2%3E%DAUCNa%F92%D02%AC%7Dm%F9%3A%D4%F2%8B6%AE*%BF%5C%C2Ym~9g5%D0Y%95%17%7C%C8c%B0%7C%18%26%9CU%CD%13i%F7%AA%90%B3Z%7D%95%B4%C7%60%E6E%B5%BC%05%B4%FBY%95U%9E%DB%FD%1C%FC%E0%9F%83%7F%BE%17%7DkjMU%E3%03%AC%7CWj%DF%83%9An%BCG%AE%F1%95%96yQ%0Dq%5Dy%00%3Et%B5'%FC6%5DS%95pV%95%01%81%FF'%07%00%00%00%00%00%00%00%00%00%F8x%C7%F0%BE%9COp%5D%C9%7C%AD%E7%E6%EBV%FB%1E%E0(%07%E5%AC%C6%3A%ABi%9C%8F%C6%0E9%AB%C0'%D2%8E%9F%F99%D0E%B5%99%14%F5%0D%CD%7F%24%C6%DEH%B8%E9rV%DFs%DB%D0%F7%00k%FE%1D%84%84%83J%B8%E3%BA%FB%EF%20%84%1C%D7%AD%B0%8E%D7U%C8Y%05%1E%D4t%EF%AD%95Q%BF8w%BF%E9%0A%BF%EB%03%00%00%00%00%00%00%00%00%00%B8vJ%8E%BB%F5%B1u%8Cx%80%E1o%5E%CA9%AB%CB%CB%8E%03%DF%1D%B7T%25%9C%D5(%EFJM8%AB%CC'%D2%B2*%A4s%E7c6%FB%3E%FA%A2%1E%80~%0E%3E%DA%10x%5D%95Uig%15u%15%ED%7C%14%B6%87%A1%3B%FCo8%A8%D8o%D3%ADO%01%EDx%83%1A~%1B%9FpP%A3%DC%C6'%9C%95gK%00%00%00%00%00%00%00%00%00%20%D9%C9%11%D0%C0%40%AF%3F%EE%EE%92%94%D6%16X%B5%BCMH%15%2F%BF%D4%A7%C87%F1%8E%F2%81%AE%AAvzr%DA2%ABV%17%7C%E63%83%E7I%DC%C6%0Bs%1B%EF6%1E%00%00%00%00%00%00%00%00%00%80cr%9CW%FF%7F%C6%01%0E%F1%CE%A5%84%B3%CA%BC%E0%CB%AA%84%CE%F9%BF)%EC%13%08WU%AE%AB%B1%AE%2BO%EC%8E%CBYe%FE%8CN%ABr%5Dy%60~%CFA%0D%F4%AE%D4%BE%C75%CA%EDVB%EA(%B7%F1%09g%E5%D9%12%00%00%00%00%00%00%00%00%00H%F6%EB%13S%E7y%5E%5E%FB%98%F0%22%D1%B2'%A7%F0%92%B1%BC%24z3%AC%7Dm%60%D5%92%B4%7CEUO%5E%F0%AA*%3BU%B9%AE%3E%A0j%94%07%A0%C7%A0%AB%FD%B5%3F%A0%F7%03T%3Dy%D7%F7%D6%D4%C0%AAU%D2%E6%DFt%3F%A8%CC%AA%F2%86%B9%D7%F5%1F%18%E6%01%F8%CC%D5%9E%F0%F3z%88%AA%90%EF%20%00%00%00%00%00%00%00%00%00%C0%A6%D3%EA%CFi%AFb%2C%7BB%0A%2B%C3%1A%D7%06V%D5%07%A8r%5D%3D%D9%A6%CAu%F5%25%CF%A2%99%97zNX%60%95%AB%5DUZ%D5%FBR%03%AB%1C%D4k%9F%3F%BB%5C%FF%81a%AE%AB'%7F%F3%EA%FE%F3z%94%AA%D8%DF%5B%01%00%00%00%00%00%00%00%00%00%8E%FB%F3%F2%B1%1B%8DWU%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*UiU%C7%BBe%E7%F3%B9%CB%AAJ%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5*%AAj%FD%C6%D4%5Eo%90%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5%86%AF%1B%9F%98%DA%EBm%BBV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%AD%D6%E4%F58%01%00%00%00%00%00%00%00%00%00%00%00%00%00%40%85%7F%02%0C%008%C2%D0H%16j%8FX%00%00%00%00IEND%AEB%60%82") repeat-x !important;

    border-top: 1px solid #BBBBBB !important;

    border-right: 1px dashed #BBBBBB !important;

    border-bottom: 1px solid #000000 !important;

}



.firebugRulerV {

    top: 0 !important;

    left: -15px !important;

    width: 14px !important;

    height: 100% !important;

    background: url("data:image/png,%89PNG%0D%0A%1A%0A%00%00%00%0DIHDR%00%00%00%0E%00%00%13%88%08%02%00%00%00%0E%F5%CB%10%00%00%00%04gAMA%00%00%D6%D8%D4OX2%00%00%00%19tEXtSoftware%00Adobe%20ImageReadyq%C9e%3C%00%00%06~IDATx%DA%EC%DD%D1v%A20%14%40Qt%F1%FF%FF%E4%97%D9%07%3BT%19%92%DC%40(%90%EEy%9A5%CB%B6%E8%F6%9Ac%A4%CC0%84%FF%DC%9E%CF%E7%E3%F1%88%DE4%F8%5D%C7%9F%2F%BA%DD%5E%7FI%7D%F18%DDn%BA%C5%FB%DF%97%BFk%F2%10%FF%FD%B4%F2M%A7%FB%FD%FD%B3%22%07p%8F%3F%AE%E3%F4S%8A%8F%40%EEq%9D%BE8D%F0%0EY%A1Uq%B7%EA%1F%81%88V%E8X%3F%B4%CEy%B7h%D1%A2E%EBohU%FC%D9%AF2fO%8BBeD%BE%F7X%0C%97%A4%D6b7%2Ck%A5%12%E3%9B%60v%B7r%C7%1AI%8C%BD%2B%23r%00c0%B2v%9B%AD%CA%26%0C%1Ek%05A%FD%93%D0%2B%A1u%8B%16-%95q%5Ce%DCSO%8E%E4M%23%8B%F7%C2%FE%40%BB%BD%8C%FC%8A%B5V%EBu%40%F9%3B%A72%FA%AE%8C%D4%01%CC%B5%DA%13%9CB%AB%E2I%18%24%B0n%A9%0CZ*Ce%9C%A22%8E%D8NJ%1E%EB%FF%8F%AE%CAP%19*%C3%BAEKe%AC%D1%AAX%8C*%DEH%8F%C5W%A1e%AD%D4%B7%5C%5B%19%C5%DB%0D%EF%9F%19%1D%7B%5E%86%BD%0C%95%A12%AC%5B*%83%96%CAP%19%F62T%86%CAP%19*%83%96%CA%B8Xe%BC%FE)T%19%A1%17xg%7F%DA%CBP%19*%C3%BA%A52T%86%CAP%19%F62T%86%CA%B0n%A9%0CZ%1DV%C6%3D%F3%FCH%DE%B4%B8~%7F%5CZc%F1%D6%1F%AF%84%F9%0F6%E6%EBVt9%0E~%BEr%AF%23%B0%97%A12T%86%CAP%19%B4T%86%CA%B8Re%D8%CBP%19*%C3%BA%A52huX%19%AE%CA%E5%BC%0C%7B%19*CeX%B7h%A9%0C%95%E1%BC%0C%7B%19*CeX%B7T%06%AD%CB%5E%95%2B%BF.%8F%C5%97%D5%E4%7B%EE%82%D6%FB%CF-%9C%FD%B9%CF%3By%7B%19%F62T%86%CA%B0n%D1R%19*%A3%D3%CA%B0%97%A12T%86uKe%D0%EA%B02*%3F1%99%5DB%2B%A4%B5%F8%3A%7C%BA%2B%8Co%7D%5C%EDe%A8%0C%95a%DDR%19%B4T%C66%82fA%B2%ED%DA%9FC%FC%17GZ%06%C9%E1%B3%E5%2C%1A%9FoiB%EB%96%CA%A0%D5qe4%7B%7D%FD%85%F7%5B%ED_%E0s%07%F0k%951%ECr%0D%B5C%D7-g%D1%A8%0C%EB%96%CA%A0%A52T%C6)*%C3%5E%86%CAP%19%D6-%95A%EB*%95q%F8%BB%E3%F9%AB%F6%E21%ACZ%B7%22%B7%9B%3F%02%85%CB%A2%5B%B7%BA%5E%B7%9C%97%E1%BC%0C%EB%16-%95%A12z%AC%0C%BFc%A22T%86uKe%D0%EA%B02V%DD%AD%8A%2B%8CWhe%5E%AF%CF%F5%3B%26%CE%CBh%5C%19%CE%CB%B0%F3%A4%095%A1%CAP%19*Ce%A8%0C%3BO*Ce%A8%0C%95%A12%3A%AD%8C%0A%82%7B%F0v%1F%2FD%A9%5B%9F%EE%EA%26%AF%03%CA%DF9%7B%19*Ce%A8%0C%95%A12T%86%CA%B8Ze%D8%CBP%19*Ce%A8%0C%95%D1ae%EC%F7%89I%E1%B4%D7M%D7P%8BjU%5C%BB%3E%F2%20%D8%CBP%19*Ce%A8%0C%95%A12T%C6%D5*%C3%5E%86%CAP%19*Ce%B4O%07%7B%F0W%7Bw%1C%7C%1A%8C%B3%3B%D1%EE%AA%5C%D6-%EBV%83%80%5E%D0%CA%10%5CU%2BD%E07YU%86%CAP%19*%E3%9A%95%91%D9%A0%C8%AD%5B%EDv%9E%82%FFKOee%E4%8FUe%A8%0C%95%A12T%C6%1F%A9%8C%C8%3D%5B%A5%15%FD%14%22r%E7B%9F%17l%F8%BF%ED%EAf%2B%7F%CF%ECe%D8%CBP%19*Ce%A8%0C%95%E1%93~%7B%19%F62T%86%CAP%19*Ce%A8%0C%E7%13%DA%CBP%19*Ce%A8%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4h%A9%0C%B3E%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4h%A9%0C%B3E%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4%AE%A4%F5%25%C0%00%DE%BF%5C'%0F%DA%B8q%00%00%00%00IEND%AEB%60%82") repeat-y !important;

    border-left: 1px solid #BBBBBB !important;

    border-right: 1px solid #000000 !important;

    border-bottom: 1px dashed #BBBBBB !important;

}



.overflowRulerX > .firebugRulerV {

    left: 0 !important;

}



.overflowRulerY > .firebugRulerH {

    top: 0 !important;

}



/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

.fbProxyElement {

    position: fixed !important;

    pointer-events: auto !important;

}

</style>
</head>
<body class="index">
<header class="header">
  <div class="container">
    <div class="navbar-header pull-left"> <a href="http://www.howzhi.com/" class="navbar-brand"> <img src="../images/logo.png"" class="img-responsive" alt="好知，howzhi.com"> </a>
      <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    <nav class="collapse navbar-collapse pull-left">
      <ul class="nav navbar-nav topmenu">
        <li class="visible-xs"> <a href="http://www.howzhi.com/search?q="><i class="fa fa-search mrm"></i>搜索</a> </li>
        <li class=""> <a href="http://www.howzhi.com/me/">学习中心 </a> </li>
        <li class="nav-hover"> <a href="http://www.howzhi.com/courses">课程 <b class="caret"></b></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="http://www.howzhi.com/channel/photography">摄影课堂</a></li>
            <li><a href="http://www.howzhi.com/channel/creative-design">创意设计</a></li>
            <li><a href="http://www.howzhi.com/channel/music-school">声乐器乐</a></li>
            <li><a href="http://www.howzhi.com/channel/exercise-fitness">运动健身</a></li>
            <li><a href="http://www.howzhi.com/channel/IT-internet">IT互联网</a></li>
            <li><a href="http://www.howzhi.com/channel/interest">兴趣爱好</a></li>
            <li><a href="http://www.howzhi.com/channel/language">语言学习</a></li>
            <li><a href="http://www.howzhi.com/channel/career">职场技能</a></li>
            <li><a href="http://www.howzhi.com/channel/openclass">公开课</a></li>
          </ul>
        </li>
        <li class=""> <a href="http://www.howzhi.com/classroom/poster/list">班级 </a> </li>
        <li class=""> <a href="http://www.howzhi.com/groups/explore">小组 </a> </li>
      </ul>
      <div style="display: block;" class="new-tips hz-triangle hidden-xs"> “我的好知” 正式更名为 “<span class="t-primary">学习中心</span>”
        <div class="colse" id="hz-head-update" data-dismiss="alert">×</div>
        <i class="left"></i> <i class="right"></i> </div>
    </nav>
    <div class="pull-right user-nav clearfix">
      <ul class="nav nav-login">
        <li><a class="color-gray-one" href="http://www.howzhi.com/login?goto=%2F">登录</a></li>
        <li><a href="http://www.howzhi.com/register?goto=%2F">注册</a></li>
        <li class="hidden-xs hzapp hidden-sm"> <a href="http://www.howzhi.com/mobile?static=index-app-click"> <small class="badge"> </small> <i class="hz-icon icon-smartphone"></i> 好知APP </a> </li>
      </ul>
      <form class="navbar-form pull-right hz-search hidden-xs" role="search" action="/search">
        <div class="form-group">
          <div id="search-left" class="pull-left search-left">
            <div class="search-type pull-left">
              <div class="choose">课程<i class="hz-icon icon-keyboardarrowdown"></i></div>
              <ul class="text-center">
                <li data-type="course">课程</li>
                <li data-type="discussion">话题</li>
                <li data-type="user">用户</li>
                <li data-type="group">小组</li>
              </ul>
            </div>
            <input class="form-control js-search" name="q" placeholder="输入要查找的内容" autocomplete="off">
          </div>
          <input name="t" value="course" type="hidden">
          <button class="button fa fa-search" type="submit"></button>
        </div>
      </form>
    </div>
  </div>
</header>
<div class="login">
  <div class="login-box">
    <h1> 登录好知 <a href="javascript:;" class="pull-right js-trun">注册<i class="fa fa-arrow-circle-o-right"></i> </a> </h1>
    <form data-widget-cid="widget-6" novalidate id="login-form" class="form-vertical" method="post" action="/login_check">
      <div class="form-group">
        <label class="control-label" for="login_username">帐号</label>
        <div class="controls">
          <label class="fa-label"> <i class="fa fa-user"></i> </label>
          <input data-explain="" data-widget-cid="widget-7" class="form-control" id="login_username" name="_username" required placeholder="邮箱/手机/用户名" type="text">
          <div class="help-block"></div>
        </div>
      </div>
      <div class="form-group">
        <label class="control-label" for="login_password">密码</label>
        <div class="controls">
          <label class="fa-label"> <i class="fa fa-unlock-alt"></i> </label>
          <input data-explain="" data-widget-cid="widget-8" class="form-control" id="login_password" name="_password" required placeholder="密码" type="password">
          <div class="help-block" style="display:none;"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="controls"> <span class="checkbox mtm ">
          <label>
            <input name="_remember_me" checked="checked" type="checkbox">
            记住密码 </label>
          <a class="pull-right active" href="http://www.howzhi.com/password/reset">忘记密码</a> </span> </div>
        <input class="login-btn btn-primary btn" value="登录" type="submit">
        <div class="social"> 快捷登录 <a href="http://www.howzhi.com/login/bind/weibo?_target_path=%2F" class="social-login-btn"> <i class="hz-icon icon-weibo"></i> </a> <a href="http://www.howzhi.com/login/bind/qq?_target_path=%2F" class="social-login-btn"> <i class="hz-icon icon-qq"></i> </a> <a href="http://www.howzhi.com/login/bind/renren?_target_path=%2F" class="social-login-btn"> <i class="hz-icon icon-renren"></i> </a> <a href="http://www.howzhi.com/login/bind/douban?_target_path=%2F" class="social-login-btn"> <i class="hz-icon icon-gongnengyedouban"></i> </a> <a href="http://www.howzhi.com/login/bind/weixinweb?_target_path=%2F" class="social-login-btn"> <i class="hz-icon icon-weixin"></i> </a> </div>
      </div>
      <input name="_target_path" value="/" type="hidden">
      <input name="_csrf_token" value="d2520236d83ce9c107a7d479c774393ac25269d1" type="hidden">
    </form>
  </div>
  <div class="login-box register">
    <h1> 注册好知账号 <a href="javascript:;" class="pull-right js-trun">登录<i class="glyphicon glyphicon-circle-arrow-right"></i> </a> </h1>
    <form data-widget-cid="widget-0" novalidate id="register-form" class="form-vertical" method="post" action="/register?goto=%2F">
      <div class="form-group mb40">
        <label class="control-label required" for="register_emailOrMobile">常用手机号或邮箱</label>
        <div class="controls">
          <label class="fa-label"> 　　<i class="hz-icon icon-demo25"></i> </label>
          <input data-explain="" data-widget-cid="widget-2" id="register_emailOrMobile" name="emailOrMobile" required class="form-control" data-url="/register/email_or_mobile/check" placeholder="常用手机号或邮箱" type="text">
          <p class="help-block"></p>
        </div>
      </div>
      <div class="form-group mb40">
        <label class="control-label required" for="register_nickname">昵称</label>
        <div class="controls">
          <label class="fa-label"> <i class="hz-icon icon-person"></i> </label>
          <input data-explain="" data-widget-cid="widget-3" id="register_nickname" name="nickname" required class="form-control" data-url="/register/nickname/check" placeholder="请输入昵称" type="text">
          <div class="help-block" style="display:none;"></div>
        </div>
      </div>
      <div class="form-group mb40">
        <label class="control-label required" for="register_password">密码</label>
        <div class="controls">
          <label class="fa-label"> <i class="hz-icon icon-lock"></i> </label>
          <input data-explain="" data-widget-cid="widget-4" id="register_password" name="password" required class="form-control" placeholder="密码" type="password">
          <div class="help-block" style="display:none;"></div>
        </div>
      </div>
      <div class="form-group mb40 captcha_div">
        <label class="control-label required" for="captcha_num">验证码</label>
        <div class="controls row">
          <div class="col-xs-6">
            <input data-explain="" data-widget-cid="widget-1" class="form-control ident" id="captcha_num" name="captcha_num" maxlength="5" placeholder="验证码" required data-url="/register/captcha/check" type="text">
          </div>
          <div class="col-xs-6 ident-img"> <img src="/0.jpg" data-url="/captcha_num/0" id="getcode_numxxx" title="看不清，点击换一张" style="cursor:pointer;" alt="看不清，点击换一张"> </div>
          <div class="help-block" style="display:none;"></div>
        </div>
      </div>
      <div class="form-group mb40 hidden email_mobile_msg">
        <label class="control-label required" for="sms_code">短信验证码</label>
        <div class="controls row">
          <div class="col-xs-6">
            <input class="form-control ident" id="sms_code" name="sms_code" placeholder="短信验证码" required data-url="/edu_cloud/sms_check/sms_registration" type="text">
          </div>
          <div class="col-xs-6"> <a href="#modal" data-toggle="modal" class="btn ident btn-primary btn-lg  form-control  js-sms-send disabled" data-url="/register/captcha/modal" data-sms-url="/edu_cloud/sms_send"> <span id="js-time-left"></span> <span id="js-fetch-btn-text">获取短信验证码</span> </a> </div>
        </div>
      </div>
      <div class="form-group mb40 agren">
        <div class="controls">
          <label>
            <input data-explain="" data-widget-cid="widget-5" id="user_terms" checked="checked" type="checkbox">
            我已阅读并同意<a href="http://www.howzhi.com/userterms" target="_blank">《服务协议》</a> </label>
          <div class="help-block" style="display:none;"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="controls">
          <button type="submit" id="register-btn " data-submiting-text="正在提交" class="login-btn btn-primary btn">注册 </button>
        </div>
      </div>
      <input name="captcha_enabled" value="1" type="hidden">
      <input name="_csrf_token" value="d2520236d83ce9c107a7d479c774393ac25269d1" type="hidden">
      <input name="undefined" value="uke9w" type="hidden">
    </form>
    <div class="social"> 快捷登录： <a href="http://www.howzhi.com/login/bind/weibo?_target_path=%2F" class="social-login-btn"> <i class="hz-icon icon-weibo"></i> </a> <a href="http://www.howzhi.com/login/bind/qq?_target_path=%2F" class="social-login-btn"> <i class="hz-icon icon-qq"></i> </a> <a href="http://www.howzhi.com/login/bind/renren?_target_path=%2F" class="social-login-btn"> <i class="hz-icon icon-renren"></i> </a> <a href="http://www.howzhi.com/login/bind/douban?_target_path=%2F" class="social-login-btn"> <i class="hz-icon icon-gongnengyedouban"></i> </a> <a href="http://www.howzhi.com/login/bind/weixinweb?_target_path=%2F" class="social-login-btn"> <i class="hz-icon icon-weixin"></i> </a> </div>
  </div>
</div>
<footer class="footer">
  <div class="container">
    <div class="row">
      <div class="col-md-4 "> <a href="http://www.howzhi.com/"><img src="/foot-logo.png" alt="好知，知识分享新社区"></a> </div>
      <div class="col-md-4 about"> <span><a href="http://www.howzhi.com/info/about">关于我们</a></span>| <span><a href="http://www.howzhi.com/join/us" target="_blank">加入我们</a></span>| <span><a href="http://www.howzhi.com/daren/" target="_blank">合作申请</a></span>| <span><a href="http://www.howzhi.com/group/feedback">意见反馈</a></span><br>
        <a class="con" href="http://www.miibeian.gov.cn/" target="_blank"> 浙ICP备13006852号-3 </a> </div>
      <div class="col-md-4"> 关注我们： <a href="http://weibo.com/howzhicom"><i class="hz-icon icon-weibo"></i></a> <a class="icon-sns"><i class="hz-icon icon-weixin"></i>
        <div class="sns-popover" style="background:url(&quot;/assets/img/howzhi/weichat.png?2.6.17.2.3&quot;)"> </div>
        </a> <a href="http://user.qzone.qq.com/2485597828/"><i class="hz-icon icon-qq"></i></a> <a href="http://site.douban.com/124522/"><i class="hz-icon icon-gongnengyedouban"></i></a> </div>
    </div>
  </div>
</footer>
<div class="friendlinks">
  <div class="container">
    <div class="content"> <font>友情链接:</font> <a href="http://www.edusoho.com/" target="_blank" class="white">EduSoho开源网络课堂</a> <span>|</span> <a href="http://www.qiqiuyu.com/" target="_blank" class="white">气球鱼学院</a> <span>|</span> <a href="http://hao.360.cn/" target="_blank" class="white">360安全网址导航</a> <span>|</span> <a href="http://www.hao123.com/" target="_blank" class="white">hao123</a> <span>|</span> <a href="http://www.lvse.com/" target="_blank" class="white">绿色网</a> <span>|</span> <a href="http://www.chinaz.com/" target="_blank" class="white">站长之家</a> <span>|</span> <a href="http://www.xker.com/" target="_blank" class="white">新客网</a> <span>|</span> <a href="http://www.talang100.com/" target="_blank" class="white">踏浪100</a> <span>|</span> <a href="http://www.maiziedu.com/" target="_blank" class="white">麦子学院</a> <br>
    </div>
    Powered by <a href="http://www.edusoho.com/" target="_blank">EduSoho v6.17.2</a> ©2014-2016 <a class="mlm" href="http://www.howzhi.com/" target="_blank">好知网</a> </div>
</div>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?4d17172b485f74c1bd66be85d5fe26cc";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script> 
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-23840922-1', 'auto');
  ga('send', 'pageview');

</script> 

<!-- Piwik --> 
<script type="text/javascript">
  var _paq = _paq || [];
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//piwik.edusoho.cn/";
    _paq.push(['setTrackerUrl', u+'piwik.php']);
    _paq.push(['setSiteId', 3]);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<noscript>
<p><img src="//piwik.edusoho.cn/piwik.php?idsite=3" style="border:0;" alt="" /></p>
</noscript>
<!-- End Piwik Code -->

<section class="serch-enginne-course visible-lg" 　role="alert"> </section>
<div id="login-modal" class="modal " data-url="/login/ajax"></div>
<div id="modal" class="modal" tabindex="-1"></div>
<div id="upload-image-modal" class="modal" tabindex="-1" aria-hidden="true" style="display: none;"></div>
<ul class="fixed-bar">
  <li class="hz-app"> <a class="active btn btn-primary" target="_blank" href="http://www.edusoho.com/download/mobile?client=android&amp;code=howzhi"> APP </a> </li>
  <li class="hz-weixin"> <a class="fixed-bar-icon" href="javascript:;"> <i class="hz-icon icon-erweima "></i> </a>
    <div class="weixin">
      <p class="text-center mvs t-primary hidden-xs hidden-sm">扫一扫 关注好知微信</p>
      <img src="/wenxin-qrcode.jpg" class="img-responsive" alt="好知网微信"> </div>
  </li>
  <li class="hz-feedback"> <a class="fixed-bar-icon" href="http://www.howzhi.com/feedback/user/list"> <i class="hz-icon icon-question "></i> </a> <a href="http://www.howzhi.com/feedback/user/list?feedurl=http://www.howzhi.com/login?goto=%2F" target="_blank" class="js-feedback fixed-bar-text"> 问题反馈 </a> </li>
  <li style="display: none;" class="go-top"> <a class="fixed-bar-icon" href="javascript:;"> <i class="hz-icon icon-keyboardarrowup"></i> </a> <a class="fixed-bar-text" href="javascript:;"> 回到顶部 </a> </li>
</ul>
<script>
  var app = {};
  app.debug = false;
  app.version = '2.6.17.2.3';
  app.httpHost = 'http://www.howzhi.com';
  app.basePath = '';
  app.theme = 'howzhi';
  app.themeGlobalScript = 'theme/global-script';
  app.jsPaths = {"common":"common","theme":"\/themes\/howzhi\/js","howzhipopadbundle":"\/bundles\/howzhipopad\/js","discountbundle":"\/bundles\/discount\/js","groupsellbundle":"\/bundles\/groupsell\/js","teachingcourseorderbundle":"\/bundles\/teachingcourseorder\/js","homeworkbundle":"\/bundles\/homework\/js","couponbundle":"\/bundles\/coupon\/js","customwebbundle":"\/bundles\/customweb\/js","customadminbundle":"\/bundles\/customadmin\/js","topxiawebbundle":"\/bundles\/topxiaweb\/js","topxiaadminbundle":"\/bundles\/topxiaadmin\/js","classroombundle":"\/bundles\/classroom\/js","photographybundle":"\/bundles\/photography\/js","materiallibbundle":"\/bundles\/materiallib\/js","sensitivewordbundle":"\/bundles\/sensitiveword\/js"};

  // app.crontab = '/common/crontab';
  //   //   //     // 
  var CKEDITOR_BASEPATH = app.basePath + '/assets/libs/ckeditor/4.6.7/';
  var CLOUD_FILE_SERVER = ""; 

  app.config = {"api":{"weibo":{"key":"248709919"},"qq":{"key":"100243046"},"douban":{"key":"0e94039c090f27d72bbc0ad41b2d7785"},"renren":{"key":"c92b1b7335104ed9bf04a213356a86f3"}},"cloud":{"video_player":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/GrindPlayer.swf","video_player_watermark_plugin":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Watermake-1.0.3.swf","video_player_fingerprint_plugin":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Fingerprint-1.0.1.swf"},"loading_img_path":"\/assets\/img\/default\/loading.gif?2.6.17.2.3"};

  app.arguments = {};
      app.controller = 'customwebbundle/controller/auth/login';
      
  app.scripts = ["customwebbundle\/controller\/default\/header"];
  
  app.uploadUrl = '/file/upload';
  app.imgCropUrl = '/file/img/crop';
  app.lessonCopyEnabled = '0';

  app.mainScript = '/bundles/topxiaweb/js/app.js?2.6.17.2.3';
</script> 
<script src="../js/bootstrap.js"></script> 
<script src="../js/analytics.js" async></script> 
<script src="../js/hm.js"></script> 
<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/npm.js"></script>
<script src="../js/piwik.js" defer async type="text/javascript"></script>
<script src="../js/sea.js"></script>
<script src="../js/seajs-global-config.js"></script>
<script src="../js/seajs-style.js"></script>
<script>
  seajs.use(app.mainScript);
</script>
<div style="left: 0px ! important; top: 80px ! important; width: 1349px ! important; height: 770px ! important; border-radius: 0px ! important; box-shadow: 0px 0px 2px 2px highlight ! important;" class="firebugResetStyles firebugBlockBackgroundColor">
  <div style="width: 100% ! important; height: 100% ! important; background-color: transparent ! important; opacity: 0.6 ! important;" class="firebugResetStyles"></div>
</div>
</body>
</html>