<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!-- 登录后的头部----------- -->
<header class="header">
  <div class="container" >
    <div class="navbar-header pull-left"> <a href="page/index.jsp" class="navbar-brand"> <img src="images/logo.png" class="img-responsive" alt="好知，howzhi.com"> </a>
      <button class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    <nav class="collapse navbar-collapse pull-left">
      <ul class="nav navbar-nav topmenu">
        <li class="visible-xs"> <a href="page/index.jsp"><i class="fa fa-search mrm"></i>搜索</a> </li>
        <li class=""> <a href="page/learnCenter.jsp">学习中心 </a> </li>
        <li class="nav-hover" > <a href="page/course.jsp">课程 <b class="caret"></b></a>
          <ul class="dropdown-menu"  role="menu" id="dropdown-menu">
            <li class="change" ><a href="page/course.jsp">摄影课堂</a></li>
            <li><a href="page/course.jsp">创意设计</a></li>
            <li><a href="page/course.jsp">声乐器乐</a></li>
            <li><a href="page/course.jsp">运动健身</a></li>
            <li><a href="page/course.jsp">IT互联网</a></li>
            <li><a href="page/course.jsp">兴趣爱好</a></li>
            <li><a href="page/course.jsp">语言学习</a></li>
            <li><a href="page/course.jsp">职场技能</a></li>
            <li><a href="page/course.jsp">公开课</a></li>
          </ul>
        </li>
        <li class=""> <a href="javaScript:void(0);">班级 </a> </li>
        <li class=""> <a href="page/groups.jsp">小组 </a> </li>
      </ul>
      <div class="new-tips hz-triangle hidden-xs"> “我的好知” 正式更名为 “<span class="t-primary">学习中心</span>”
        <div class="colse" id="hz-head-update" data-dismiss="alert">×</div>
        <i class="left"></i> <i class="right"></i> </div>
    </nav>
    <div class="pull-right user-nav clearfix">
      <ul class="nav pull-right">

        <li class="hidden-xs hidden-sm"> <a class="btn btn-primary radius" href="javaScript:void(0);"><i style="color: rgb(255, 247, 255);" class="glyphicon glyphicon-plus"></i> 创建课程</a> </li>
        <li class="dropdown user-nav-dropdown user-img"> <a href="#" class="dropdown-toggle"> <img src="images/avatar.png" class="user-avatar" alt="${users.uname }" id="${users.userid}"> </a>

          <ul class="dropdown-menu" role="menu" id="dropdown-menu">
            <li> <a href="page/learnCenter.jsp" ><i style="color:#666;" class="glyphicon glyphicon-home" ></i>学习中心</a> </li>
            <li><a href="page/person.jsp"><i style="color:#666;" class="glyphicon glyphicon-user" ></i>个人主页</a></li>
            <li><a href="page/info.jsp"><i style="color:#666;" class="glyphicon glyphicon-cog" ></i>个人设置</a></li>
            <li><a href="javaScript:void(0);"><i style="color:#666;" class="glyphicon glyphicon-credit-card" ></i>账户中心</a></li>
            <li><a href="userinfo/loginOut"><i style="color:#666;" class="glyphicon glyphicon-log-out" ></i>退出登录</a></li>
          </ul>
        </li>
        <li class="user-msg user-nav-dropdown hidden-xs "> <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> <i style="font-size:16px;" class="glyphicon glyphicon-bell"></i> </a>
          <ul class="dropdown-menu text-center" role="menu" id="dropdown-menu">
            <li><a href="javaScript:void(0);"><i style="color:#666;" class="glyphicon glyphicon-bullhorn"></i>通知</a></li>
            <li><a href="javaScript:void(0);"><i style="color:#666;" class=" glyphicon glyphicon-envelope"></i>私信</a></li>
            <li><a href="javaScript:void(0);"><i style="color:#666;" class="glyphicon glyphicon-comment"></i>回复</a></li>
            <li><a href="javaScript:void(0);"><i style="color:#666;" class="glyphicon glyphicon-question-sign"></i>问答</a></li>
          </ul>
        </li>
        <li class="hidden-xs hzapp hidden-sm"> <a href="javaScript:void(0);"> <small class="badge"> </small> <i style="font-size:16px;" class="glyphicon glyphicon-phone"></i> 好知APP </a> </li>
      </ul>
      <form class="navbar-form pull-right hz-search hidden-xs" role="search" action="/search">
        <div class="form-group">
          <div id="search-left" class="pull-left search-left">
            <div class="search-type pull-left">
              <div class="choose" style="color:#666;font-size:14px;margin-top:3px;">课程<i style="color:#999;font-size:11px;margin-left:5px" class="glyphicon glyphicon-chevron-down"></i></div>
              <ul class="text-center" id="textcenter" style="color:#999;">
                <li data-type="course">课程</li>
                <li data-type="discussion">话题</li>
                <li data-type="user">用户</li>
                <li data-type="group">小组</li>
              </ul>
            </div>
            <input class="form-control js-search" name="q" placeholder="输入要查找的内容" autocomplete="off">
          </div>
          <input name="t" value="course" type="hidden">
          <button style="color: #15C288; font-size:20px;margin-top:7px; border:none;background:#fff;width:50px;" class="glyphicon glyphicon-search" type="submit"></button>
        </div>
      </form>
    </div>
  </div>
</header>
